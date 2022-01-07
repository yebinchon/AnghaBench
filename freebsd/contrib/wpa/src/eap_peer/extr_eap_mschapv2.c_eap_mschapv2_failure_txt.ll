; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_failure_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_failure_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32, i32, i8*, i32 }
%struct.eap_peer_config = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"E=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-MSCHAPV2: error %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"R=\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-MSCHAPV2: retry is %sallowed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"C=\00", align 1
@PASSWD_CHANGE_CHAL_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"EAP-MSCHAPV2: invalid failure challenge\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"EAP-MSCHAPV2: failure challenge\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"EAP-MSCHAPV2: invalid failure challenge len %d\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"EAP-MSCHAPV2: required challenge field was not present in failure message\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"V=\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"EAP-MSCHAPV2: password changing protocol version %d\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"M=\00", align 1
@ERROR_AUTHENTICATION_FAILURE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"mschapv2_retry=0\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"EAP-MSCHAPV2: mark password retry disabled based on local configuration\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [64 x i8] c"EAP-MSCHAPV2: failure message: '%s' (retry %sallowed, error %d)\00", align 1
@ERROR_PASSWD_EXPIRED = common dso_local global i8* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [58 x i8] c"EAP-MSCHAPV2: Password expired - password change required\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_mschapv2_data*, i8*)* @eap_mschapv2_failure_txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_mschapv2_failure_txt(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, i8* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_mschapv2_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_peer_config*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %13 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %12)
  store %struct.eap_peer_config* %13, %struct.eap_peer_config** %10, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @os_strncmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @atoi(i8* %24)
  %26 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %27 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %30 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @os_strchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %37, %21
  br label %41

41:                                               ; preds = %40, %17, %3
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @os_strncmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @atoi(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @os_strchr(i8* %60, i8 signext 32)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %64, %48
  br label %68

68:                                               ; preds = %67, %44, %41
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %123

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @os_strncmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @os_strchr(i8* %78, i8 signext 32)
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @PASSWD_CHANGE_CHAL_LEN, align 4
  %87 = mul nsw i32 %86, 2
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %75
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %92 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PASSWD_CHANGE_CHAL_LEN, align 4
  %95 = call i64 @hexstr2bin(i8* %90, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %109

100:                                              ; preds = %89
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %103 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PASSWD_CHANGE_CHAL_LEN, align 4
  %106 = call i32 @wpa_hexdump(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %108 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %100, %97
  br label %114

110:                                              ; preds = %75
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* @os_strchr(i8* %115, i8 signext 32)
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  br label %122

122:                                              ; preds = %119, %114
  br label %126

123:                                              ; preds = %71, %68
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %122
  %127 = load i8*, i8** %7, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load i8*, i8** %7, align 8
  %131 = call i64 @os_strncmp(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  store i8* %135, i8** %7, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = call i8* @atoi(i8* %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %140 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %143 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %7, align 8
  %147 = call i8* @os_strchr(i8* %146, i8 signext 32)
  store i8* %147, i8** %7, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %133
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %7, align 8
  br label %153

153:                                              ; preds = %150, %133
  br label %154

154:                                              ; preds = %153, %129, %126
  %155 = load i8*, i8** %7, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i8*, i8** %7, align 8
  %159 = call i64 @os_strncmp(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8* %163, i8** %7, align 8
  %164 = load i8*, i8** %7, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %161, %157, %154
  %166 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %167 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** @ERROR_AUTHENTICATION_FAILURE, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %176 = icmp ne %struct.eap_peer_config* %175, null
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %179 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %184 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @os_strstr(i64 %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @MSG_DEBUG, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %188, %182, %177, %174, %171, %165
  %192 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %193 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MSG_WARNING, align 4
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 1
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %201 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %202 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %194, i32 %195, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i8* %196, i8* %200, i8* %203)
  %205 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %206 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** @ERROR_PASSWD_EXPIRED, align 8
  %209 = icmp eq i8* %207, %208
  br i1 %209, label %210, label %232

210:                                              ; preds = %191
  %211 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %212 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 3
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %217 = icmp ne %struct.eap_peer_config* %216, null
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %220 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %225 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MSG_INFO, align 4
  %228 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %226, i32 %227, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0))
  %229 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %230 = call i32 @eap_sm_request_new_password(%struct.eap_sm* %229)
  br label %231

231:                                              ; preds = %223, %218
  br label %259

232:                                              ; preds = %215, %210, %191
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %251

235:                                              ; preds = %232
  %236 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %237 = icmp ne %struct.eap_peer_config* %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %240 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %238
  %244 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %245 = call i32 @eap_sm_request_identity(%struct.eap_sm* %244)
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %248 = call i32 @eap_sm_request_password(%struct.eap_sm* %247)
  %249 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %250 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  br label %258

251:                                              ; preds = %235, %232
  %252 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %253 = icmp ne %struct.eap_peer_config* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %256 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %255, i32 0, i32 0
  store i32 0, i32* %256, align 8
  br label %257

257:                                              ; preds = %254, %251
  br label %258

258:                                              ; preds = %257, %246
  br label %259

259:                                              ; preds = %258, %231
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %260, 1
  %262 = zext i1 %261 to i32
  ret i32 %262
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @os_strstr(i64, i8*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #1

declare dso_local i32 @eap_sm_request_new_password(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_password(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
