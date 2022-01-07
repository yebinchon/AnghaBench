; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_local_cfg_space_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_local_cfg_space_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_pf = type { i32, %struct.al_pcie_port* }
%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@AL_TRUE = common dso_local global i64 0, align 8
@AL_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_pcie_local_cfg_space_write(%struct.al_pcie_pf* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.al_pcie_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.al_pcie_port*, align 8
  %12 = alloca %struct.al_pcie_regs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.al_pcie_pf* %0, %struct.al_pcie_pf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %6, align 8
  %16 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %15, i32 0, i32 1
  %17 = load %struct.al_pcie_port*, %struct.al_pcie_port** %16, align 8
  store %struct.al_pcie_port* %17, %struct.al_pcie_port** %11, align 8
  %18 = load %struct.al_pcie_port*, %struct.al_pcie_port** %11, align 8
  %19 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %18, i32 0, i32 0
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %19, align 8
  store %struct.al_pcie_regs* %20, %struct.al_pcie_regs** %12, align 8
  %21 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %6, align 8
  %22 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %12, align 8
  %25 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %14, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load %struct.al_pcie_port*, %struct.al_pcie_port** %11, align 8
  %39 = load i64, i64* @AL_TRUE, align 8
  %40 = call i32 @al_pcie_port_wr_to_ro_set(%struct.al_pcie_port* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %5
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @AL_FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @al_reg_write32(i32* %46, i32 %47)
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.al_pcie_port*, %struct.al_pcie_port** %11, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @al_reg_write32_dbi_cs2(%struct.al_pcie_port* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.al_pcie_port*, %struct.al_pcie_port** %11, align 8
  %59 = load i64, i64* @AL_FALSE, align 8
  %60 = call i32 @al_pcie_port_wr_to_ro_set(%struct.al_pcie_port* %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @al_pcie_port_wr_to_ro_set(%struct.al_pcie_port*, i64) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_write32_dbi_cs2(%struct.al_pcie_port*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
