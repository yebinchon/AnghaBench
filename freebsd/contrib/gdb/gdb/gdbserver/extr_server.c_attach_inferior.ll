; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_attach_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_attach_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Attached; pid = %d\0A\00", align 1
@signal_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @attach_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_inferior(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @myattach(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %20

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* @signal_pid, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call zeroext i8 @mywait(i8* %17, i32 0)
  %19 = load i8*, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @myattach(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local zeroext i8 @mywait(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
