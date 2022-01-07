; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_pf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_pf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_pf = type { i32, %struct.al_pcie_port* }
%struct.al_pcie_port = type { i32 }
%struct.al_pcie_pf_config_params = type { i32, %struct.al_pcie_port* }

@.str = private unnamed_addr constant [50 x i8] c"PCIe %d: port not enabled, cannot configure port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PCIe %d: pf %d config\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PCIe %d: pf %d config %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_pf_config(%struct.al_pcie_pf* %0, %struct.al_pcie_pf_config_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_pf*, align 8
  %5 = alloca %struct.al_pcie_pf_config_params*, align 8
  %6 = alloca %struct.al_pcie_port*, align 8
  %7 = alloca i32, align 4
  store %struct.al_pcie_pf* %0, %struct.al_pcie_pf** %4, align 8
  store %struct.al_pcie_pf_config_params* %1, %struct.al_pcie_pf_config_params** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %4, align 8
  %9 = bitcast %struct.al_pcie_pf* %8 to %struct.al_pcie_pf_config_params*
  %10 = call i32 @al_assert(%struct.al_pcie_pf_config_params* %9)
  %11 = load %struct.al_pcie_pf_config_params*, %struct.al_pcie_pf_config_params** %5, align 8
  %12 = call i32 @al_assert(%struct.al_pcie_pf_config_params* %11)
  %13 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %4, align 8
  %14 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %13, i32 0, i32 1
  %15 = load %struct.al_pcie_port*, %struct.al_pcie_port** %14, align 8
  store %struct.al_pcie_port* %15, %struct.al_pcie_port** %6, align 8
  %16 = load %struct.al_pcie_port*, %struct.al_pcie_port** %6, align 8
  %17 = call i32 @al_pcie_port_is_enabled(%struct.al_pcie_port* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.al_pcie_port*, %struct.al_pcie_port** %6, align 8
  %21 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @al_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.al_pcie_port*, %struct.al_pcie_port** %6, align 8
  %28 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %4, align 8
  %31 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.al_pcie_pf_config_params*, %struct.al_pcie_pf_config_params** %5, align 8
  %35 = icmp ne %struct.al_pcie_pf_config_params* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %4, align 8
  %38 = bitcast %struct.al_pcie_pf* %37 to %struct.al_pcie_pf_config_params*
  %39 = load %struct.al_pcie_pf_config_params*, %struct.al_pcie_pf_config_params** %5, align 8
  %40 = call i32 @al_pcie_port_pf_params_config(%struct.al_pcie_pf_config_params* %38, %struct.al_pcie_pf_config_params* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %46

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.al_pcie_port*, %struct.al_pcie_port** %6, align 8
  %48 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %4, align 8
  %51 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i8* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @al_assert(%struct.al_pcie_pf_config_params*) #1

declare dso_local i32 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, ...) #1

declare dso_local i32 @al_pcie_port_pf_params_config(%struct.al_pcie_pf_config_params*, %struct.al_pcie_pf_config_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
