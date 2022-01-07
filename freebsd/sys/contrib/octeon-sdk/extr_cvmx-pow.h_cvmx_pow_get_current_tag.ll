; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.h_cvmx_pow_get_current_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.h_cvmx_pow_get_current_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@OCTEON_FEATURE_CN68XX_WQE = common dso_local global i32 0, align 4
@CVMX_IO_SEG = common dso_local global i8* null, align 8
@CVMX_OCT_DID_TAG_TAG5 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } ()* @cvmx_pow_get_current_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @cvmx_pow_get_current_tag() #0 {
  %1 = alloca %struct.TYPE_15__, align 4
  %2 = alloca %struct.TYPE_17__, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = load i32, i32* @OCTEON_FEATURE_CN68XX_WQE, align 4
  %6 = call i64 @octeon_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** @CVMX_IO_SEG, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @CVMX_OCT_DID_TAG_TAG5, align 4
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = call i8* (...) @cvmx_get_core_num()
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store i32 3, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @cvmx_read_csr(i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  br label %78

43:                                               ; preds = %0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** @CVMX_IO_SEG, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @CVMX_OCT_DID_TAG_TAG1, align 4
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = call i8* (...) @cvmx_get_core_num()
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %2, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @cvmx_read_csr(i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %43, %8
  %79 = bitcast %struct.TYPE_15__* %1 to { i64, i64 }*
  %80 = load { i64, i64 }, { i64, i64 }* %79, align 4
  ret { i64, i64 } %80
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_get_core_num(...) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
