; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_identsoc.c_aml8726_identify_soc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_identsoc.c_aml8726_identify_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@AML_SOC_CBUS_BASE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not allocate resource for SoC identification\0A\00", align 1
@AML_SOC_HW_REV_REG = common dso_local global i32 0, align 4
@aml8726_soc_hw_rev = common dso_local global i8* null, align 8
@AML_SOC_METAL_REV_REG = common dso_local global i32 0, align 4
@aml8726_soc_metal_rev = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aml8726_identify_soc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.resource, align 4
  %3 = call i32 @memset(%struct.resource* %2, i32 0, i32 8)
  %4 = load i32, i32* @fdtbus_bs_tag, align 4
  %5 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AML_SOC_CBUS_BASE_ADDR, align 4
  %9 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0
  %10 = call i32 @bus_space_map(i32 %7, i32 %8, i32 1048576, i32 0, i32* %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @AML_SOC_HW_REV_REG, align 4
  %17 = call i8* @bus_read_4(%struct.resource* %2, i32 %16)
  store i8* %17, i8** @aml8726_soc_hw_rev, align 8
  %18 = load i32, i32* @AML_SOC_METAL_REV_REG, align 4
  %19 = call i8* @bus_read_4(%struct.resource* %2, i32 %18)
  store i8* %19, i8** @aml8726_soc_metal_rev, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bus_space_unmap(i32 %21, i32 %23, i32 1048576)
  ret void
}

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
