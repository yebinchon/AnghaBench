; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_get_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io = common dso_local global i32 0, align 4
@timeout = common dso_local global i64 0, align 8
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[%02x]\0A\00", align 1
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Timeout reading from remote_system\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_byte() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = load i32, i32* @io, align 4
  %4 = load i64, i64* @timeout, align 8
  %5 = call i32 @serial_readchar(i32 %3, i64 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i64, i64* @remote_debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @gdb_stdlog, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @fprintf_unfiltered(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i64, i64* @timeout, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %1, align 1
  br label %27

22:                                               ; preds = %16
  %23 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %12
  %25 = load i32, i32* %2, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %1, align 1
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8, i8* %1, align 1
  ret i8 %28
}

declare dso_local i32 @serial_readchar(i32, i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
