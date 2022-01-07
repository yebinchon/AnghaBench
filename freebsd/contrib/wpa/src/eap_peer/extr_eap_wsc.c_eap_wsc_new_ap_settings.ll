; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_new_ap_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_new_ap_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"new_ssid=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"EAP-WSC: Invalid new_ssid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"new_auth=\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"EAP-WSC: Missing new_auth\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@WPS_AUTH_OPEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"WPAPSK\00", align 1
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"WPA2PSK\00", align 1
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP-WSC: Unknown new_auth\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"new_encr=\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"EAP-WSC: Missing new_encr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"EAP-WSC: Unknown new_encr\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"new_key=\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"EAP-WSC: Invalid new_key\00", align 1
@WPS_ENCR_WEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_credential*, i8*)* @eap_wsc_new_ap_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_wsc_new_ap_settings(%struct.wps_credential* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_credential*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.wps_credential* %0, %struct.wps_credential** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %10 = call i32 @os_memset(%struct.wps_credential* %9, i32 0, i32 32)
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strstr(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %181

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 9
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @os_strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @os_strlen(i8* %24)
  store i64 %25, i64* %8, align 8
  br label %32

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %37, 8
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %42 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %44, 2
  %46 = call i64 @hexstr2bin(i8* %40, i32 %43, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39, %36, %32
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

51:                                               ; preds = %39
  %52 = load i64, i64* %8, align 8
  %53 = udiv i64 %52, 2
  %54 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %55 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @os_strstr(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

63:                                               ; preds = %51
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 9
  %66 = call i64 @os_strncmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @WPS_AUTH_OPEN, align 4
  %70 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %71 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %95

72:                                               ; preds = %63
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 9
  %75 = call i64 @os_strncmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %79 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %80 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  br label %94

81:                                               ; preds = %72
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 9
  %84 = call i64 @os_strncmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %88 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %89 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i8*, i8** %5, align 8
  %97 = call i8* @os_strstr(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i8* %97, i8** %6, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

103:                                              ; preds = %95
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 9
  %106 = call i64 @os_strncmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @WPS_ENCR_NONE, align 4
  %110 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %111 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %135

112:                                              ; preds = %103
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 9
  %115 = call i64 @os_strncmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %119 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %120 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %134

121:                                              ; preds = %112
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 9
  %124 = call i64 @os_strncmp(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @WPS_ENCR_AES, align 4
  %128 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %129 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 @wpa_printf(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %108
  %136 = load i8*, i8** %5, align 8
  %137 = call i8* @os_strstr(i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i8* %137, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %181

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  store i8* %143, i8** %6, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @os_strchr(i8* %144, i8 signext 32)
  store i8* %145, i8** %7, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i8*, i8** %6, align 8
  %150 = call i64 @os_strlen(i8* %149)
  store i64 %150, i64* %8, align 8
  br label %157

151:                                              ; preds = %141
  %152 = load i8*, i8** %7, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i64, i64* %8, align 8
  %159 = and i64 %158, 1
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %8, align 8
  %163 = icmp ugt i64 %162, 8
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** %6, align 8
  %166 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %167 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = udiv i64 %169, 2
  %171 = call i64 @hexstr2bin(i8* %165, i32 %168, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164, %161, %157
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = call i32 @wpa_printf(i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %181

176:                                              ; preds = %164
  %177 = load i64, i64* %8, align 8
  %178 = udiv i64 %177, 2
  %179 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %180 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %176, %173, %140, %130, %100, %90, %60, %48, %15
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
