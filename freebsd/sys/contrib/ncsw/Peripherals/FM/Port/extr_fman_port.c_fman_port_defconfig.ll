; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port_cfg = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i8*, i8*, i8*, i8*, i32 }

@E_FMAN_PORT_DMA_NO_SWAP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@E_FMAN_PORT_COLOR_GREEN = common dso_local global i32 0, align 4
@FMAN_PORT_BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@KILOBYTE = common dso_local global i32 0, align 4
@E_FMAN_PORT_DEQ_BY_PRI = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_HC = common dso_local global i32 0, align 4
@E_FMAN_PORT_DEQ_NO_PREFETCH = common dso_local global i32 0, align 4
@E_FMAN_PORT_DEQ_FULL_PREFETCH = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_TX_10G = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_OP = common dso_local global i32 0, align 4
@DEFAULT_FMAN_SP_NO_SCATTER_GATHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_port_defconfig(%struct.fman_port_cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.fman_port_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_port_cfg* %0, %struct.fman_port_cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @E_FMAN_PORT_DMA_NO_SWAP, align 4
  %6 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %6, i32 0, i32 28
  store i32 %5, i32* %7, align 8
  %8 = load i8*, i8** @FALSE, align 8
  %9 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %9, i32 0, i32 27
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %12, i32 0, i32 26
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %16 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %15, i32 0, i32 25
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @TRUE, align 8
  %18 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %19 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %18, i32 0, i32 24
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @E_FMAN_PORT_COLOR_GREEN, align 4
  %21 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %21, i32 0, i32 23
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @FALSE, align 8
  %24 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %25 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %24, i32 0, i32 22
  store i8* %23, i8** %25, align 8
  %26 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %26, i32 0, i32 21
  store i64 0, i64* %27, align 8
  %28 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %31 = mul nsw i32 1024, %30
  %32 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %33 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %35 = mul nsw i32 1024, %34
  %36 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %37 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %39 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %38, i32 0, i32 20
  store i64 0, i64* %39, align 8
  %40 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %40, i32 0, i32 19
  store i64 0, i64* %41, align 8
  %42 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %43 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %42, i32 0, i32 18
  store i64 0, i64* %43, align 8
  %44 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %45 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %44, i32 0, i32 17
  store i64 0, i64* %45, align 8
  %46 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %47 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %46, i32 0, i32 16
  store i64 0, i64* %47, align 8
  %48 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %48, i32 0, i32 15
  store i64 0, i64* %49, align 8
  %50 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %51 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %50, i32 0, i32 14
  store i64 0, i64* %51, align 8
  %52 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %52, i32 0, i32 13
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @KILOBYTE, align 4
  %55 = mul nsw i32 5, %54
  %56 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %60 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %59, i32 0, i32 12
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @TRUE, align 8
  %62 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %63 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @E_FMAN_PORT_DEQ_BY_PRI, align 4
  %65 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %66 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @E_FMAN_PORT_TYPE_HC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %2
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %73 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @E_FMAN_PORT_DEQ_NO_PREFETCH, align 4
  %75 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %76 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  br label %84

77:                                               ; preds = %2
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %80 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @E_FMAN_PORT_DEQ_FULL_PREFETCH, align 4
  %82 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %83 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %70
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @E_FMAN_PORT_TYPE_TX_10G, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %90 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %89, i32 0, i32 4
  store i32 4, i32* %90, align 8
  %91 = load i8*, i8** @TRUE, align 8
  %92 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %93 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %95 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %94, i32 0, i32 5
  store i32 5120, i32* %95, align 4
  br label %116

96:                                               ; preds = %84
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @E_FMAN_PORT_TYPE_HC, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @E_FMAN_PORT_TYPE_OP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %96
  %105 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %106 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %105, i32 0, i32 4
  store i32 2, i32* %106, align 8
  br label %110

107:                                              ; preds = %100
  %108 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %109 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %108, i32 0, i32 4
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** @FALSE, align 8
  %112 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %113 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %115 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %114, i32 0, i32 5
  store i32 1024, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %88
  %117 = load i32, i32* @DEFAULT_FMAN_SP_NO_SCATTER_GATHER, align 4
  %118 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %3, align 8
  %119 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
