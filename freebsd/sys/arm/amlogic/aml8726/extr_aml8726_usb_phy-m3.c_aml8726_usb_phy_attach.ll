; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m3.c_aml8726_usb_phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m3.c_aml8726_usb_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_usb_phy_softc = type { i32, i32, %struct.aml8726_usb_phy_gpio*, i32 }
%struct.aml8726_usb_phy_gpio = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"/soc/usb@c9040000\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"missing usb@c9040000 node in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"/soc/usb@c90c0000\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"missing usb@c90c0000 node in FDT\0A\00", align 1
@aml8726_usb_phy_spec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"usb-pwr-en\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"unable to parse gpio\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"could not use gpio to control power\0A\00", align 1
@AML_USB_PHY_CFG_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_DIV_MASK = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_SEL_MASK = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_A_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_B_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_A_PLL_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_B_PLL_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_A_PHYS_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_B_PHYS_RST = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_A_POR = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_B_POR = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_SEL_XTAL = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_EN = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_DETECTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"PHY Clock not detected\0A\00", align 1
@AML_USB_PHY_MISC_A_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_MISC_ID_OVERIDE_EN = common dso_local global i32 0, align 4
@AML_USB_PHY_MISC_ID_OVERIDE_DEVICE = common dso_local global i32 0, align 4
@AML_USB_PHY_MISC_ID_OVERIDE_HOST = common dso_local global i32 0, align 4
@AML_USB_PHY_MISC_B_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_usb_phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_usb_phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_usb_phy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.aml8726_usb_phy_softc* @device_get_softc(i32 %15)
  store %struct.aml8726_usb_phy_softc* %16, %struct.aml8726_usb_phy_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %19 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = call i64 @aml8726_usb_phy_mode(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %468

26:                                               ; preds = %1
  %27 = call i64 @aml8726_usb_phy_mode(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %468

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @aml8726_usb_phy_spec, align 4
  %36 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %37 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @bus_alloc_resources(i32 %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %468

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ofw_bus_get_node(i32 %46)
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = bitcast i8*** %7 to i8**
  %50 = call i64 @OF_getencprop_alloc_multi(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 24, i8** %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %60 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 24
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i64 @malloc(i32 %64, i32 %65, i32 %66)
  %68 = inttoptr i64 %67 to %struct.aml8726_usb_phy_gpio*
  %69 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %70 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %69, i32 0, i32 2
  store %struct.aml8726_usb_phy_gpio* %68, %struct.aml8726_usb_phy_gpio** %70, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %129, %56
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %132

75:                                               ; preds = %71
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @OF_device_from_xref(i8* %81)
  %83 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %84 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %83, i32 0, i32 2
  %85 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %85, i64 %87
  %89 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %88, i32 0, i32 2
  store i32* %82, i32** %89, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 3
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %90, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %98 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %97, i32 0, i32 2
  %99 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %99, i64 %101
  %103 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %102, i32 0, i32 1
  store i8* %96, i8** %103, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 3
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %104, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %112 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %111, i32 0, i32 2
  %113 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %113, i64 %115
  %117 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %116, i32 0, i32 0
  store i8* %110, i8** %117, align 8
  %118 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %119 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %118, i32 0, i32 2
  %120 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %120, i64 %122
  %124 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %75
  store i32 1, i32* %5, align 4
  br label %132

128:                                              ; preds = %75
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %71

132:                                              ; preds = %127, %71
  %133 = load i8**, i8*** %7, align 8
  %134 = call i32 @OF_prop_free(i8** %133)
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %418

140:                                              ; preds = %132
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %201, %140
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %204

145:                                              ; preds = %141
  %146 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %147 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %146, i32 0, i32 2
  %148 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %148, i64 %150
  %152 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %155 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %154, i32 0, i32 2
  %156 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %156, i64 %158
  %160 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %163 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %162, i32 0, i32 2
  %164 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %164, i64 %166
  %168 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @PIN_ON_FLAG(i8* %169)
  %171 = call i64 @GPIO_PIN_SET(i32* %153, i8* %161, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %193, label %173

173:                                              ; preds = %145
  %174 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %175 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %174, i32 0, i32 2
  %176 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %176, i64 %178
  %180 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %183 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %182, i32 0, i32 2
  %184 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %184, i64 %186
  %188 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %191 = call i64 @GPIO_PIN_SETFLAGS(i32* %181, i8* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %173, %145
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %418

196:                                              ; preds = %173
  %197 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %198 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %141

204:                                              ; preds = %141
  store i32 2, i32* %10, align 4
  %205 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %206 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %207 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %205, i32 %206)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_MASK, align 4
  %209 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_MASK, align 4
  %210 = or i32 %208, %209
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %14, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* @AML_USB_PHY_CFG_A_RST, align 4
  %215 = load i32, i32* @AML_USB_PHY_CFG_B_RST, align 4
  %216 = or i32 %214, %215
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %14, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* @AML_USB_PHY_CFG_A_PLL_RST, align 4
  %221 = load i32, i32* @AML_USB_PHY_CFG_B_PLL_RST, align 4
  %222 = or i32 %220, %221
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %14, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* @AML_USB_PHY_CFG_A_PHYS_RST, align 4
  %227 = load i32, i32* @AML_USB_PHY_CFG_B_PHYS_RST, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %14, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* @AML_USB_PHY_CFG_A_POR, align 4
  %233 = load i32, i32* @AML_USB_PHY_CFG_B_POR, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %14, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_XTAL, align 4
  %239 = load i32, i32* %14, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %10, align 4
  %242 = sub nsw i32 %241, 1
  %243 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_SHIFT, align 4
  %244 = shl i32 %242, %243
  %245 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_MASK, align 4
  %246 = and i32 %244, %245
  %247 = load i32, i32* %14, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* @AML_USB_PHY_CFG_CLK_EN, align 4
  %250 = load i32, i32* %14, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %14, align 4
  %252 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %253 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %252, i32 %253, i32 %254)
  %256 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %257 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %258 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %256, i32 %257)
  %259 = load i32, i32* @AML_USB_PHY_CFG_A_RST, align 4
  %260 = load i32, i32* @AML_USB_PHY_CFG_B_RST, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* %14, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %14, align 4
  %264 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %265 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %266 = load i32, i32* %14, align 4
  %267 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %264, i32 %265, i32 %266)
  %268 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %269 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %270 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %268, i32 %269)
  %271 = call i32 @DELAY(i32 200)
  %272 = load i32, i32* @AML_USB_PHY_CFG_A_RST, align 4
  %273 = load i32, i32* @AML_USB_PHY_CFG_B_RST, align 4
  %274 = or i32 %272, %273
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %14, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %14, align 4
  %278 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %279 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %278, i32 %279, i32 %280)
  %282 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %283 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %284 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %282, i32 %283)
  %285 = call i32 @DELAY(i32 200)
  %286 = load i32, i32* @AML_USB_PHY_CFG_A_PLL_RST, align 4
  %287 = load i32, i32* @AML_USB_PHY_CFG_B_PLL_RST, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* %14, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %14, align 4
  %291 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %292 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %291, i32 %292, i32 %293)
  %295 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %296 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %297 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %295, i32 %296)
  %298 = call i32 @DELAY(i32 200)
  %299 = load i32, i32* @AML_USB_PHY_CFG_A_PLL_RST, align 4
  %300 = load i32, i32* @AML_USB_PHY_CFG_B_PLL_RST, align 4
  %301 = or i32 %299, %300
  %302 = xor i32 %301, -1
  %303 = load i32, i32* %14, align 4
  %304 = and i32 %303, %302
  store i32 %304, i32* %14, align 4
  %305 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %306 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %305, i32 %306, i32 %307)
  %309 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %310 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %311 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %309, i32 %310)
  %312 = call i32 @DELAY(i32 200)
  %313 = load i32, i32* @AML_USB_PHY_CFG_A_PHYS_RST, align 4
  %314 = load i32, i32* @AML_USB_PHY_CFG_B_PHYS_RST, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* %14, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %14, align 4
  %318 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %319 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %318, i32 %319, i32 %320)
  %322 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %323 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %324 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %322, i32 %323)
  %325 = call i32 @DELAY(i32 200)
  %326 = load i32, i32* @AML_USB_PHY_CFG_A_PHYS_RST, align 4
  %327 = load i32, i32* @AML_USB_PHY_CFG_B_PHYS_RST, align 4
  %328 = or i32 %326, %327
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %14, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %14, align 4
  %332 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %333 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %332, i32 %333, i32 %334)
  %336 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %337 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %338 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %336, i32 %337)
  %339 = call i32 @DELAY(i32 200)
  %340 = load i32, i32* @AML_USB_PHY_CFG_A_POR, align 4
  %341 = load i32, i32* @AML_USB_PHY_CFG_B_POR, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* %14, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %14, align 4
  %345 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %346 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %347 = load i32, i32* %14, align 4
  %348 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %345, i32 %346, i32 %347)
  %349 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %350 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %351 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %349, i32 %350)
  %352 = call i32 @DELAY(i32 200)
  %353 = load i32, i32* @AML_USB_PHY_CFG_A_POR, align 4
  %354 = load i32, i32* @AML_USB_PHY_CFG_B_POR, align 4
  %355 = or i32 %353, %354
  %356 = xor i32 %355, -1
  %357 = load i32, i32* %14, align 4
  %358 = and i32 %357, %356
  store i32 %358, i32* %14, align 4
  %359 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %360 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %361 = load i32, i32* %14, align 4
  %362 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %359, i32 %360, i32 %361)
  %363 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %364 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %365 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %363, i32 %364)
  %366 = call i32 @DELAY(i32 200)
  %367 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %368 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %369 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %367, i32 %368)
  store i32 %369, i32* %14, align 4
  %370 = load i32, i32* %14, align 4
  %371 = load i32, i32* @AML_USB_PHY_CFG_CLK_DETECTED, align 4
  %372 = and i32 %370, %371
  %373 = load i32, i32* @AML_USB_PHY_CFG_CLK_DETECTED, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %204
  %376 = load i32, i32* %3, align 4
  %377 = call i32 @device_printf(i32 %376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %378

378:                                              ; preds = %375, %204
  %379 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %380 = load i32, i32* @AML_USB_PHY_MISC_A_REG, align 4
  %381 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %379, i32 %380)
  store i32 %381, i32* %14, align 4
  %382 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_EN, align 4
  %383 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_DEVICE, align 4
  %384 = or i32 %382, %383
  %385 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_HOST, align 4
  %386 = or i32 %384, %385
  %387 = xor i32 %386, -1
  %388 = load i32, i32* %14, align 4
  %389 = and i32 %388, %387
  store i32 %389, i32* %14, align 4
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* %14, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %14, align 4
  %393 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %394 = load i32, i32* @AML_USB_PHY_MISC_A_REG, align 4
  %395 = load i32, i32* %14, align 4
  %396 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %393, i32 %394, i32 %395)
  %397 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %398 = load i32, i32* @AML_USB_PHY_MISC_B_REG, align 4
  %399 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %397, i32 %398)
  store i32 %399, i32* %14, align 4
  %400 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_EN, align 4
  %401 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_DEVICE, align 4
  %402 = or i32 %400, %401
  %403 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_HOST, align 4
  %404 = or i32 %402, %403
  %405 = xor i32 %404, -1
  %406 = load i32, i32* %14, align 4
  %407 = and i32 %406, %405
  store i32 %407, i32* %14, align 4
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %14, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %14, align 4
  %411 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %412 = load i32, i32* @AML_USB_PHY_MISC_B_REG, align 4
  %413 = load i32, i32* %14, align 4
  %414 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %411, i32 %412, i32 %413)
  %415 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %416 = load i32, i32* @AML_USB_PHY_MISC_B_REG, align 4
  %417 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %415, i32 %416)
  store i32 0, i32* %2, align 4
  br label %468

