; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_run_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@msg_op_start = common dso_local global i32 0, align 4
@g_msg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CTRL_MSG_SIZE = common dso_local global i32 0, align 4
@echo = common dso_local global i64 0, align 8
@msg_op_echo = common dso_local global i32 0, align 4
@msg_op_data = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@transfer_count = common dso_local global i32 0, align 4
@transfer_size = common dso_local global i32 0, align 4
@msg_op_end = common dso_local global i32 0, align 4
@end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @msg_op_start, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_msg, i32 0, i32 0), align 4
  %4 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %5 = call i32 @client_send_recv(%struct.TYPE_4__* @g_msg, i32 %4, i32 1000)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %54

10:                                               ; preds = %0
  %11 = load i64, i64* @echo, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @msg_op_echo, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @msg_op_data, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_msg, i32 0, i32 0), align 4
  %19 = call i32 @gettimeofday(i32* @start, i32* null)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %40, %17
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @transfer_count, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i64, i64* @echo, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @transfer_size, align 4
  %29 = call i32 @client_send_recv(%struct.TYPE_4__* @g_msg, i32 %28, i32 1)
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @transfer_size, align 4
  %32 = call i32 @client_send(%struct.TYPE_4__* @g_msg, i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @transfer_size, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %54

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load i32, i32* @msg_op_end, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_msg, i32 0, i32 0), align 4
  %45 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %46 = call i32 @client_send_recv(%struct.TYPE_4__* @g_msg, i32 %45, i32 1)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = call i32 @gettimeofday(i32* @end, i32* null)
  %53 = call i32 (...) @show_perf()
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %51, %50, %38, %9
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @client_send_recv(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @client_send(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @show_perf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
