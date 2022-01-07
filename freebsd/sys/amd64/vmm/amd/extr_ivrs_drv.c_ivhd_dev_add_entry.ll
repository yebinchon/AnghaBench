; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_dev_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_dev_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, %struct.ivhd_dev_cfg* }
%struct.ivhd_dev_cfg = type { i32, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*, i8*, i8*, i64, i32)* @ivhd_dev_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivhd_dev_add_entry(%struct.amdvi_softc* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.amdvi_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ivhd_dev_cfg*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %37

15:                                               ; preds = %5
  %16 = load %struct.amdvi_softc*, %struct.amdvi_softc** %6, align 8
  %17 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %16, i32 0, i32 1
  %18 = load %struct.ivhd_dev_cfg*, %struct.ivhd_dev_cfg** %17, align 8
  %19 = load %struct.amdvi_softc*, %struct.amdvi_softc** %6, align 8
  %20 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.ivhd_dev_cfg, %struct.ivhd_dev_cfg* %18, i64 %23
  store %struct.ivhd_dev_cfg* %24, %struct.ivhd_dev_cfg** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.ivhd_dev_cfg*, %struct.ivhd_dev_cfg** %11, align 8
  %27 = getelementptr inbounds %struct.ivhd_dev_cfg, %struct.ivhd_dev_cfg* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.ivhd_dev_cfg*, %struct.ivhd_dev_cfg** %11, align 8
  %30 = getelementptr inbounds %struct.ivhd_dev_cfg, %struct.ivhd_dev_cfg* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ivhd_dev_cfg*, %struct.ivhd_dev_cfg** %11, align 8
  %33 = getelementptr inbounds %struct.ivhd_dev_cfg, %struct.ivhd_dev_cfg* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ivhd_dev_cfg*, %struct.ivhd_dev_cfg** %11, align 8
  %36 = getelementptr inbounds %struct.ivhd_dev_cfg, %struct.ivhd_dev_cfg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
