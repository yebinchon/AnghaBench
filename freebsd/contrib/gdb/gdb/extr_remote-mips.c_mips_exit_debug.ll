; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_exit_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_exit_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@mips_exit_cleanups = common dso_local global i32 0, align 4
@mips_exiting = common dso_local global i32 0, align 4
@mips_monitor = common dso_local global i64 0, align 8
@MON_IDT = common dso_local global i64 0, align 8
@mips_receive_wait = common dso_local global i32 0, align 4
@mips_need_reply = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" break!\00", align 1
@mips_monitor_prompt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mips_exit_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_exit_debug() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.cleanup*, align 8
  %4 = load i32, i32* @mips_exit_cleanups, align 4
  %5 = call %struct.cleanup* @make_cleanup(i32 %4, i32* null)
  store %struct.cleanup* %5, %struct.cleanup** %3, align 8
  store i32 1, i32* @mips_exiting, align 4
  %6 = load i64, i64* @mips_monitor, align 8
  %7 = load i64, i64* @MON_IDT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @mips_receive_wait, align 4
  %11 = call i32 @mips_request(i8 signext 120, i32 0, i32 0, i32* null, i32 %10, i32* null)
  store i64 0, i64* @mips_need_reply, align 8
  %12 = call i32 @mips_expect(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %27

15:                                               ; preds = %9
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @mips_receive_wait, align 4
  %18 = call i32 @mips_request(i8 signext 120, i32 0, i32 0, i32* %2, i32 %17, i32* null)
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i8*, i8** @mips_monitor_prompt, align 8
  %21 = call i32 @mips_expect(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %1, align 4
  br label %27

24:                                               ; preds = %19
  %25 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %26 = call i32 @do_cleanups(%struct.cleanup* %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %23, %14
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @mips_request(i8 signext, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mips_expect(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
