; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_calendar_setup_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_calendar_setup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32 }

@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_calendar_setup_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca %struct.TYPE_25__, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca %struct.TYPE_32__, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CVMX_SRXX_COM_CTL(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i64 %36)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %42, %23
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cvmx_dpop(i64 %61)
  %63 = and i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @CVMX_SRXX_SPI4_CALX(i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %38

75:                                               ; preds = %38
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @CVMX_SRXX_SPI4_STAT(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i64 %85)
  br label %87

87:                                               ; preds = %75, %3
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @CVMX_STXX_ARB_CTL(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @cvmx_write_csr(i32 %99, i64 %101)
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 0
  store i32 8, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 1
  store i32 4, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @CVMX_GMXX_TX_SPI_MAX(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i64 %113)
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %116, i32 0, i32 0
  store i32 4, i32* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @CVMX_GMXX_TX_SPI_THRESH(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @cvmx_write_csr(i32 %119, i64 %121)
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @CVMX_GMXX_TX_SPI_CTL(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @cvmx_write_csr(i32 %129, i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %134, i32 0, i32 0
  store i32 32, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %136, i32 0, i32 1
  store i32 65535, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @CVMX_STXX_SPI4_DAT(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @cvmx_write_csr(i32 %139, i64 %141)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %147, %92
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @cvmx_dpop(i64 %166)
  %168 = and i32 %167, 1
  %169 = xor i32 %168, -1
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @CVMX_STXX_SPI4_CALX(i32 %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @cvmx_write_csr(i32 %174, i64 %176)
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %143

180:                                              ; preds = %143
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @CVMX_STXX_SPI4_STAT(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @cvmx_write_csr(i32 %188, i64 %190)
  br label %192

192:                                              ; preds = %180, %87
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_dpop(i64) #1

declare dso_local i32 @CVMX_SRXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_SRXX_SPI4_STAT(i32) #1

declare dso_local i32 @CVMX_STXX_ARB_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_MAX(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_THRESH(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_CTL(i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_DAT(i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
