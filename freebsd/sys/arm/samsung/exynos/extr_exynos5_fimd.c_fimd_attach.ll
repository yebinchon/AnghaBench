; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_fimd.c_fimd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_fimd.c_fimd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_info = type { i32, i32, i32, i64, i64 }
%struct.fimd_softc = type { i32*, i32*, %struct.TYPE_2__, i8*, i8*, %struct.panel_info*, i32*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@fimd_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't get panel info\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@FIMDBYPASS_DISP1 = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Can't attach fbd device\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to attach fbd device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fimd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.panel_info, align 8
  %5 = alloca %struct.fimd_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.fimd_softc* @device_get_softc(i32* %8)
  store %struct.fimd_softc* %9, %struct.fimd_softc** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %12 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @fimd_spec, align 4
  %15 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %16 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @bus_alloc_resources(i32* %13, i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @device_printf(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %207

24:                                               ; preds = %1
  %25 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %26 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rman_get_bustag(i32 %29)
  %31 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %32 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %34 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rman_get_bushandle(i32 %37)
  %39 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %40 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %42 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @rman_get_bustag(i32 %45)
  %47 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %48 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %50 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @rman_get_bushandle(i32 %53)
  %55 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %56 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %58 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @rman_get_bustag(i32 %61)
  %63 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %64 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %66 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @rman_get_bushandle(i32 %69)
  %71 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %72 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %74 = call i64 @get_panel_info(%struct.fimd_softc* %73, %struct.panel_info* %4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %24
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @device_printf(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %207

80:                                               ; preds = %24
  %81 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 0
  store i32 2, i32* %83, align 8
  %84 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %85 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %84, i32 0, i32 5
  store %struct.panel_info* %4, %struct.panel_info** %85, align 8
  %86 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32* @devclass_get_device(i32 %86, i32 0)
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %80
  %92 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %93 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %96 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @bus_space_read_4(i8* %94, i8* %97, i32 532)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @FIMDBYPASS_DISP1, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %103 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %106 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @bus_space_write_4(i8* %104, i8* %107, i32 532, i32 %108)
  %110 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %113 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %4, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %118 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %121 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 2
  %125 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %126 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %129 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  store i32 16, i32* %130, align 8
  %131 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %132 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 16, i32* %133, align 4
  %134 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %135 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %139 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %137, %141
  %143 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %144 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 5
  store i32 %142, i32* %145, align 4
  %146 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %147 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @M_ZERO, align 4
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %153 = call i64 @kmem_alloc_contig(i32 %149, i32 %150, i32 0, i32 -1, i32 %151, i32 0, i32 %152)
  %154 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %155 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 6
  store i64 %153, i64* %156, align 8
  %157 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %158 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @vtophys(i64 %160)
  %162 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %163 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 7
  store i64 %161, i64* %164, align 8
  %165 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %166 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %171 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @memset(i32* %169, i32 0, i32 %173)
  %175 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %176 = call i32 @fimd_init(%struct.fimd_softc* %175)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @device_get_nameunit(i32* %177)
  %179 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %180 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 8
  store i32 %178, i32* %181, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @device_get_unit(i32* %183)
  %185 = call i32* @device_add_child(i32* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %187 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %186, i32 0, i32 1
  store i32* %185, i32** %187, align 8
  %188 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %189 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %91
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @device_printf(i32* %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %91
  %196 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %197 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i64 @device_probe_and_attach(i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.fimd_softc*, %struct.fimd_softc** %5, align 8
  %203 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @device_printf(i32* %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %195
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %76, %20
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.fimd_softc* @device_get_softc(i32*) #1

declare dso_local i64 @bus_alloc_resources(i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i64 @get_panel_info(%struct.fimd_softc*, %struct.panel_info*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @bus_space_read_4(i8*, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i8*, i8*, i32, i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vtophys(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fimd_init(%struct.fimd_softc*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
