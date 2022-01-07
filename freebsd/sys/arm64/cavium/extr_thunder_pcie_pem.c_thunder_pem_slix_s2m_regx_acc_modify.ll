; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_slix_s2m_regx_acc_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_slix_s2m_regx_acc_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i32, i32 }

@SLI_ACC_REG_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid SLI index\00", align 1
@sli0_s2m_regx_base = common dso_local global i64 0, align 8
@sli1_s2m_regx_base = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SLI group is not correct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thunder_pem_softc*, i32, i32)* @thunder_pem_slix_s2m_regx_acc_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_pem_slix_s2m_regx_acc_modify(%struct.thunder_pem_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thunder_pem_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.thunder_pem_softc* %0, %struct.thunder_pem_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SLI_ACC_REG_CNT, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @sli0_s2m_regx_base, align 8
  store i64 %22, i64* %8, align 8
  br label %34

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* @sli1_s2m_regx_base, align 8
  store i64 %27, i64* %8, align 8
  br label %33

28:                                               ; preds = %23
  %29 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %4, align 8
  %30 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %4, align 8
  %39 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @PEM_CFG_SLIX_TO_REG(i32 %42)
  %44 = call i32 @bus_space_read_8(i32 %40, i64 %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -4294967296
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %4, align 8
  %50 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @PEM_CFG_SLIX_TO_REG(i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bus_space_write_8(i32 %51, i64 %52, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_space_read_8(i32, i64, i32) #1

declare dso_local i32 @PEM_CFG_SLIX_TO_REG(i32) #1

declare dso_local i32 @bus_space_write_8(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
