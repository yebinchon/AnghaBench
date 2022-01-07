; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_trig_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_trig_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CVMX_TRA_SOURCE_MASK = common dso_local global i32 0, align 4
@CVMX_TRA_DESTINATION_MASK = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_TRA_FILT_IOBDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"The address-based filtering does not work with IOBDMAs, disabling the filter command.\0A\00", align 1
@CVMX_L2C_TADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tra_trig_setup(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @__cvmx_tra_set_filter_cmd_mask(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CVMX_TRA_SOURCE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CVMX_TRA_DESTINATION_MASK, align 4
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @OCTEON_CN6XXX, align 4
  %29 = call i64 @OCTEON_IS_MODEL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %33 = call i64 @OCTEON_IS_MODEL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31, %6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @CVMX_TRA_FILT_IOBDMA, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %42, %35, %31
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %101, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @CVMX_L2C_TADS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %53
  %58 = load i32, i32* %16, align 4
  %59 = call i64 @CVMX_TRAX_TRIG0_CMD(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %60, 64
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cvmx_write_csr(i64 %63, i32 %65)
  %67 = load i32, i32* %16, align 4
  %68 = call i64 @CVMX_TRAX_TRIG0_SID(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 64
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cvmx_write_csr(i64 %72, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @CVMX_TRAX_TRIG0_DID(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 64
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cvmx_write_csr(i64 %81, i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = call i64 @CVMX_TRAX_TRIG0_ADR_ADR(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %87, 64
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @cvmx_write_csr(i64 %90, i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = call i64 @CVMX_TRAX_TRIG0_ADR_MSK(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 64
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @cvmx_write_csr(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %57
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %53

104:                                              ; preds = %53
  ret void
}

declare dso_local i32 @__cvmx_tra_set_filter_cmd_mask(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i64 @CVMX_TRAX_TRIG0_CMD(i32) #1

declare dso_local i64 @CVMX_TRAX_TRIG0_SID(i32) #1

declare dso_local i64 @CVMX_TRAX_TRIG0_DID(i32) #1

declare dso_local i64 @CVMX_TRAX_TRIG0_ADR_ADR(i32) #1

declare dso_local i64 @CVMX_TRAX_TRIG0_ADR_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
