; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i32, i32*, i32, i32, i32*, %struct.callout**, i32, i32, i32, i32*, i32, i32* }
%struct.callout = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"No interrupt-parrent found. Error in DTB\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"DTB: Missing #interrupt-cells property in interrupt parent node\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%d IRQs available\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ERROR: no interrupts entry found!\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"could not allocate gpio%d interrupt\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Disable interrupts (offset = %x + EDGE(0x18)\0A\00", align 1
@GPIO_INT_EDGE_MASK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"Disable interrupts (offset = %x + LEV(0x1C))\0A\00", align 1
@GPIO_INT_LEV_MASK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"Setup intr %d\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@mv_gpio_intr = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"could not set up intr %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Clear int status (offset = %x)\0A\00", align 1
@GPIO_INT_CAUSE = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_gpio_softc*, i64)* @mv_gpio_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_gpio_setup_interrupts(%struct.mv_gpio_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_gpio_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv_gpio_softc* %0, %struct.mv_gpio_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ofw_bus_find_iparent(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %286

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @OF_node_from_xref(i64 %21)
  %23 = call i32 @OF_searchencprop(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 4)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %286

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @OF_getproplen(i64 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %61

55:                                               ; preds = %32
  %56 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %57 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %3, align 4
  br label %286

61:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %114, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SYS_RES_IRQ, align 4
  %80 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %81 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = call i32 @bus_alloc_resource_any(i32 %78, i32 %79, i32* %85, i32 %86)
  %88 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %88, i32 0, i32 9
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %94, i32 0, i32 9
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %68
  %103 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %104 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %103, i32 0, i32 10
  %105 = call i32 @mtx_destroy(i32* %104)
  %106 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %107 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %3, align 4
  br label %286

113:                                              ; preds = %68
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %62

117:                                              ; preds = %62
  %118 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %119 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %122 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %129 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %132 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @GPIO_INT_EDGE_MASK, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @bus_space_write_4(i32 %127, i32 %130, i64 %136, i32 0)
  %138 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %139 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %142 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  %145 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %146 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %149 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %152 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @GPIO_INT_LEV_MASK, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @bus_space_write_4(i32 %147, i32 %150, i64 %156, i32 0)
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %222, %117
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %161 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %225

164:                                              ; preds = %158
  %165 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %166 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %171 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %173, i32 0, i32 9
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @INTR_TYPE_MISC, align 4
  %181 = load i64, i64* @mv_gpio_intr, align 8
  %182 = inttoptr i64 %181 to i32*
  %183 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %184 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %185 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %184, i32 0, i32 11
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i64 @bus_setup_intr(i32 %172, i32 %179, i32 %180, i32* %182, i32* null, %struct.mv_gpio_softc* %183, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %164
  %193 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %194 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %193, i32 0, i32 10
  %195 = call i32 @mtx_destroy(i32* %194)
  %196 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %197 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SYS_RES_IRQ, align 4
  %200 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %201 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %208 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %207, i32 0, i32 9
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @bus_release_resource(i32 %198, i32 %199, i32 %206, i32 %213)
  %215 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %216 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 (i32, i8*, ...) @device_printf(i32 %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @ENXIO, align 4
  store i32 %220, i32* %3, align 4
  br label %286

221:                                              ; preds = %164
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %158

225:                                              ; preds = %158
  %226 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %227 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %230 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %231)
  %233 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %234 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %237 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %240 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* @GPIO_INT_CAUSE, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @bus_space_write_4(i32 %235, i32 %238, i64 %244, i32 0)
  %246 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %247 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 %249, 8
  %251 = trunc i64 %250 to i32
  %252 = load i32, i32* @M_DEVBUF, align 4
  %253 = load i32, i32* @M_WAITOK, align 4
  %254 = load i32, i32* @M_ZERO, align 4
  %255 = or i32 %253, %254
  %256 = call i64 @malloc(i32 %251, i32 %252, i32 %255)
  %257 = inttoptr i64 %256 to %struct.callout**
  %258 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %259 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %258, i32 0, i32 5
  store %struct.callout** %257, %struct.callout*** %259, align 8
  %260 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %261 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %260, i32 0, i32 5
  %262 = load %struct.callout**, %struct.callout*** %261, align 8
  %263 = icmp eq %struct.callout** %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %225
  %265 = load i32, i32* @ENOMEM, align 4
  store i32 %265, i32* %3, align 4
  br label %286

266:                                              ; preds = %225
  %267 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %268 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 4
  %272 = trunc i64 %271 to i32
  %273 = load i32, i32* @M_DEVBUF, align 4
  %274 = load i32, i32* @M_WAITOK, align 4
  %275 = call i64 @malloc(i32 %272, i32 %273, i32 %274)
  %276 = inttoptr i64 %275 to i32*
  %277 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %278 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %277, i32 0, i32 4
  store i32* %276, i32** %278, align 8
  %279 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %4, align 8
  %280 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = icmp eq i32* %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %266
  %284 = load i32, i32* @ENOMEM, align 4
  store i32 %284, i32* %3, align 4
  br label %286

285:                                              ; preds = %266
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %285, %283, %264, %192, %102, %55, %25, %14
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i64 @ofw_bus_find_iparent(i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_searchencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i64, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32*, %struct.mv_gpio_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
