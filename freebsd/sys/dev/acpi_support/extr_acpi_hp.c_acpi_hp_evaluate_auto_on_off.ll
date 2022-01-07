; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_evaluate_auto_on_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_evaluate_auto_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hp_softc = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@ACPI_HP_WMI_WIRELESS_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wireless command error %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Wireless status is %x\0A\00", align 1
@HP_MASK_WLAN_RADIO = common dso_local global i32 0, align 4
@HP_MASK_WLAN_ENABLED = common dso_local global i32 0, align 4
@HP_MASK_BLUETOOTH_RADIO = common dso_local global i32 0, align 4
@HP_MASK_BLUETOOTH_ENABLED = common dso_local global i32 0, align 4
@HP_MASK_WWAN_RADIO = common dso_local global i32 0, align 4
@HP_MASK_WWAN_ENABLED = common dso_local global i32 0, align 4
@HP_MASK_WLAN_ON_AIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"WLAN on air changed to %i (new_wlan_status is %i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@HP_MASK_BLUETOOTH_ON_AIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"BLUETOOTH on air changed to %i (new_bluetooth_status is %i)\0A\00", align 1
@HP_MASK_WWAN_ON_AIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"WWAN on air changed to %i (new_wwan_status is %i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_hp_softc*)* @acpi_hp_evaluate_auto_on_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_hp_evaluate_auto_on_off(%struct.acpi_hp_softc* %0) #0 {
  %2 = alloca %struct.acpi_hp_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_hp_softc* %0, %struct.acpi_hp_softc** %2, align 8
  %8 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %12 = call i32 @acpi_hp_exec_wmi_command(i32 %10, i32 %11, i32 0, i32 0, i32* %4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %296

21:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %22 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HP_MASK_WLAN_RADIO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HP_MASK_WLAN_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %52 = call i32 @acpi_hp_exec_wmi_command(i32 %50, i32 %51, i32 1, i32 256, i32* null)
  store i32 0, i32* %5, align 4
  br label %75

53:                                               ; preds = %42, %37, %32
  %54 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %55 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HP_MASK_WLAN_RADIO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @HP_MASK_WLAN_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %73 = call i32 @acpi_hp_exec_wmi_command(i32 %71, i32 %72, i32 1, i32 257, i32* null)
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %63, %58, %53
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %77 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @HP_MASK_BLUETOOTH_RADIO, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @HP_MASK_BLUETOOTH_ENABLED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %92 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %95 = call i32 @acpi_hp_exec_wmi_command(i32 %93, i32 %94, i32 1, i32 512, i32* null)
  store i32 0, i32* %6, align 4
  br label %118

96:                                               ; preds = %85, %80, %75
  %97 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %98 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @HP_MASK_BLUETOOTH_RADIO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @HP_MASK_BLUETOOTH_ENABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %113 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %116 = call i32 @acpi_hp_exec_wmi_command(i32 %114, i32 %115, i32 1, i32 514, i32* null)
  store i32 1, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %106, %101, %96
  br label %118

118:                                              ; preds = %117, %90
  %119 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %120 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @HP_MASK_WWAN_RADIO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @HP_MASK_WWAN_ENABLED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %135 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %138 = call i32 @acpi_hp_exec_wmi_command(i32 %136, i32 %137, i32 1, i32 1024, i32* null)
  store i32 0, i32* %7, align 4
  br label %161

139:                                              ; preds = %128, %123, %118
  %140 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %141 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @HP_MASK_WWAN_RADIO, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @HP_MASK_WWAN_ENABLED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %156 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ACPI_HP_WMI_WIRELESS_COMMAND, align 4
  %159 = call i32 @acpi_hp_exec_wmi_command(i32 %157, i32 %158, i32 1, i32 1028, i32* null)
  store i32 1, i32* %7, align 4
  br label %160

160:                                              ; preds = %154, %149, %144, %139
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %206

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @HP_MASK_WLAN_ON_AIR, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1, i32 0
  %172 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %173 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %205

176:                                              ; preds = %164
  %177 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %178 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 0, i32 1
  %183 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %184 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %186 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %176
  %190 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %191 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %194 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %176
  %199 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %200 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %201 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 192, %202
  %204 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %198, %164
  br label %206

206:                                              ; preds = %205, %161
  %207 = load i32, i32* %6, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %251

209:                                              ; preds = %206
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @HP_MASK_BLUETOOTH_ON_AIR, align 4
  %212 = and i32 %210, %211
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  %217 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %218 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %216, %219
  br i1 %220, label %221, label %250

221:                                              ; preds = %209
  %222 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %223 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 0, i32 1
  %228 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %229 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %231 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %221
  %235 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %236 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %239 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %6, align 4
  %242 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %237, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %221
  %244 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %245 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %246 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 208, %247
  %249 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %244, i32 %248)
  br label %250

250:                                              ; preds = %243, %209
  br label %251

251:                                              ; preds = %250, %206
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %296

254:                                              ; preds = %251
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* @HP_MASK_WWAN_ON_AIR, align 4
  %257 = and i32 %255, %256
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 1, i32 0
  %262 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %263 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %295

266:                                              ; preds = %254
  %267 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %268 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 0, i32 1
  %273 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %274 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %276 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %266
  %280 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %281 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %284 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %282, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %279, %266
  %289 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %290 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %2, align 8
  %291 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 224, %292
  %294 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %293)
  br label %295

295:                                              ; preds = %288, %254
  br label %296

296:                                              ; preds = %15, %295, %251
  ret void
}

declare dso_local i32 @acpi_hp_exec_wmi_command(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
