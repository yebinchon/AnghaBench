; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"AC and USB\00", align 1
@__const.axp2xx_start.pwr_name = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)], align 16
@bootverbose = common dso_local global i64 0, align 8
@AXP2XX_PSR = common dso_local global i32 0, align 4
@AXP2XX_PSR_ACIN = common dso_local global i32 0, align 4
@AXP2XX_PSR_ACIN_SHIFT = common dso_local global i32 0, align 4
@AXP2XX_PSR_VBUS = common dso_local global i32 0, align 4
@AXP2XX_PSR_VBUS_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Powered by %s\0A\00", align 1
@AXP2XX_IRQ1_ENABLE = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_AC_OVERVOLT = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_AC_DISCONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_AC_CONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_VBUS_OVERVOLT = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_VBUS_DISCONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_VBUS_CONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_ENABLE = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_DISCONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CHARGE_ACCT_ON = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CHARGE_ACCT_OFF = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CHARGING = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CHARGED = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_TEMP_OVER = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_TEMP_LOW = common dso_local global i32 0, align 4
@AXP2XX_IRQ3_ENABLE = common dso_local global i32 0, align 4
@AXP2XX_IRQ3_PEK_SHORT = common dso_local global i32 0, align 4
@AXP2XX_IRQ3_PEK_LONG = common dso_local global i32 0, align 4
@AXP2XX_IRQ4_ENABLE = common dso_local global i32 0, align 4
@AXP2XX_IRQ4_APS_LOW_2 = common dso_local global i32 0, align 4
@AXP2XX_IRQ5_ENABLE = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@axp2xx_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot enable sensor '%s'\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@axp2xx_sysctl = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@axp2xx_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"unable to register interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @axp2xx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp2xx_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.axp2xx_softc*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i8*]* @__const.axp2xx_start.pwr_name to i8*), i64 32, i1 false)
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.axp2xx_softc* @device_get_softc(i8* %12)
  store %struct.axp2xx_softc* %13, %struct.axp2xx_softc** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %16 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @AXP2XX_PSR, align 4
  %22 = call i32 @axp2xx_read(i8* %20, i32 %21, i32* %8, i32 1)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AXP2XX_PSR_ACIN, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @AXP2XX_PSR_ACIN_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AXP2XX_PSR_VBUS, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @AXP2XX_PSR_VBUS_SHIFT, align 4
  %32 = sub nsw i32 %31, 1
  %33 = ashr i32 %30, %32
  %34 = or i32 %27, %33
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i8*, ...) @device_printf(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %19, %1
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @AXP2XX_IRQ1_ENABLE, align 4
  %44 = load i32, i32* @AXP2XX_IRQ1_AC_OVERVOLT, align 4
  %45 = load i32, i32* @AXP2XX_IRQ1_AC_DISCONN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AXP2XX_IRQ1_AC_CONN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AXP2XX_IRQ1_VBUS_OVERVOLT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AXP2XX_IRQ1_VBUS_DISCONN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AXP2XX_IRQ1_VBUS_CONN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @axp2xx_write(i8* %42, i32 %43, i32 %54)
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @AXP2XX_IRQ2_ENABLE, align 4
  %58 = load i32, i32* @AXP2XX_IRQ2_BATT_CONN, align 4
  %59 = load i32, i32* @AXP2XX_IRQ2_BATT_DISCONN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGE_ACCT_ON, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGE_ACCT_OFF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGING, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGED, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AXP2XX_IRQ2_BATT_TEMP_OVER, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @AXP2XX_IRQ2_BATT_TEMP_LOW, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @axp2xx_write(i8* %56, i32 %57, i32 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* @AXP2XX_IRQ3_ENABLE, align 4
  %76 = load i32, i32* @AXP2XX_IRQ3_PEK_SHORT, align 4
  %77 = load i32, i32* @AXP2XX_IRQ3_PEK_LONG, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @axp2xx_write(i8* %74, i32 %75, i32 %78)
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* @AXP2XX_IRQ4_ENABLE, align 4
  %82 = load i32, i32* @AXP2XX_IRQ4_APS_LOW_2, align 4
  %83 = call i32 @axp2xx_write(i8* %80, i32 %81, i32 %82)
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* @AXP2XX_IRQ5_ENABLE, align 4
  %86 = call i32 @axp2xx_write(i8* %84, i32 %85, i32 0)
  %87 = load i32, i32* @shutdown_final, align 4
  %88 = load i32, i32* @axp2xx_shutdown, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %91 = call i32 @EVENTHANDLER_REGISTER(i32 %87, i32 %88, i8* %89, i32 %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %200, %41
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %95 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %203

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %101 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @axp2xx_read(i8* %99, i32 %107, i32* %7, i32 1)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %121

110:                                              ; preds = %98
  %111 = load i8*, i8** %3, align 8
  %112 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %113 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i8*, ...) @device_printf(i8* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %200

121:                                              ; preds = %98
  %122 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %123 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i8*, i8** %3, align 8
  %133 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %134 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %133, i32 0, i32 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @axp2xx_write(i8* %132, i32 %140, i32 %141)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %155

144:                                              ; preds = %121
  %145 = load i8*, i8** %3, align 8
  %146 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %147 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, i8*, ...) @device_printf(i8* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %200

155:                                              ; preds = %121
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @device_get_sysctl_ctx(i8* %156)
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @device_get_sysctl_tree(i8* %158)
  %160 = call i32 @SYSCTL_CHILDREN(i32 %159)
  %161 = load i32, i32* @OID_AUTO, align 4
  %162 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %163 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %162, i32 0, i32 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @CTLTYPE_INT, align 4
  %171 = load i32, i32* @CTLFLAG_RD, align 4
  %172 = or i32 %170, %171
  %173 = load i8*, i8** %3, align 8
  %174 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %175 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %174, i32 0, i32 4
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @axp2xx_sysctl, align 4
  %183 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %184 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %183, i32 0, i32 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %192 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %191, i32 0, i32 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SYSCTL_ADD_PROC(i32 %157, i32 %160, i32 %161, i32 %169, i32 %172, i8* %173, i32 %181, i32 %182, i32 %190, i32 %198)
  br label %200

200:                                              ; preds = %155, %144, %110
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %92

203:                                              ; preds = %92
  %204 = load i8*, i8** %3, align 8
  %205 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %206 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @INTR_TYPE_MISC, align 4
  %211 = load i32, i32* @INTR_MPSAFE, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @axp2xx_intr, align 4
  %214 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %215 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %216 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %215, i32 0, i32 2
  %217 = call i64 @bus_setup_intr(i8* %204, i32 %209, i32 %212, i32* null, i32 %213, %struct.axp2xx_softc* %214, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %203
  %220 = load i8*, i8** %3, align 8
  %221 = call i32 (i8*, i8*, ...) @device_printf(i8* %220, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %203
  %223 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %4, align 8
  %224 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %223, i32 0, i32 1
  %225 = call i32 @config_intrhook_disestablish(i32* %224)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.axp2xx_softc* @device_get_softc(i8*) #2

declare dso_local i32 @axp2xx_read(i8*, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i8*, i8*, ...) #2

declare dso_local i32 @axp2xx_write(i8*, i32, i32) #2

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i8*, i32) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @device_get_sysctl_ctx(i8*) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i8*) #2

declare dso_local i64 @bus_setup_intr(i8*, i32, i32, i32*, i32, %struct.axp2xx_softc*, i32*) #2

declare dso_local i32 @config_intrhook_disestablish(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
