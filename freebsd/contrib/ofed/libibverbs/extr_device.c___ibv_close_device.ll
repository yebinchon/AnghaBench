; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_close_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32, i32, i32 }
%struct.verbs_context = type { %struct.verbs_context* }
%struct.verbs_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ibv_context*)*, i32 (%struct.verbs_device*, %struct.ibv_context*)* }

@abi_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_close_device(%struct.ibv_context* %0) #0 {
  %2 = alloca %struct.ibv_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.verbs_context*, align 8
  %7 = alloca %struct.verbs_device*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %2, align 8
  %8 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %9 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %12 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %14 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %15 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.verbs_device* @verbs_get_device(i32 %16)
  store %struct.verbs_device* %17, %struct.verbs_device** %7, align 8
  %18 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %19 = call %struct.verbs_context* @verbs_get_ctx(%struct.ibv_context* %18)
  store %struct.verbs_context* %19, %struct.verbs_context** %6, align 8
  %20 = load %struct.verbs_context*, %struct.verbs_context** %6, align 8
  %21 = icmp ne %struct.verbs_context* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.verbs_device*, %struct.verbs_device** %7, align 8
  %24 = getelementptr inbounds %struct.verbs_device, %struct.verbs_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.verbs_device*, %struct.ibv_context*)*, i32 (%struct.verbs_device*, %struct.ibv_context*)** %26, align 8
  %28 = load %struct.verbs_device*, %struct.verbs_device** %7, align 8
  %29 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %30 = call i32 %27(%struct.verbs_device* %28, %struct.ibv_context* %29)
  %31 = load %struct.verbs_context*, %struct.verbs_context** %6, align 8
  %32 = getelementptr inbounds %struct.verbs_context, %struct.verbs_context* %31, i32 0, i32 0
  %33 = load %struct.verbs_context*, %struct.verbs_context** %32, align 8
  %34 = call i32 @free(%struct.verbs_context* %33)
  %35 = load %struct.verbs_context*, %struct.verbs_context** %6, align 8
  %36 = call i32 @free(%struct.verbs_context* %35)
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.verbs_device*, %struct.verbs_device** %7, align 8
  %39 = getelementptr inbounds %struct.verbs_device, %struct.verbs_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ibv_context*)*, i32 (%struct.ibv_context*)** %41, align 8
  %43 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %44 = call i32 %42(%struct.ibv_context* %43)
  br label %45

45:                                               ; preds = %37, %22
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* @abi_ver, align 4
  %51 = icmp sle i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %45
  ret i32 0
}

declare dso_local %struct.verbs_device* @verbs_get_device(i32) #1

declare dso_local %struct.verbs_context* @verbs_get_ctx(%struct.ibv_context*) #1

declare dso_local i32 @free(%struct.verbs_context*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
