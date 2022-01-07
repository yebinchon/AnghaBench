; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m6.c_aml8726_usb_phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m6.c_aml8726_usb_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_usb_phy_softc = type { i32, i32, %struct.aml8726_usb_phy_gpio*, %struct.TYPE_2__, i64, i32 }
%struct.aml8726_usb_phy_gpio = type { i8, i8, i32* }
%struct.TYPE_2__ = type { i8, i8, i32* }

@aml8726_usb_phy_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"force-aca\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"usb-pwr-en\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"usb-hub-rst\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"unable to parse gpio\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"could not use gpio to control power\0A\00", align 1
@AML_USB_PHY_CFG_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_SEL_32K_ALT = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_DIV_MASK = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_SEL_MASK = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_EN = common dso_local global i32 0, align 4
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_SEL_XTAL = common dso_local global i32 0, align 4
@AML_USB_PHY_CFG_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_FSEL_MASK = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_FSEL_24M = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_FSEL_12M = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_POR = common dso_local global i32 0, align 4
@AML_USB_PHY_CTRL_CLK_DETECTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"PHY Clock not detected\0A\00", align 1
@AML_USB_PHY_ADP_BC_REG = common dso_local global i32 0, align 4
@AML_USB_PHY_ADP_BC_ACA_EN = common dso_local global i32 0, align 4
@AML_USB_PHY_ADP_BC_ACA_FLOATING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"force-aca requires newer silicon\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"could not use gpio to reset hub\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_usb_phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_usb_phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_usb_phy_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.aml8726_usb_phy_softc* @device_get_softc(i32 %14)
  store %struct.aml8726_usb_phy_softc* %15, %struct.aml8726_usb_phy_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @aml8726_usb_phy_spec, align 4
  %21 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bus_alloc_resources(i32 %19, i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %481

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ofw_bus_get_node(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @OF_getprop_alloc(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @FALSE, align 8
  %36 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %37 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i64, i64* @TRUE, align 8
  %47 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %48 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @OF_prop_free(i8* %51)
  store i32 0, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @OF_getencprop_alloc_multi(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3, i8** %8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  store i32 %61, i32* %7, align 4
  %62 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %63 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @M_DEVBUF, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = call i64 @malloc(i32 %67, i32 %68, i32 %69)
  %71 = inttoptr i64 %70 to %struct.aml8726_usb_phy_gpio*
  %72 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %73 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %72, i32 0, i32 2
  store %struct.aml8726_usb_phy_gpio* %71, %struct.aml8726_usb_phy_gpio** %73, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %133, %60
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i8* @OF_device_from_xref(i8 signext %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %88 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %87, i32 0, i32 2
  %89 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %89, i64 %91
  %93 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %92, i32 0, i32 2
  store i32* %86, i32** %93, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %95, 3
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %102 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %101, i32 0, i32 2
  %103 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %103, i64 %105
  %107 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %106, i32 0, i32 0
  store i8 %100, i8* %107, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %109, 3
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %116 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %115, i32 0, i32 2
  %117 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %117, i64 %119
  %121 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %120, i32 0, i32 1
  store i8 %114, i8* %121, align 1
  %122 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %123 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %122, i32 0, i32 2
  %124 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %124, i64 %126
  %128 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %78
  store i32 1, i32* %6, align 4
  br label %136

132:                                              ; preds = %78
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %74

136:                                              ; preds = %131, %74
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @OF_prop_free(i8* %137)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @OF_getencprop_alloc_multi(i32 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 3, i8** %8)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %136
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = call i8* @OF_device_from_xref(i8 signext %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %150 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  store i32* %148, i32** %151, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %156 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i8 %154, i8* %157, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %162 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i8 %160, i8* %163, align 1
  %164 = load i32, i32* %10, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %172, label %166

166:                                              ; preds = %143
  %167 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %168 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %143
  store i32 1, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %166
  br label %174

174:                                              ; preds = %173, %136
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @OF_prop_free(i8* %175)
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %431

182:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %243, %182
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %246

187:                                              ; preds = %183
  %188 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %189 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %188, i32 0, i32 2
  %190 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %190, i64 %192
  %194 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %197 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %196, i32 0, i32 2
  %198 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %198, i64 %200
  %202 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %201, i32 0, i32 0
  %203 = load i8, i8* %202, align 8
  %204 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %205 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %204, i32 0, i32 2
  %206 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %206, i64 %208
  %210 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %209, i32 0, i32 1
  %211 = load i8, i8* %210, align 1
  %212 = call i32 @PIN_ON_FLAG(i8 signext %211)
  %213 = call i64 @GPIO_PIN_SET(i32* %195, i8 signext %203, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %235, label %215

215:                                              ; preds = %187
  %216 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %217 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %216, i32 0, i32 2
  %218 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %218, i64 %220
  %222 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %225 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %224, i32 0, i32 2
  %226 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %226, i64 %228
  %230 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %229, i32 0, i32 0
  %231 = load i8, i8* %230, align 8
  %232 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %233 = call i64 @GPIO_PIN_SETFLAGS(i32* %223, i8 signext %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %215, %187
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %431

238:                                              ; preds = %215
  %239 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %240 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %238
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %183

246:                                              ; preds = %183
  %247 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %248 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %249 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %247, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_32K_ALT, align 4
  %251 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_MASK, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_MASK, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @AML_USB_PHY_CFG_CLK_EN, align 4
  %256 = or i32 %254, %255
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %13, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %260, label %265 [
    i32 129, label %261
    i32 128, label %261
  ]

261:                                              ; preds = %246, %246
  %262 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_32K_ALT, align 4
  %263 = load i32, i32* %13, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %13, align 4
  br label %280

265:                                              ; preds = %246
  store i32 2, i32* %11, align 4
  %266 = load i32, i32* @AML_USB_PHY_CFG_CLK_SEL_XTAL, align 4
  %267 = load i32, i32* %13, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %13, align 4
  %269 = load i32, i32* %11, align 4
  %270 = sub nsw i32 %269, 1
  %271 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_SHIFT, align 4
  %272 = shl i32 %270, %271
  %273 = load i32, i32* @AML_USB_PHY_CFG_CLK_DIV_MASK, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* %13, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %13, align 4
  %277 = load i32, i32* @AML_USB_PHY_CFG_CLK_EN, align 4
  %278 = load i32, i32* %13, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %13, align 4
  br label %280

280:                                              ; preds = %265, %261
  %281 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %282 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %281, i32 %282, i32 %283)
  %285 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %286 = load i32, i32* @AML_USB_PHY_CFG_REG, align 4
  %287 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %285, i32 %286)
  %288 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %289 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %290 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %288, i32 %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* @AML_USB_PHY_CTRL_FSEL_MASK, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %13, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %295, label %300 [
    i32 129, label %296
    i32 128, label %296
  ]

296:                                              ; preds = %280, %280
  %297 = load i32, i32* @AML_USB_PHY_CTRL_FSEL_24M, align 4
  %298 = load i32, i32* %13, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %13, align 4
  br label %304

300:                                              ; preds = %280
  %301 = load i32, i32* @AML_USB_PHY_CTRL_FSEL_12M, align 4
  %302 = load i32, i32* %13, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %13, align 4
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* @AML_USB_PHY_CTRL_POR, align 4
  %306 = load i32, i32* %13, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %13, align 4
  %308 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %309 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %308, i32 %309, i32 %310)
  %312 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %313 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %314 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %312, i32 %313)
  %315 = call i32 @DELAY(i32 500)
  %316 = load i32, i32* @AML_USB_PHY_CTRL_POR, align 4
  %317 = xor i32 %316, -1
  %318 = load i32, i32* %13, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %13, align 4
  %320 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %321 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %320, i32 %321, i32 %322)
  %324 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %325 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %326 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %324, i32 %325)
  %327 = call i32 @DELAY(i32 1000)
  %328 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %329 = load i32, i32* @AML_USB_PHY_CTRL_REG, align 4
  %330 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %328, i32 %329)
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* @AML_USB_PHY_CTRL_CLK_DETECTED, align 4
  %333 = and i32 %331, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %304
  %336 = load i32, i32* %3, align 4
  %337 = call i32 @device_printf(i32 %336, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %304
  %339 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %340 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %369

343:                                              ; preds = %338
  %344 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %345 = load i32, i32* @AML_USB_PHY_ADP_BC_REG, align 4
  %346 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %344, i32 %345)
  store i32 %346, i32* %13, align 4
  %347 = load i32, i32* @AML_USB_PHY_ADP_BC_ACA_EN, align 4
  %348 = load i32, i32* %13, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %13, align 4
  %350 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %351 = load i32, i32* @AML_USB_PHY_ADP_BC_REG, align 4
  %352 = load i32, i32* %13, align 4
  %353 = call i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc* %350, i32 %351, i32 %352)
  %354 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %355 = load i32, i32* @AML_USB_PHY_ADP_BC_REG, align 4
  %356 = call i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc* %354, i32 %355)
  %357 = call i32 @DELAY(i32 50)
  %358 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %359 = load i32, i32* @AML_USB_PHY_ADP_BC_REG, align 4
  %360 = call i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc* %358, i32 %359)
  store i32 %360, i32* %13, align 4
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* @AML_USB_PHY_ADP_BC_ACA_FLOATING, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %343
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @device_printf(i32 %366, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %431

368:                                              ; preds = %343
  br label %369

369:                                              ; preds = %368, %338
  %370 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %371 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %430

375:                                              ; preds = %369
  store i32 0, i32* %6, align 4
  %376 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %377 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %381 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 0
  %383 = load i8, i8* %382, align 8
  %384 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %385 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 1
  %387 = load i8, i8* %386, align 1
  %388 = call i32 @PIN_ON_FLAG(i8 signext %387)
  %389 = call i64 @GPIO_PIN_SET(i32* %379, i8 signext %383, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %403, label %391

391:                                              ; preds = %375
  %392 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %393 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 2
  %395 = load i32*, i32** %394, align 8
  %396 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %397 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 0
  %399 = load i8, i8* %398, align 8
  %400 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %401 = call i64 @GPIO_PIN_SETFLAGS(i32* %395, i8 signext %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %391, %375
  store i32 1, i32* %6, align 4
  br label %404

404:                                              ; preds = %403, %391
  %405 = call i32 @DELAY(i32 30)
  %406 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %407 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %411 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  %413 = load i8, i8* %412, align 8
  %414 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %415 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 1
  %417 = load i8, i8* %416, align 1
  %418 = call i32 @PIN_OFF_FLAG(i8 signext %417)
  %419 = call i64 @GPIO_PIN_SET(i32* %409, i8 signext %413, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %404
  store i32 1, i32* %6, align 4
  br label %422

422:                                              ; preds = %421, %404
  %423 = call i32 @DELAY(i32 60000)
  %424 = load i32, i32* %6, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = load i32, i32* %3, align 4
  %428 = call i32 @device_printf(i32 %427, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %431

429:                                              ; preds = %422
  br label %430

430:                                              ; preds = %429, %369
  store i32 0, i32* %2, align 4
  br label %481

431:                                              ; preds = %426, %365, %235, %179
  %432 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %433 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  store i32 %434, i32* %12, align 4
  br label %435

435:                                              ; preds = %439, %431
  %436 = load i32, i32* %12, align 4
  %437 = add nsw i32 %436, -1
  store i32 %437, i32* %12, align 4
  %438 = icmp ne i32 %436, 0
  br i1 %438, label %439, label %466

439:                                              ; preds = %435
  %440 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %441 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %440, i32 0, i32 2
  %442 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %441, align 8
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %442, i64 %444
  %446 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %445, i32 0, i32 2
  %447 = load i32*, i32** %446, align 8
  %448 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %449 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %448, i32 0, i32 2
  %450 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %449, align 8
  %451 = load i32, i32* %12, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %450, i64 %452
  %454 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %453, i32 0, i32 0
  %455 = load i8, i8* %454, align 8
  %456 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %457 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %456, i32 0, i32 2
  %458 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %457, align 8
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %458, i64 %460
  %462 = getelementptr inbounds %struct.aml8726_usb_phy_gpio, %struct.aml8726_usb_phy_gpio* %461, i32 0, i32 1
  %463 = load i8, i8* %462, align 1
  %464 = call i32 @PIN_OFF_FLAG(i8 signext %463)
  %465 = call i64 @GPIO_PIN_SET(i32* %447, i8 signext %455, i32 %464)
  br label %435

466:                                              ; preds = %435
  %467 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %468 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %467, i32 0, i32 2
  %469 = load %struct.aml8726_usb_phy_gpio*, %struct.aml8726_usb_phy_gpio** %468, align 8
  %470 = load i32, i32* @M_DEVBUF, align 4
  %471 = call i32 @free(%struct.aml8726_usb_phy_gpio* %469, i32 %470)
  %472 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %473 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %472, i32 0, i32 2
  store %struct.aml8726_usb_phy_gpio* null, %struct.aml8726_usb_phy_gpio** %473, align 8
  %474 = load i32, i32* %3, align 4
  %475 = load i32, i32* @aml8726_usb_phy_spec, align 4
  %476 = load %struct.aml8726_usb_phy_softc*, %struct.aml8726_usb_phy_softc** %4, align 8
  %477 = getelementptr inbounds %struct.aml8726_usb_phy_softc, %struct.aml8726_usb_phy_softc* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @bus_release_resources(i32 %474, i32 %475, i32 %478)
  %480 = load i32, i32* @ENXIO, align 4
  store i32 %480, i32* %2, align 4
  br label %481

481:                                              ; preds = %466, %430, %26
  %482 = load i32, i32* %2, align 4
  ret i32 %482
}

declare dso_local %struct.aml8726_usb_phy_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i8* @OF_device_from_xref(i8 signext) #1

declare dso_local i64 @GPIO_PIN_SET(i32*, i8 signext, i32) #1

declare dso_local i32 @PIN_ON_FLAG(i8 signext) #1

declare dso_local i64 @GPIO_PIN_SETFLAGS(i32*, i8 signext, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_usb_phy_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_usb_phy_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PIN_OFF_FLAG(i8 signext) #1

declare dso_local i32 @free(%struct.aml8726_usb_phy_gpio*, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
