; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ipd.h_cvmx_ipd_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ipd.h_cvmx_ipd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8*, i32 }

@CVMX_IPD_1ST_MBUFF_SKIP = common dso_local global i32 0, align 4
@CVMX_IPD_NOT_1ST_MBUFF_SKIP = common dso_local global i32 0, align 4
@CVMX_IPD_PACKET_MBUFF_SIZE = common dso_local global i32 0, align 4
@CVMX_IPD_1st_NEXT_PTR_BACK = common dso_local global i32 0, align 4
@CVMX_IPD_2nd_NEXT_PTR_BACK = common dso_local global i32 0, align 4
@CVMX_IPD_WQE_FPA_QUEUE = common dso_local global i32 0, align 4
@CVMX_IPD_CTL_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*)* @cvmx_ipd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_ipd_config(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca %struct.TYPE_18__, align 8
  %21 = alloca %struct.TYPE_28__, align 8
  %22 = alloca %struct.TYPE_27__, align 8
  %23 = alloca %struct.TYPE_17__, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @CVMX_IPD_1ST_MBUFF_SKIP, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @cvmx_write_csr(i32 %28, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @CVMX_IPD_NOT_1ST_MBUFF_SKIP, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @cvmx_write_csr(i32 %36, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @CVMX_IPD_PACKET_MBUFF_SIZE, align 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @cvmx_write_csr(i32 %44, i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @CVMX_IPD_1st_NEXT_PTR_BACK, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @cvmx_write_csr(i32 %52, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @CVMX_IPD_2nd_NEXT_PTR_BACK, align 4
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @cvmx_write_csr(i32 %60, i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @CVMX_IPD_WQE_FPA_QUEUE, align 4
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @cvmx_write_csr(i32 %68, i64 %70)
  %72 = load i32, i32* @CVMX_IPD_CTL_STATUS, align 4
  %73 = call i64 @cvmx_read_csr(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* %15, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @CVMX_IPD_CTL_STATUS, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @cvmx_write_csr(i32 %81, i64 %83)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
