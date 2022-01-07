; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64 }
%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CTRL_IFACE: GET_CAPABILITY '%s' %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eap\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pairwise\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"group_mgmt\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"key_mgmt\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"auth_alg\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"multibss\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"MULTIBSS-STA\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"CTRL_IFACE: Unknown GET_CAPABILITY field '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpa_supplicant_ctrl_iface_get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_get_capability(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_driver_capa, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [30 x i8], align 16
  %14 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @os_strlcpy(i8* %15, i8* %16, i32 30)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = icmp uge i64 %18, 30
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %167

21:                                               ; preds = %4
  %22 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %23 = call i8* @os_strchr(i8* %22, i8 signext 32)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %12, align 8
  store i8 0, i8* %27, align 1
  %29 = load i8*, i8** %12, align 8
  %30 = call i64 @os_strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %167

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %43)
  %45 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %46 = call i64 @os_strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @eap_get_names(i8* %49, i64 %50)
  store i32 %51, i32* %5, align 4
  br label %167

52:                                               ; preds = %42
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %54 = call i32 @wpa_drv_get_capa(%struct.wpa_supplicant* %53, %struct.wpa_driver_capa* %10)
  store i32 %54, i32* %11, align 4
  %55 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %56 = call i64 @os_strcmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @ctrl_iface_get_capability_pairwise(i32 %59, i8* %60, %struct.wpa_driver_capa* %10, i8* %61, i64 %62)
  store i32 %63, i32* %5, align 4
  br label %167

64:                                               ; preds = %52
  %65 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %66 = call i64 @os_strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @ctrl_iface_get_capability_group(i32 %69, i8* %70, %struct.wpa_driver_capa* %10, i8* %71, i64 %72)
  store i32 %73, i32* %5, align 4
  br label %167

74:                                               ; preds = %64
  %75 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %76 = call i64 @os_strcmp(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @ctrl_iface_get_capability_group_mgmt(i32 %79, i8* %80, %struct.wpa_driver_capa* %10, i8* %81, i64 %82)
  store i32 %83, i32* %5, align 4
  br label %167

84:                                               ; preds = %74
  %85 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %86 = call i64 @os_strcmp(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @ctrl_iface_get_capability_key_mgmt(i32 %89, i8* %90, %struct.wpa_driver_capa* %10, i8* %91, i64 %92)
  store i32 %93, i32* %5, align 4
  br label %167

94:                                               ; preds = %84
  %95 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %96 = call i64 @os_strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @ctrl_iface_get_capability_proto(i32 %99, i8* %100, %struct.wpa_driver_capa* %10, i8* %101, i64 %102)
  store i32 %103, i32* %5, align 4
  br label %167

104:                                              ; preds = %94
  %105 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %106 = call i64 @os_strcmp(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @ctrl_iface_get_capability_auth_alg(%struct.wpa_supplicant* %109, i32 %110, i8* %111, %struct.wpa_driver_capa* %10, i8* %112, i64 %113)
  store i32 %114, i32* %5, align 4
  br label %167

115:                                              ; preds = %104
  %116 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %117 = call i64 @os_strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @ctrl_iface_get_capability_modes(i32 %120, i8* %121, %struct.wpa_driver_capa* %10, i8* %122, i64 %123)
  store i32 %124, i32* %5, align 4
  br label %167

125:                                              ; preds = %115
  %126 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %127 = call i64 @os_strcmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @ctrl_iface_get_capability_channels(%struct.wpa_supplicant* %130, i8* %131, i64 %132)
  store i32 %133, i32* %5, align 4
  br label %167

134:                                              ; preds = %125
  %135 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %136 = call i64 @os_strcmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @ctrl_iface_get_capability_freq(%struct.wpa_supplicant* %139, i8* %140, i64 %141)
  store i32 %142, i32* %5, align 4
  br label %167

143:                                              ; preds = %134
  %144 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %145 = call i64 @os_strcmp(i8* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %149 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load i8*, i8** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @os_snprintf(i8* %153, i64 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 %155, i32* %11, align 4
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i64 @os_snprintf_error(i64 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  store i32 -1, i32* %5, align 4
  br label %167

161:                                              ; preds = %152
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %5, align 4
  br label %167

163:                                              ; preds = %147, %143
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %166 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8* %165)
  store i32 -1, i32* %5, align 4
  br label %167

167:                                              ; preds = %163, %161, %160, %138, %129, %119, %108, %98, %88, %78, %68, %58, %48, %32, %20
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @eap_get_names(i8*, i64) #1

declare dso_local i32 @wpa_drv_get_capa(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local i32 @ctrl_iface_get_capability_pairwise(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_group(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_group_mgmt(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_key_mgmt(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_proto(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_auth_alg(%struct.wpa_supplicant*, i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_modes(i32, i8*, %struct.wpa_driver_capa*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_channels(%struct.wpa_supplicant*, i8*, i64) #1

declare dso_local i32 @ctrl_iface_get_capability_freq(%struct.wpa_supplicant*, i8*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
