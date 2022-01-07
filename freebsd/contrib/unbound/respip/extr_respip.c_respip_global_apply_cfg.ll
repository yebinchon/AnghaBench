; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_global_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_global_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respip_set = type { i32 }
%struct.config_file = type { i32*, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @respip_global_apply_cfg(%struct.respip_set* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.respip_set*, align 8
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i32, align 4
  store %struct.respip_set* %0, %struct.respip_set** %3, align 8
  store %struct.config_file* %1, %struct.config_file** %4, align 8
  %6 = load %struct.respip_set*, %struct.respip_set** %3, align 8
  %7 = load %struct.config_file*, %struct.config_file** %4, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.config_file*, %struct.config_file** %4, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.config_file*, %struct.config_file** %4, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.config_file*, %struct.config_file** %4, align 8
  %17 = getelementptr inbounds %struct.config_file, %struct.config_file* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.config_file*, %struct.config_file** %4, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @respip_set_apply_cfg(%struct.respip_set* %6, i32 %9, i32 %12, i32* %15, i32* %18, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.config_file*, %struct.config_file** %4, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.config_file*, %struct.config_file** %4, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.config_file*, %struct.config_file** %4, align 8
  %28 = getelementptr inbounds %struct.config_file, %struct.config_file* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @respip_set_apply_cfg(%struct.respip_set*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
