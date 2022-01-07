; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_use_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_use_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@VCHIQ_ERROR = common dso_local global i32 0, align 4
@USE_TYPE_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_use_service(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_5__* @find_service_by_handle(i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* @USE_TYPE_SERVICE, align 4
  %16 = call i32 @vchiq_use_internal(i32 %13, %struct.TYPE_5__* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call i32 @unlock_service(%struct.TYPE_5__* %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.TYPE_5__* @find_service_by_handle(i32) #1

declare dso_local i32 @vchiq_use_internal(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @unlock_service(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
