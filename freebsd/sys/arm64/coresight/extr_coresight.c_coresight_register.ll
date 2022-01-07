; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight.c_coresight_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight.c_coresight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_desc = type { i32, i32, i32 }
%struct.coresight_device = type { i32, i32, i32, i32 }

@M_CORESIGHT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@cs_mtx = common dso_local global i32 0, align 4
@cs_devs = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coresight_register(%struct.coresight_desc* %0) #0 {
  %2 = alloca %struct.coresight_desc*, align 8
  %3 = alloca %struct.coresight_device*, align 8
  store %struct.coresight_desc* %0, %struct.coresight_desc** %2, align 8
  %4 = load i32, i32* @M_CORESIGHT, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.coresight_device* @malloc(i32 16, i32 %4, i32 %7)
  store %struct.coresight_device* %8, %struct.coresight_device** %3, align 8
  %9 = load %struct.coresight_desc*, %struct.coresight_desc** %2, align 8
  %10 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %13 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.coresight_desc*, %struct.coresight_desc** %2, align 8
  %15 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  %18 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %19 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.coresight_desc*, %struct.coresight_desc** %2, align 8
  %21 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %24 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.coresight_desc*, %struct.coresight_desc** %2, align 8
  %26 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %29 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i32 @mtx_lock(i32* @cs_mtx)
  %31 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %32 = load i32, i32* @link, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* @cs_devs, %struct.coresight_device* %31, i32 %32)
  %34 = call i32 @mtx_unlock(i32* @cs_mtx)
  ret i32 0
}

declare dso_local %struct.coresight_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.coresight_device*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
