; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_execute_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_execute_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@io = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Waiting for target..\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@ds = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Target reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Ignoring %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rdp_execute_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_execute_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load i32, i32* @io, align 4
  %8 = call i32 @serial_readchar(i32 %7, i32 1)
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %13, %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @QUIT, align 4
  %15 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @io, align 4
  %17 = call i32 @serial_readchar(i32 %16, i32 1)
  store i32 %17, i32* %2, align 4
  br label %9

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 128, label %22
    i32 130, label %24
  ]

20:                                               ; preds = %18
  %21 = call i32 (...) @handle_swi()
  br label %29

22:                                               ; preds = %18
  %23 = call i32 @send_rdp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %29

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %24, %22, %20
  br label %3

30:                                               ; preds = %3
  ret void
}

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @handle_swi(...) #1

declare dso_local i32 @send_rdp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
