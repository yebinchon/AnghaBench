; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_boot.c_default_parse_boot_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_boot.c_default_parse_boot_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_boot_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_parse_boot_param(%struct.arm_boot_params* %0) #0 {
  %2 = alloca %struct.arm_boot_params*, align 8
  %3 = alloca i32, align 4
  store %struct.arm_boot_params* %0, %struct.arm_boot_params** %2, align 8
  %4 = load %struct.arm_boot_params*, %struct.arm_boot_params** %2, align 8
  %5 = call i32 @fake_preload_metadata(%struct.arm_boot_params* %4, i32* null, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  ret i32 %6
}

declare dso_local i32 @fake_preload_metadata(%struct.arm_boot_params*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
