; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_Policy_getDecision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_Policy_getDecision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64, i32, i32*, i32, %struct.TYPE_6__*, i8*, i8*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 (%struct.eap_sm*, i32)*, i64 (%struct.eap_sm*, i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP: getDecision: -> PASSTHROUGH\00", align 1
@DECISION_PASSTHROUGH = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"EAP: getDecision: method succeeded -> SUCCESS\00", align 1
@TRUE = common dso_local global i8* null, align 8
@DECISION_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP: getDecision: method failed -> FAILURE\00", align 1
@DECISION_FAILURE = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"EAP: getDecision: user not found from database -> FAILURE\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"EAP: getDecision: stop identity request loop -> FAILURE\00", align 1
@FALSE = common dso_local global i8* null, align 8
@EAP_MAX_METHODS = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"EAP: getDecision: another method available -> CONTINUE\00", align 1
@DECISION_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"EAP: getDecision: send EAP-Initiate/Re-auth-Start\00", align 1
@DECISION_INITIATE_REAUTH_START = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"EAP: getDecision: no identity known yet -> CONTINUE\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"EAP: getDecision: no more methods available -> FAILURE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*)* @eap_sm_Policy_getDecision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sm_Policy_getDecision(%struct.eap_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  %5 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %6 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @DECISION_PASSTHROUGH, align 4
  store i32 %22, i32* %2, align 4
  br label %280

23:                                               ; preds = %14, %9, %1
  %24 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %25 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %24, i32 0, i32 10
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %30 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 10
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64 (%struct.eap_sm*, i32)*, i64 (%struct.eap_sm*, i32)** %38, align 8
  %40 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %41 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %42 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i64 %39(%struct.eap_sm* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %51 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @DECISION_SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %280

53:                                               ; preds = %34, %28, %23
  %54 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 10
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 10
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64 (%struct.eap_sm*, i32)*, i64 (%struct.eap_sm*, i32)** %62, align 8
  %64 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %65 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %66 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i64 %63(%struct.eap_sm* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %58
  %71 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %72 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %71, i32 0, i32 10
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64 (%struct.eap_sm*, i32)*, i64 (%struct.eap_sm*, i32)** %74, align 8
  %76 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %77 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %78 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i64 %75(%struct.eap_sm* %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i8*, i8** @TRUE, align 8
  %86 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %87 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @DECISION_FAILURE, align 4
  store i32 %88, i32* %2, align 4
  br label %280

89:                                               ; preds = %70, %58, %53
  %90 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %91 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %90, i32 0, i32 5
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = icmp eq %struct.TYPE_6__* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %96 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %95, i32 0, i32 7
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %198

99:                                               ; preds = %94, %89
  %100 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %101 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %198

104:                                              ; preds = %99
  %105 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 6
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %198, label %109

109:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  %110 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %111 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %110, i32 0, i32 5
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = icmp ne %struct.TYPE_6__* %112, null
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %116 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %114
  %121 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %122 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %121, i32 0, i32 5
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %120
  %132 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %133 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %132, i32 0, i32 5
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %131, %120, %114, %109
  %144 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %145 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %146 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %149 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @eap_user_get(%struct.eap_sm* %144, i32* %147, i32 %150, i32 0)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = call i32 @wpa_printf(i32 %154, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* @DECISION_FAILURE, align 4
  store i32 %156, i32* %2, align 4
  br label %280

157:                                              ; preds = %143
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %157
  %161 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %162 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %161, i32 0, i32 5
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = icmp ne %struct.TYPE_6__* %163, null
  br i1 %164, label %165, label %194

165:                                              ; preds = %160
  %166 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %167 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %166, i32 0, i32 5
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %165
  %177 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %178 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %177, i32 0, i32 5
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %176
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 @wpa_printf(i32 %188, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %190 = load i8*, i8** @TRUE, align 8
  %191 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %192 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %191, i32 0, i32 7
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* @DECISION_FAILURE, align 4
  store i32 %193, i32* %2, align 4
  br label %280

194:                                              ; preds = %176, %165, %160, %157
  %195 = load i8*, i8** @FALSE, align 8
  %196 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %197 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %196, i32 0, i32 7
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %104, %99, %94
  %199 = load i8*, i8** @FALSE, align 8
  %200 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %201 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  %202 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %203 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %202, i32 0, i32 5
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = icmp ne %struct.TYPE_6__* %204, null
  br i1 %205, label %206, label %244

206:                                              ; preds = %198
  %207 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %208 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @EAP_MAX_METHODS, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %244

212:                                              ; preds = %206
  %213 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %214 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %213, i32 0, i32 5
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %219 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %240, label %226

226:                                              ; preds = %212
  %227 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %228 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %227, i32 0, i32 5
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %233 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @EAP_TYPE_NONE, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %226, %212
  %241 = load i32, i32* @MSG_DEBUG, align 4
  %242 = call i32 @wpa_printf(i32 %241, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %243 = load i32, i32* @DECISION_CONTINUE, align 4
  store i32 %243, i32* %2, align 4
  br label %280

244:                                              ; preds = %226, %206, %198
  %245 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %246 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %262, label %249

249:                                              ; preds = %244
  %250 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %251 = call i64 @eap_get_erp_send_reauth_start(%struct.eap_sm* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %255 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = load i32, i32* @MSG_DEBUG, align 4
  %260 = call i32 @wpa_printf(i32 %259, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %261 = load i32, i32* @DECISION_INITIATE_REAUTH_START, align 4
  store i32 %261, i32* %2, align 4
  br label %280

262:                                              ; preds = %253, %249, %244
  %263 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %264 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %269 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %276

272:                                              ; preds = %267, %262
  %273 = load i32, i32* @MSG_DEBUG, align 4
  %274 = call i32 @wpa_printf(i32 %273, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %275 = load i32, i32* @DECISION_CONTINUE, align 4
  store i32 %275, i32* %2, align 4
  br label %280

276:                                              ; preds = %267
  %277 = load i32, i32* @MSG_DEBUG, align 4
  %278 = call i32 @wpa_printf(i32 %277, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %279 = load i32, i32* @DECISION_FAILURE, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %276, %272, %258, %240, %187, %153, %82, %46, %19
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i32, i32) #1

declare dso_local i64 @eap_get_erp_send_reauth_start(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
