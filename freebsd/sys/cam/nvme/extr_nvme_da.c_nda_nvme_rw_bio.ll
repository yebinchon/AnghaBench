; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_nda_nvme_rw_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_nda_nvme_rw_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nda_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ccb_nvmeio = type { i32 }
%struct.bio = type { i32, i64, i32, i8* }

@NVME_OPC_READ = common dso_local global i64 0, align 8
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@CAM_DATA_BIO = common dso_local global i32 0, align 4
@ndadone = common dso_local global i32 0, align 4
@nda_default_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nda_softc*, %struct.ccb_nvmeio*, %struct.bio*, i64)* @nda_nvme_rw_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nda_nvme_rw_bio(%struct.nda_softc* %0, %struct.ccb_nvmeio* %1, %struct.bio* %2, i64 %3) #0 {
  %5 = alloca %struct.nda_softc*, align 8
  %6 = alloca %struct.ccb_nvmeio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nda_softc* %0, %struct.nda_softc** %5, align 8
  store %struct.ccb_nvmeio* %1, %struct.ccb_nvmeio** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @NVME_OPC_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @CAM_DIR_IN, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BIO_UNMAPPED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @CAM_DATA_BIO, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  %33 = bitcast %struct.bio* %32 to i8*
  store i8* %33, i8** %10, align 8
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.bio*, %struct.bio** %7, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %46 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sdiv i64 %44, %49
  store i64 %50, i64* %12, align 8
  %51 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %6, align 8
  %52 = load i32, i32* @ndadone, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @nda_default_timeout, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = call i32 @cam_fill_nvmeio(%struct.ccb_nvmeio* %51, i32 0, i32 %52, i32 %53, i8* %54, i64 %57, i32 %59)
  %61 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %6, align 8
  %62 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %65 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @nvme_ns_rw_cmd(i32* %62, i64 %63, i32 %66, i32 %67, i64 %68)
  ret void
}

declare dso_local i32 @cam_fill_nvmeio(%struct.ccb_nvmeio*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @nvme_ns_rw_cmd(i32*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
