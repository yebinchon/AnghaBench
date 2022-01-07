; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_setup_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_setup_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CVMX_L2C_TADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cvmx_tra_setup_per_tra: Invalid tra(%d), max allowed (%d)\0A\00", align 1
@CVMX_TRA_SOURCE_MASK = common dso_local global i32 0, align 4
@CVMX_TRA_DESTINATION_MASK = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_TRA_FILT_IOBDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"The address-based filtering does not work with IOBDMAs, disabling the filter command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tra_setup_v2(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = bitcast %struct.TYPE_11__* %8 to i64*
  store i64 %1, i64* %18, align 4
  store i32 %0, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @CVMX_L2C_TADS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CVMX_L2C_TADS, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %7
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @__cvmx_tra_set_filter_cmd_mask(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @CVMX_TRA_SOURCE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @CVMX_TRA_DESTINATION_MASK, align 4
  %38 = and i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @OCTEON_CN6XXX, align 4
  %41 = call i64 @OCTEON_IS_MODEL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43, %28
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %54, %47, %43
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CVMX_TRAX_CTL(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cvmx_write_csr(i32 %68, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @CVMX_TRAX_FILT_CMD(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cvmx_write_csr(i32 %73, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @CVMX_TRAX_FILT_SID(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cvmx_write_csr(i32 %78, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @CVMX_TRAX_FILT_DID(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cvmx_write_csr(i32 %83, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @CVMX_TRAX_FILT_ADR_ADR(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @cvmx_write_csr(i32 %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @CVMX_TRAX_FILT_ADR_MSK(i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @cvmx_write_csr(i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @__cvmx_tra_set_filter_cmd_mask(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_TRAX_CTL(i32) #1

declare dso_local i32 @CVMX_TRAX_FILT_CMD(i32) #1

declare dso_local i32 @CVMX_TRAX_FILT_SID(i32) #1

declare dso_local i32 @CVMX_TRAX_FILT_DID(i32) #1

declare dso_local i32 @CVMX_TRAX_FILT_ADR_ADR(i32) #1

declare dso_local i32 @CVMX_TRAX_FILT_ADR_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
