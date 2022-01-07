; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep_boot.c_linux_parse_boot_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep_boot.c_linux_parse_boot_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm64_bootparams = type { i64 }
%struct.fdt_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_parse_boot_param(%struct.arm64_bootparams* %0) #0 {
  %2 = alloca %struct.arm64_bootparams*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdt_header*, align 8
  store %struct.arm64_bootparams* %0, %struct.arm64_bootparams** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.fdt_header* null, %struct.fdt_header** %4, align 8
  %5 = load %struct.fdt_header*, %struct.fdt_header** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.arm64_bootparams*, %struct.arm64_bootparams** %2, align 8
  %8 = call i32 @fake_preload_metadata(%struct.fdt_header* %5, i32 %6, %struct.arm64_bootparams* %7)
  ret i32 %8
}

declare dso_local i32 @fake_preload_metadata(%struct.fdt_header*, i32, %struct.arm64_bootparams*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
