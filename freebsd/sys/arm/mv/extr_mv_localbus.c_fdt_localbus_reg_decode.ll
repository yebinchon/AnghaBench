; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_fdt_localbus_reg_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_fdt_localbus_reg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.localbus_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.localbus_devinfo = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"addr_cells = %d, size_cells = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tuples = %d, tuple size = %d\0A\00", align 1
@MV_LOCALBUS_MAX_BANKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"bank number [%d] out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"device [%d]: missing memory mapping\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"device [%d]: not enough memory reserved\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"reg addr bank = %d, start = %lx, end = %lx, count = %lx\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.localbus_softc*, %struct.localbus_devinfo*)* @fdt_localbus_reg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_localbus_reg_decode(i32 %0, %struct.localbus_softc* %1, %struct.localbus_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.localbus_softc*, align 8
  %7 = alloca %struct.localbus_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.localbus_softc* %1, %struct.localbus_softc** %6, align 8
  store %struct.localbus_devinfo* %2, %struct.localbus_devinfo** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @OF_parent(i32 %20)
  %22 = call i64 @fdt_addrsize_cells(i32 %21, i32* %13, i32* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %4, align 4
  br label %162

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %15, align 4
  %35 = bitcast i32** %11 to i8**
  %36 = call i32 @OF_getprop_alloc_multi(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34, i8** %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 (i8*, i32, i64, ...) @debugf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %39)
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 (i8*, i32, i64, ...) @debugf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41, i64 %43)
  %45 = load i32, i32* %16, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %162

48:                                               ; preds = %26
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %12, align 8
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %154, %48
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %157

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 @fdt_data_get(i8* %56, i32 1)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @MV_LOCALBUS_MAX_BANKS, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %63 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %154

67:                                               ; preds = %54
  %68 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %69 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %79 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %154

83:                                               ; preds = %67
  %84 = load i32, i32* %19, align 4
  %85 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %7, align 8
  %86 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32* %88, i32** %12, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @fdt_data_to_res(i32* %89, i32 %91, i32 %92, i64* %8, i64* %10)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %7, align 8
  %98 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %97, i32 0, i32 1
  %99 = call i32 @resource_list_free(i32* %98)
  br label %158

100:                                              ; preds = %83
  %101 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %102 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %113 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  br label %154

117:                                              ; preds = %100
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32*, i32** %12, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %12, align 8
  %125 = load %struct.localbus_softc*, %struct.localbus_softc** %6, align 8
  %126 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %132, %133
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %135, %136
  %138 = sub nsw i64 %137, 1
  store i64 %138, i64* %9, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 (i8*, i32, i64, ...) @debugf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %139, i64 %140, i64 %141, i64 %142)
  %144 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %7, align 8
  %145 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %144, i32 0, i32 1
  %146 = load i32, i32* @SYS_RES_MEMORY, align 4
  %147 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %7, align 8
  %148 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @resource_list_add(i32* %145, i32 %146, i32 %149, i64 %150, i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %117, %111, %77, %61
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %50

157:                                              ; preds = %50
  store i32 0, i32* %18, align 4
  br label %158

158:                                              ; preds = %157, %96
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @OF_prop_free(i32* %159)
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %47, %24
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @debugf(i8*, i32, i64, ...) #1

declare dso_local i32 @fdt_data_get(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @fdt_data_to_res(i32*, i32, i32, i64*, i64*) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @OF_prop_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