418:                                              ; preds = %193, %137
  %419 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %420 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %426, %418
  %423 = load i32, i32* %11, align 4
  %424 = add nsw i32 %423, -1
  store i32 %424, i32* %11, align 4
  %425 = icmp ne i32 %423, 0
  br i1 %425, label %426, label %453

426:                                              ; preds = %422
  %427 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %428 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %427, i32 0, i32 2
  %429 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %428, align 8
  %430 = load i32, i32* %11, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %429, i64 %431
  %433 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %432, i32 0, i32 2
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %436 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %435, i32 0, i32 2
  %437 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %436, align 8
  %438 = load i32, i32* %11, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %437, i64 %439
  %441 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %440, i32 0, i32 1
  %442 = load i8*, i8** %441, align 8
  %443 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %444 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %443, i32 0, i32 2
  %445 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %444, align 8
  %446 = load i32, i32* %11, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %445, i64 %447
  %449 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @PIN_OFF_FLAG(i8* %450)
  %452 = call i64 @GPIO_PIN_SET(i32* %434, i8* %442, i32 %451)
  br label %422

453:                                              ; preds = %422
  %454 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %455 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %454, i32 0, i32 2
  %456 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %455, align 8
  %457 = load i32, i32* @M_DEVBUF, align 4
  %458 = call i32 @free(%struct.aml8726_usb_phy_gpio* %456, i32 %457)
  %459 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %460 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %459, i32 0, i32 2
  store %struct.aml8726_usb_phy_gpio* null, %struct.aml8726_usb_phy_gpio** %460, align 8
  %461 = load i32, i32* %3, align 4
  %462 = load i32, i32* @aml8726_usb_phy_spec, align 4
  %463 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %464 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @bus_release_resources(i32 %461, i32 %462, i32 %465)
  %467 = load i32, i32* @ENXIO, align 4
  store i32 %467, i32* %2, align 4
  br label %468

468:                                              ; preds = %453, %378, %41, %29, %22
  %469 = load i32, i32* %2, align 4
  ret i32 %469
}

declare dso_local %struct.aml8726_usb_phy_softc* @device_get_softc(i32) #1

declare dso_local i64 @aml8726_usb_phy_mode(i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32* @OF_device_from_xref(i8*) #1

declare dso_local i32 @OF_prop_free(i8**) #1

declare dso_local i64 @GPIO_PIN_SET(i32*, i8*, i32) #1

declare dso_local i32 @PIN_ON_FLAG(i8*) #1

declare dso_local i64 @GPIO_PIN_SETFLAGS(i32*, i8*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PIN_OFF_FLAG(i8*) #1

declare dso_local i32 @free(%struct.aml8726_usb_phy_gpio*, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
