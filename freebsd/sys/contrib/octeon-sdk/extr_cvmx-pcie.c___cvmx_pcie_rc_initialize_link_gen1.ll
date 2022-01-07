; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_link_gen1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_link_gen1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__, i8* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@OCTEON_CN52XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX_PASS1_0 = common dso_local global i32 0, align 4
@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PCIe: Port %d link timeout\0A\00", align 1
@CVMX_PEXP_NPEI_INT_SUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_pcie_rc_initialize_link_gen1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pcie_rc_initialize_link_gen1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_21__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_PCIERCX_CFG452(i32 %11)
  %13 = call i8* @cvmx_pcie_cfgx_read(i32 %10, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 15, i32* %25, align 8
  br label %29

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32 7, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CVMX_PCIERCX_CFG452(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cvmx_pcie_cfgx_write(i32 %30, i32 %32, i8* %34)
  %36 = load i32, i32* @OCTEON_CN52XX_PASS1_X, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CVMX_PCIERCX_CFG455(i32 %41)
  %43 = call i8* @cvmx_pcie_cfgx_read(i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CVMX_PCIERCX_CFG455(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @cvmx_pcie_cfgx_write(i32 %47, i32 %49, i8* %51)
  br label %53

53:                                               ; preds = %39, %29
  %54 = load i32, i32* @OCTEON_CN52XX, align 4
  %55 = call i64 @OCTEON_IS_MODEL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = call %struct.TYPE_13__* (...) @cvmx_sysinfo_get()
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %64 [
  ]

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i8* %71)
  br label %73

73:                                               ; preds = %67, %57, %53
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %74)
  %76 = call i8* @cvmx_read_csr(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @cvmx_write_csr(i32 %81, i8* %83)
  %85 = load i32, i32* @OCTEON_CN52XX_PASS1_0, align 4
  %86 = call i64 @OCTEON_IS_MODEL(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = call i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 0)
  br label %90

90:                                               ; preds = %88, %73
  %91 = call i32 (...) @cvmx_get_cycle()
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %110, %90
  %93 = call i32 (...) @cvmx_get_cycle()
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %97 = call i32 @cvmx_clock_get_rate(i32 %96)
  %98 = mul nsw i32 100, %97
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %2, align 4
  br label %147

103:                                              ; preds = %92
  %104 = call i32 @cvmx_wait(i32 50000)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @CVMX_PCIERCX_CFG032(i32 %106)
  %108 = call i8* @cvmx_pcie_cfgx_read(i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %92, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @CVMX_PEXP_NPEI_INT_SUM, align 4
  %117 = load i32, i32* @CVMX_PEXP_NPEI_INT_SUM, align 4
  %118 = call i8* @cvmx_read_csr(i32 %117)
  %119 = call i32 @cvmx_write_csr(i32 %116, i8* %118)
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @CVMX_PCIERCX_CFG448(i32 %121)
  %123 = call i8* @cvmx_pcie_cfgx_read(i32 %120, i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %140 [
    i32 1, label %128
    i32 2, label %131
    i32 4, label %134
    i32 8, label %137
  ]

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store i32 1677, i32* %130, align 8
  br label %140

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i32 867, i32* %133, align 8
  br label %140

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 462, i32* %136, align 8
  br label %140

137:                                              ; preds = %115
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i32 258, i32* %139, align 8
  br label %140

140:                                              ; preds = %115, %137, %134, %131, %128
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @CVMX_PCIERCX_CFG448(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @cvmx_pcie_cfgx_write(i32 %141, i32 %143, i8* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %140, %100
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG452(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PESCX_CTL_STATUS(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG455(i32) #1

declare dso_local %struct.TYPE_13__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32) #1

declare dso_local i32 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG448(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
