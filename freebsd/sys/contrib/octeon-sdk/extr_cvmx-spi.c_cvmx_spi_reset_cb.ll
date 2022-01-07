; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_reset_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_reset_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__, i8* }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_26__ = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ERROR SPI%d: BIST failed on receive datapath FIFO\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ERROR SPI%d: BIST failed on RX calendar table\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ERROR SPI%d: BIST failed on TX calendar table\0A\00", align 1
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_reset_cb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %16 = call i32 @cvmx_clock_get_rate(i32 %15)
  %17 = sdiv i32 %16, 1000
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_SPXX_INT_MSK(i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CVMX_SPXX_INT_MSK(i32 %22)
  %24 = call i32 @cvmx_write_csr(i32 %23, i8* null)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CVMX_STXX_INT_MSK(i32 %25)
  %27 = call i8* @cvmx_read_csr(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CVMX_STXX_INT_MSK(i32 %29)
  %31 = call i32 @cvmx_write_csr(i32 %30, i8* null)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CVMX_SRXX_COM_CTL(i32 %32)
  %34 = call i32 @cvmx_write_csr(i32 %33, i8* null)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @CVMX_STXX_COM_CTL(i32 %35)
  %37 = call i32 @cvmx_write_csr(i32 %36, i8* null)
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CVMX_SPXX_CLK_CTL(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @cvmx_write_csr(i32 %42, i8* %44)
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 10, %46
  %48 = call i32 @cvmx_wait(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @CVMX_SPXX_BIST_STAT(i32 %49)
  %51 = call i8* @cvmx_read_csr(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %2
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %68
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i8* null, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @CVMX_SRXX_SPI4_CALX(i32 %84, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @cvmx_write_csr(i32 %86, i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i8* null, i8** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @CVMX_STXX_SPI4_CALX(i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @cvmx_write_csr(i32 %95, i8* %97)
  br label %99

99:                                               ; preds = %80
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %77

102:                                              ; preds = %77
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @CVMX_SPXX_INT_REG(i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @CVMX_SPXX_INT_REG(i32 %105)
  %107 = call i8* @cvmx_read_csr(i32 %106)
  %108 = call i32 @cvmx_write_csr(i32 %104, i8* %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @CVMX_SPXX_INT_MSK(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @cvmx_write_csr(i32 %110, i8* %112)
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @CVMX_STXX_INT_REG(i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @CVMX_STXX_INT_REG(i32 %116)
  %118 = call i8* @cvmx_read_csr(i32 %117)
  %119 = call i32 @cvmx_write_csr(i32 %115, i8* %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @CVMX_STXX_INT_MSK(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @cvmx_write_csr(i32 %121, i8* %123)
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store i32 16, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 7
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 6
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @CVMX_SPXX_CLK_CTL(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @cvmx_write_csr(i32 %145, i8* %147)
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 100, %149
  %151 = call i32 @cvmx_wait(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @CVMX_SPXX_CLK_CTL(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @cvmx_write_csr(i32 %155, i8* %157)
  %159 = load i32, i32* %12, align 4
  %160 = mul nsw i32 100, %159
  %161 = call i32 @cvmx_wait(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* @OCTEON_CN58XX, align 4
  %171 = call i64 @OCTEON_IS_MODEL(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %102
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store i32 3, i32* %175, align 8
  br label %179

176:                                              ; preds = %102
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 2
  store i32 8, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %173
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 4
  store i32 1, i32* %183, align 8
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @cvmx_write_csr(i32 %185, i8* %187)
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i8* null, i8** %189, align 8
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @CVMX_SPXX_DBG_DESKEW_CTL(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @cvmx_write_csr(i32 %191, i8* %193)
  ret i32 0
}

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_INT_MSK(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_STXX_INT_MSK(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_SPXX_CLK_CTL(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @CVMX_SPXX_BIST_STAT(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_SRXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_SPXX_INT_REG(i32) #1

declare dso_local i32 @CVMX_STXX_INT_REG(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_SPXX_TRN4_CTL(i32) #1

declare dso_local i32 @CVMX_SPXX_DBG_DESKEW_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
