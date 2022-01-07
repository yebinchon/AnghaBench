; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CVMX_TRA_SOURCE_MASK = common dso_local global i32 0, align 4
@CVMX_TRA_DESTINATION_MASK = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_TRA_FILT_IOBDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"The address-based filtering does not work with IOBDMAs, disabling the filter command.\0A\00", align 1
@CVMX_L2C_TADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tra_setup(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca i32, align 4
  %17 = bitcast %struct.TYPE_11__* %7 to i64*
  store i64 %0, i64* %17, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @__cvmx_tra_set_filter_cmd_mask(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @CVMX_TRA_SOURCE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @CVMX_TRA_DESTINATION_MASK, align 4
  %27 = and i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @OCTEON_CN6XXX, align 4
  %30 = call i64 @OCTEON_IS_MODEL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %34 = call i64 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32, %6
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %49 = xor i32 %48, -1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %43, %36, %32
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %89, %53
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @CVMX_L2C_TADS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @CVMX_TRAX_CTL(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cvmx_write_csr(i32 %62, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @CVMX_TRAX_FILT_CMD(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cvmx_write_csr(i32 %67, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @CVMX_TRAX_FILT_SID(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cvmx_write_csr(i32 %72, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @CVMX_TRAX_FILT_DID(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cvmx_write_csr(i32 %77, i32 %79)
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @CVMX_TRAX_FILT_ADR_ADR(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @cvmx_write_csr(i32 %82, i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @CVMX_TRAX_FILT_ADR_MSK(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @cvmx_write_csr(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %56

92:                                               ; preds = %56
  ret void
}

declare dso_local i32 @__cvmx_tra_set_filter_cmd_mask(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

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
