; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_interface_up_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_interface_up_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SPI%d: Rx is now up\0A\00", align 1
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SPI%d: Tx is now up\0A\00", align 1
@CVMX_BOARD_TYPE_CUST_RADISYS_RSYS4GBE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_interface_up_cb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_SRXX_COM_CTL(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CVMX_SRXX_COM_CTL(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cvmx_write_csr(i32 %22, i8* %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CVMX_STXX_COM_CTL(i32 %34)
  %36 = call i8* @cvmx_read_csr(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CVMX_STXX_COM_CTL(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cvmx_write_csr(i32 %41, i8* %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %33, %28
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 64, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @CVMX_GMXX_RXX_FRM_MIN(i32 0, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @cvmx_write_csr(i32 %52, i8* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i32 65532, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CVMX_GMXX_RXX_FRM_MAX(i32 0, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @cvmx_write_csr(i32 %60, i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i8* null, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i32 65532, i32* %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @CVMX_GMXX_RXX_JABBER(i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cvmx_write_csr(i32 %68, i8* %70)
  ret i32 0
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MIN(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MAX(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_JABBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
