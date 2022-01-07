; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mpic.c_mv_mpic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mpic.c_mv_mpic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_mpic_softc = type { i32**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@mv_mpic_sc = common dso_local global %struct.mv_mpic_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MPIC lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@mv_mpic_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No interrupt to use.\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@mpic_intr = common dso_local global i32 0, align 4
@MPIC_CTRL = common dso_local global i32 0, align 4
@MPIC_CTP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@MPIC_LOCAL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_mpic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_mpic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_mpic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.mv_mpic_softc*
  store %struct.mv_mpic_softc* %10, %struct.mv_mpic_softc** %4, align 8
  %11 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %12 = icmp ne %struct.mv_mpic_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %189

15:                                               ; preds = %1
  %16 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  store %struct.mv_mpic_softc* %16, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %20, i32 0, i32 9
  %22 = load i32, i32* @MTX_SPIN, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @mv_mpic_spec, align 4
  %26 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = call i32 @bus_alloc_resources(i32 %24, i32 %25, i32** %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %189

36:                                               ; preds = %15
  %37 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %59

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @INTR_TYPE_CLK, align 4
  %54 = load i32, i32* @mpic_intr, align 4
  %55 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %56 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %57 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %56, i32 0, i32 8
  %58 = call i32 @bus_setup_intr(i32 %47, i32* %52, i32 %53, i32 %54, i32* null, %struct.mv_mpic_softc* %55, i32* %57)
  br label %59

59:                                               ; preds = %46, %43
  %60 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @rman_get_bustag(i32* %64)
  %66 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @rman_get_bushandle(i32* %72)
  %74 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %75 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @rman_get_bustag(i32* %80)
  %82 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %83 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i8* @rman_get_bushandle(i32* %88)
  %90 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %93 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %59
  %99 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %100 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i8* @rman_get_bustag(i32* %103)
  %105 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %106 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %108 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i8* @rman_get_bushandle(i32* %111)
  %113 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %114 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %98, %59
  %116 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %117 = load i32, i32* @MPIC_CTRL, align 4
  %118 = call i32 @MPIC_WRITE(%struct.mv_mpic_softc* %116, i32 %117, i32 1)
  %119 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %120 = load i64, i64* @MPIC_CTP, align 8
  %121 = call i32 @MPIC_CPU_WRITE(%struct.mv_mpic_softc* %119, i64 %120, i32 0)
  %122 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %123 = load i32, i32* @MPIC_CTRL, align 4
  %124 = call i32 @MPIC_READ(%struct.mv_mpic_softc* %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @MPIC_CTRL_NIRQS(i32 %125)
  %127 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %128 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %130 = call i64 @mv_mpic_register_isrcs(%struct.mv_mpic_softc* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %115
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @mv_mpic_spec, align 4
  %137 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %138 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = call i32 @bus_release_resources(i32 %135, i32 %136, i32** %139)
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %2, align 4
  br label %189

142:                                              ; preds = %115
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @ofw_bus_get_node(i32 %143)
  %145 = call i32 @OF_xref_from_node(i32 %144)
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @OF_device_register_xref(i32 %145, i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @OF_xref_from_device(i32 %149)
  %151 = call i32* @intr_pic_register(i32 %148, i32 %150)
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %142
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @mv_mpic_spec, align 4
  %158 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** %4, align 8
  %159 = getelementptr inbounds %struct.mv_mpic_softc, %struct.mv_mpic_softc* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = call i32 @bus_release_resources(i32 %156, i32 %157, i32** %160)
  %162 = load i32, i32* @ENXIO, align 4
  store i32 %162, i32* %2, align 4
  br label %189

163:                                              ; preds = %142
  %164 = call i32 (...) @mpic_unmask_msi()
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %185, %163
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @mp_ncpus, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  %170 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i64 @MPIC_CPU(i32 %171)
  %173 = load i64, i64* @MPIC_LOCAL_MASK, align 8
  %174 = add nsw i64 %172, %173
  %175 = load i32, i32* %7, align 4
  %176 = shl i32 1, %175
  %177 = load %struct.mv_mpic_softc*, %struct.mv_mpic_softc** @mv_mpic_sc, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i64 @MPIC_CPU(i32 %178)
  %180 = load i64, i64* @MPIC_LOCAL_MASK, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @MPIC_CPU_READ(%struct.mv_mpic_softc* %177, i64 %181)
  %183 = or i32 %176, %182
  %184 = call i32 @MPIC_CPU_WRITE(%struct.mv_mpic_softc* %170, i64 %174, i32 %183)
  br label %185

185:                                              ; preds = %169
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %165

188:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %153, %132, %32, %13
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.mv_mpic_softc*, i32*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i32 @MPIC_WRITE(%struct.mv_mpic_softc*, i32, i32) #1

declare dso_local i32 @MPIC_CPU_WRITE(%struct.mv_mpic_softc*, i64, i32) #1

declare dso_local i32 @MPIC_READ(%struct.mv_mpic_softc*, i32) #1

declare dso_local i32 @MPIC_CTRL_NIRQS(i32) #1

declare dso_local i64 @mv_mpic_register_isrcs(%struct.mv_mpic_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32**) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_device(i32) #1

declare dso_local i32 @mpic_unmask_msi(...) #1

declare dso_local i64 @MPIC_CPU(i32) #1

declare dso_local i32 @MPIC_CPU_READ(%struct.mv_mpic_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
