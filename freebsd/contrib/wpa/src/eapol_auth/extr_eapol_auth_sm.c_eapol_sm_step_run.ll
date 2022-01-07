; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_sm_step_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_sm_step_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i32, i32, i32, i32, i32, i32, i32, %struct.eapol_authenticator*, %struct.TYPE_4__*, i64, i64, i32 }
%struct.eapol_authenticator = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32*, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AUTH_PAE = common dso_local global i32 0, align 4
@BE_AUTH = common dso_local global i32 0, align 4
@REAUTH_TIMER = common dso_local global i32 0, align 4
@AUTH_KEY_TX = common dso_local global i32 0, align 4
@KEY_RX = common dso_local global i32 0, align 4
@CTRL_DIR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"EAPOL: aaaEapResp set, but no aaaEapRespData available\00", align 1
@EAPOL_AUTH_SM_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_state_machine*)* @eapol_sm_step_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_step_run(%struct.eapol_state_machine* %0) #0 {
  %2 = alloca %struct.eapol_state_machine*, align 8
  %3 = alloca %struct.eapol_authenticator*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eapol_state_machine* %0, %struct.eapol_state_machine** %2, align 8
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %15 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %14, i32 0, i32 7
  %16 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %15, align 8
  store %struct.eapol_authenticator* %16, %struct.eapol_authenticator** %3, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  store i32 100, i32* %12, align 4
  %21 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %22 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @os_memcpy(i32* %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %169, %146, %1
  %27 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %28 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %31 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %34 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %37 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %40 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %43 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @AUTH_PAE, align 4
  %46 = call i32 @SM_STEP_RUN(i32 %45)
  %47 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %48 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %26
  %52 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %53 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %52, i32* %20)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %26
  %56 = load i32, i32* @BE_AUTH, align 4
  %57 = call i32 @SM_STEP_RUN(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %60 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %65 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %64, i32* %20)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @REAUTH_TIMER, align 4
  %69 = call i32 @SM_STEP_RUN(i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %72 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %77 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %76, i32* %20)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %70
  %80 = load i32, i32* @AUTH_KEY_TX, align 4
  %81 = call i32 @SM_STEP_RUN(i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %84 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %89 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %88, i32* %20)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %82
  %92 = load i32, i32* @KEY_RX, align 4
  %93 = call i32 @SM_STEP_RUN(i32 %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %96 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %101 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %100, i32* %20)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %94
  %104 = load i32, i32* @CTRL_DIR, align 4
  %105 = call i32 @SM_STEP_RUN(i32 %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %109 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %142, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %115 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %142, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %121 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %142, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %127 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %133 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %139 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %136, %130, %124, %118, %112, %106
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %12, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %26

147:                                              ; preds = %142
  %148 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %149 = call i32 @eapol_auth_step(%struct.eapol_state_machine* %148)
  store i32 1, i32* %13, align 4
  br label %248

150:                                              ; preds = %136
  %151 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %152 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %151, i32* %20)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %225

154:                                              ; preds = %150
  %155 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %156 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %225

159:                                              ; preds = %154
  %160 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %161 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @eap_server_sm_step(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %12, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %26

170:                                              ; preds = %165
  %171 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %172 = call i32 @eapol_auth_step(%struct.eapol_state_machine* %171)
  store i32 1, i32* %13, align 4
  br label %248

173:                                              ; preds = %159
  %174 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %175 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %174, i32 0, i32 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %173
  %181 = load i64, i64* @FALSE, align 8
  %182 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %183 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %182, i32 0, i32 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i64 %181, i64* %185, align 8
  %186 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %187 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %186, i32 0, i32 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 @wpa_printf(i32 %193, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %248

195:                                              ; preds = %180
  %196 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %197 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %196, i32 0, i32 7
  %198 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %197, align 8
  %199 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %200, align 8
  %202 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %203 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %202, i32 0, i32 7
  %204 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %203, align 8
  %205 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %209 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %212 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %211, i32 0, i32 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @wpabuf_head(i32* %215)
  %217 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %218 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %217, i32 0, i32 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @wpabuf_len(i32* %221)
  %223 = call i32 %201(i32 %207, i32 %210, i32 %216, i32 %222)
  br label %224

224:                                              ; preds = %195, %173
  br label %225

225:                                              ; preds = %224, %154, %150
  %226 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %3, align 8
  %227 = call i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator* %226, i32* %20)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %247

229:                                              ; preds = %225
  %230 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %231 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %230, i32 0, i32 7
  %232 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %231, align 8
  %233 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %234, align 8
  %236 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %237 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %236, i32 0, i32 7
  %238 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %237, align 8
  %239 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %2, align 8
  %243 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @EAPOL_AUTH_SM_CHANGE, align 4
  %246 = call i32 %235(i32 %241, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %229, %225
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %247, %192, %170, %147
  %249 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %13, align 4
  switch i32 %250, label %252 [
    i32 0, label %251
    i32 1, label %251
  ]

251:                                              ; preds = %248, %248
  ret void

252:                                              ; preds = %248
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i32 @SM_STEP_RUN(i32) #2

declare dso_local i64 @eapol_sm_sta_entry_alive(%struct.eapol_authenticator*, i32*) #2

declare dso_local i32 @eapol_auth_step(%struct.eapol_state_machine*) #2

declare dso_local i64 @eap_server_sm_step(i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpabuf_head(i32*) #2

declare dso_local i32 @wpabuf_len(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
