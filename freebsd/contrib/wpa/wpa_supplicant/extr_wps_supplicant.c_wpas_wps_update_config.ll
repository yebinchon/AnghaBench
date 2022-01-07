; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, %struct.wps_context* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wps_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CFG_CHANGED_CONFIG_METHODS = common dso_local global i32 0, align 4
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WPS: Both Label and Display config methods are not allowed at the same time\00", align 1
@CFG_CHANGED_DEVICE_TYPE = common dso_local global i32 0, align 4
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@CFG_CHANGED_SEC_DEVICE_TYPE = common dso_local global i32 0, align 4
@CFG_CHANGED_VENDOR_EXTENSION = common dso_local global i32 0, align 4
@CFG_CHANGED_OS_VERSION = common dso_local global i32 0, align 4
@CFG_CHANGED_UUID = common dso_local global i32 0, align 4
@CFG_CHANGED_DEVICE_NAME = common dso_local global i32 0, align 4
@CFG_CHANGED_WPS_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_wps_update_config(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wps_context*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 1
  %6 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  store %struct.wps_context* %6, %struct.wps_context** %3, align 8
  %7 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %8 = icmp eq %struct.wps_context* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %213

10:                                               ; preds = %1
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CFG_CHANGED_CONFIG_METHODS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %10
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wps_config_methods_str2bin(i32 %24)
  %26 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %27 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %29 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %32 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %36 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %19
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @WPS_CONFIG_LABEL, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %45 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %39, %19
  br label %49

49:                                               ; preds = %48, %10
  %50 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %51 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wps_fix_config_methods(i32 %52)
  %54 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %55 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %57 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %60 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CFG_CHANGED_DEVICE_TYPE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %49
  %71 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %72 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %81 = call i32 @os_memcpy(i32 %74, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %70, %49
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CFG_CHANGED_SEC_DEVICE_TYPE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %82
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %98 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %101 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %105 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %110 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %114 = mul nsw i32 %112, %113
  %115 = call i32 @os_memcpy(i32 %103, i32 %108, i32 %114)
  br label %116

116:                                              ; preds = %91, %82
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CFG_CHANGED_VENDOR_EXTENSION, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %127 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %128 = call i32 @wpas_wps_set_vendor_ext_m1(%struct.wpa_supplicant* %126, %struct.wps_context* %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CFG_CHANGED_OS_VERSION, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %129
  %139 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %140 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @WPA_GET_BE32(i32 %143)
  %145 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %146 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %138, %129
  %149 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %150 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CFG_CHANGED_UUID, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %159 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %160 = call i32 @wpas_wps_set_uuid(%struct.wpa_supplicant* %158, %struct.wps_context* %159)
  br label %161

161:                                              ; preds = %157, %148
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %163 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CFG_CHANGED_DEVICE_NAME, align 4
  %168 = load i32, i32* @CFG_CHANGED_WPS_STRING, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %161
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %174 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %179 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 6
  store i32 %177, i32* %180, align 4
  %181 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %182 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %187 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  store i32 %185, i32* %188, align 4
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %190 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %195 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  store i32 %193, i32* %196, align 4
  %197 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %198 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %203 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i32 %201, i32* %204, align 4
  %205 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %206 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %211 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 4
  br label %213

213:                                              ; preds = %9, %172, %161
  ret void
}

declare dso_local i32 @wps_config_methods_str2bin(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_fix_config_methods(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpas_wps_set_vendor_ext_m1(%struct.wpa_supplicant*, %struct.wps_context*) #1

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @wpas_wps_set_uuid(%struct.wpa_supplicant*, %struct.wps_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
