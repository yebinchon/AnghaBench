; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_op_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_op_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, void (...)*, i32 (%struct.hv_kvp_msg.0*, i8*)* }
%struct.hv_kvp_msg.0 = type opaque
%struct.hv_kvp_msg = type opaque

@HV_KVP_OP_COUNT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Operation key out of supported range\0A\00", align 1
@kvp_op_hdlrs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, void ()*, i32 (%struct.hv_kvp_msg*, i8*)*)* @kvp_op_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_op_load(i32 %0, void ()* %1, i32 (%struct.hv_kvp_msg*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void ()*, align 8
  %6 = alloca i32 (%struct.hv_kvp_msg*, i8*)*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store void ()* %1, void ()** %5, align 8
  store i32 (%struct.hv_kvp_msg*, i8*)* %2, i32 (%struct.hv_kvp_msg*, i8*)** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HV_KVP_OP_COUNT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @KVP_LOG(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %53

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 8
  %24 = load void ()*, void ()** %5, align 8
  %25 = bitcast void ()* %24 to void (...)*
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store void (...)* %25, void (...)** %30, align 8
  %31 = load i32 (%struct.hv_kvp_msg*, i8*)*, i32 (%struct.hv_kvp_msg*, i8*)** %6, align 8
  %32 = bitcast i32 (%struct.hv_kvp_msg*, i8*)* %31 to i32 (%struct.hv_kvp_msg.0*, i8*)*
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 (%struct.hv_kvp_msg.0*, i8*)* %32, i32 (%struct.hv_kvp_msg.0*, i8*)** %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load void (...)*, void (...)** %42, align 8
  %44 = icmp ne void (...)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %17
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load void (...)*, void (...)** %50, align 8
  call void (...) %51()
  br label %52

52:                                               ; preds = %45, %17
  br label %53

53:                                               ; preds = %52, %14
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @KVP_LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
