; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ap806_sei_softc = type { i32*, i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@GICP_SEMR0 = common dso_local global i32 0, align 4
@GICP_SEMR1 = common dso_local global i32 0, align 4
@MV_AP806_SEI_MAX_NIRQS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Cannot register SEI\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mv_ap806_sei_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Unable to register interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_ap806_sei_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_sei_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_ap806_sei_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mv_ap806_sei_softc* @device_get_softc(i32 %11)
  store %struct.mv_ap806_sei_softc* %12, %struct.mv_ap806_sei_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %19 = call i32 @MV_AP806_SEI_LOCK_INIT(%struct.mv_ap806_sei_softc* %18)
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %10, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %9, align 4
  br label %139

35:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %10, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %9, align 4
  br label %139

51:                                               ; preds = %35
  %52 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %53 = load i32, i32* @GICP_SEMR0, align 4
  %54 = call i32 @WR4(%struct.mv_ap806_sei_softc* %52, i32 %53, i32 -1)
  %55 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %56 = load i32, i32* @GICP_SEMR1, align 4
  %57 = call i32 @WR4(%struct.mv_ap806_sei_softc* %55, i32 %56, i32 -1)
  %58 = load i32, i32* @MV_AP806_SEI_MAX_NIRQS, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.TYPE_2__* @malloc(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %68 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %67, i32 0, i32 4
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %68, align 8
  %69 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @device_get_nameunit(i32 %71)
  store i8* %72, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %103, %51
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @MV_AP806_SEI_MAX_NIRQS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  %86 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %87 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @intr_isrc_register(i32* %92, i32 %95, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %77
  br label %139

102:                                              ; preds = %77
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %73

106:                                              ; preds = %73
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @OF_xref_from_node(i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32* @intr_pic_register(i32 %109, i32 %110)
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %9, align 4
  br label %139

117:                                              ; preds = %106
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %120 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @INTR_TYPE_MISC, align 4
  %123 = load i32, i32* @INTR_MPSAFE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @mv_ap806_sei_intr, align 4
  %126 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %127 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %128 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %127, i32 0, i32 2
  %129 = call i64 @bus_setup_intr(i32 %118, i32* %121, i32 %124, i32 %125, i32* null, %struct.mv_ap806_sei_softc* %126, i32** %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @ENXIO, align 4
  store i32 %134, i32* %9, align 4
  br label %139

135:                                              ; preds = %117
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @OF_device_register_xref(i32 %136, i32 %137)
  store i32 0, i32* %2, align 4
  br label %181

139:                                              ; preds = %131, %113, %101, %47, %31
  %140 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %141 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %147 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %150 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @bus_teardown_intr(i32 %145, i32* %148, i32* %151)
  br label %153

153:                                              ; preds = %144, %139
  %154 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %155 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @SYS_RES_IRQ, align 4
  %161 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %162 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @bus_release_resource(i32 %159, i32 %160, i32 0, i32* %163)
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %167 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @SYS_RES_MEMORY, align 4
  %173 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mv_ap806_sei_softc, %struct.mv_ap806_sei_softc* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @bus_release_resource(i32 %171, i32 %172, i32 0, i32* %175)
  br label %177

177:                                              ; preds = %170, %165
  %178 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %4, align 8
  %179 = call i32 @MV_AP806_SEI_LOCK_DESTROY(%struct.mv_ap806_sei_softc* %178)
  %180 = load i32, i32* @ENXIO, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %135
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.mv_ap806_sei_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @MV_AP806_SEI_LOCK_INIT(%struct.mv_ap806_sei_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WR4(%struct.mv_ap806_sei_softc*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.mv_ap806_sei_softc*, i32**) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @MV_AP806_SEI_LOCK_DESTROY(%struct.mv_ap806_sei_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
