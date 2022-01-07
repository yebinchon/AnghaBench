; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_uni_sig_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_uni_sig_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.call = type { i64, %struct.uni*, i32, i64, i32 }
%struct.uni = type { i32, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.uni*, i32, i32, i32, %struct.uni_msg*)* }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@UNI_FAC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Signal %d outside of range to Call-Control\00", align 1
@UNI_FAC_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Signal %s in state %s of call %u/%s; cookie %u\00", align 1
@call_sigs = common dso_local global i32* null, align 8
@callstates = common dso_local global %struct.TYPE_15__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mine\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"his\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"link-establish-error.indication in cs=%s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"link-establish.indication in cs=%s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"link-establish.confirm in cs=%s\00", align 1
@UNI_CAUSE_MSG_INCOMP = common dso_local global i32 0, align 4
@UNIPROTO_UNI40N = common dso_local global i32 0, align 4
@CALL_LEAF = common dso_local global i32 0, align 4
@CALL_ROOT = common dso_local global i32 0, align 4
@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"setup.request in cs=%s\00", align 1
@UNIAPI_ERROR_BAD_CALLSTATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"setup.response in cs=%s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"setup_compl.request in cs=%s\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"proceeding.request in cs=%s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"alerting.request in cs=%s\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"release.request in cs=%s\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"release.response in cs=%s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"add-party.request in cs=%s\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"party-alerting.request in cs=%s\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"add-party-ack.request in cs=%s\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"add-party-rej.request in cs=%s\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"drop-party.request in cs=%s\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"drop-party-ack.request in cs=%s\00", align 1
@UNIAPI_OK = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U0 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"T301 in cs=%s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"T303 in cs=%s\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"T308 in cs=%s\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"T310 in cs=%s\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"T313 in cs=%s\00", align 1
@UNIPROTO_UNI40U = common dso_local global i32 0, align 4
@UNIAPI_PARTY_DESTROYED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_sig_call(%struct.call* %0, i32 %1, i32 %2, %struct.uni_msg* %3, %struct.uni_all* %4) #0 {
  %6 = alloca %struct.call*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_msg*, align 8
  %10 = alloca %struct.uni_all*, align 8
  %11 = alloca %struct.uni*, align 8
  store %struct.call* %0, %struct.call** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.uni_msg* %3, %struct.uni_msg** %9, align 8
  store %struct.uni_all* %4, %struct.uni_all** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp uge i32 %12, 160
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load %struct.call*, %struct.call** %6, align 8
  %16 = getelementptr inbounds %struct.call, %struct.call* %15, i32 0, i32 1
  %17 = load %struct.uni*, %struct.uni** %16, align 8
  %18 = load i32, i32* @UNI_FAC_ERR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %17, i32 %18, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %22 = icmp ne %struct.uni_msg* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %25 = call i32 @uni_msg_destroy(%struct.uni_msg* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %28 = icmp ne %struct.uni_all* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %31 = call i32 @UNI_FREE(%struct.uni_all* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %1581

33:                                               ; preds = %5
  %34 = load %struct.call*, %struct.call** %6, align 8
  %35 = getelementptr inbounds %struct.call, %struct.call* %34, i32 0, i32 1
  %36 = load %struct.uni*, %struct.uni** %35, align 8
  %37 = load i32, i32* @UNI_FAC_CALL, align 4
  %38 = load i32*, i32** @call_sigs, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %44 = load %struct.call*, %struct.call** %6, align 8
  %45 = getelementptr inbounds %struct.call, %struct.call* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.call*, %struct.call** %6, align 8
  %51 = getelementptr inbounds %struct.call, %struct.call* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.call*, %struct.call** %6, align 8
  %54 = getelementptr inbounds %struct.call, %struct.call* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %36, i32 %37, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %49, i32 %52, i8* %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %1575 [
    i32 156, label %62
    i32 159, label %79
    i32 157, label %105
    i32 158, label %130
    i32 128, label %156
    i32 141, label %161
    i32 170, label %201
    i32 173, label %237
    i32 168, label %278
    i32 167, label %334
    i32 149, label %359
    i32 148, label %384
    i32 155, label %389
    i32 137, label %394
    i32 136, label %424
    i32 180, label %429
    i32 153, label %473
    i32 179, label %510
    i32 177, label %547
    i32 166, label %584
    i32 165, label %651
    i32 169, label %705
    i32 139, label %710
    i32 138, label %753
    i32 140, label %812
    i32 150, label %841
    i32 172, label %880
    i32 147, label %929
    i32 146, label %963
    i32 154, label %1007
    i32 135, label %1012
    i32 174, label %1017
    i32 152, label %1061
    i32 178, label %1110
    i32 175, label %1144
    i32 161, label %1193
    i32 163, label %1242
    i32 181, label %1291
    i32 134, label %1302
    i32 133, label %1328
    i32 132, label %1354
    i32 131, label %1380
    i32 130, label %1406
    i32 129, label %1427
    i32 171, label %1430
    i32 162, label %1433
    i32 164, label %1450
    i32 176, label %1467
    i32 144, label %1484
    i32 143, label %1515
    i32 145, label %1546
    i32 142, label %1550
    i32 151, label %1554
    i32 160, label %1574
  ]

62:                                               ; preds = %33
  %63 = load %struct.call*, %struct.call** %6, align 8
  %64 = getelementptr inbounds %struct.call, %struct.call* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 190
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.call*, %struct.call** %6, align 8
  %69 = getelementptr inbounds %struct.call, %struct.call* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 201
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %62
  %73 = load %struct.call*, %struct.call** %6, align 8
  %74 = call i32 @un10_link_release_indication(%struct.call* %73)
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.call*, %struct.call** %6, align 8
  %77 = call i32 @unx_link_release_indication(%struct.call* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %1575

79:                                               ; preds = %33
  %80 = load %struct.call*, %struct.call** %6, align 8
  %81 = getelementptr inbounds %struct.call, %struct.call* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 190
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load %struct.call*, %struct.call** %6, align 8
  %86 = getelementptr inbounds %struct.call, %struct.call* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 201
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.call*, %struct.call** %6, align 8
  %91 = getelementptr inbounds %struct.call, %struct.call* %90, i32 0, i32 1
  %92 = load %struct.uni*, %struct.uni** %91, align 8
  %93 = load i32, i32* @UNI_FAC_ERR, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %95 = load %struct.call*, %struct.call** %6, align 8
  %96 = getelementptr inbounds %struct.call, %struct.call* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %92, i32 %93, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %1575

102:                                              ; preds = %84, %79
  %103 = load %struct.call*, %struct.call** %6, align 8
  %104 = call i32 @un10_link_establish_error_indication(%struct.call* %103)
  br label %1575

105:                                              ; preds = %33
  %106 = load %struct.call*, %struct.call** %6, align 8
  %107 = getelementptr inbounds %struct.call, %struct.call* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  switch i64 %108, label %116 [
    i64 191, label %109
    i64 202, label %109
    i64 187, label %109
    i64 198, label %109
    i64 186, label %109
    i64 197, label %109
    i64 185, label %109
    i64 196, label %109
    i64 184, label %109
    i64 195, label %109
    i64 183, label %109
    i64 194, label %109
    i64 182, label %109
    i64 193, label %109
    i64 190, label %112
    i64 201, label %112
    i64 189, label %115
    i64 200, label %115
    i64 188, label %115
    i64 199, label %115
  ]

109:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  %110 = load %struct.call*, %struct.call** %6, align 8
  %111 = call i32 @unx_link_establish_indication(%struct.call* %110)
  br label %129

112:                                              ; preds = %105, %105
  %113 = load %struct.call*, %struct.call** %6, align 8
  %114 = call i32 @un10_link_establish_indication(%struct.call* %113)
  br label %129

115:                                              ; preds = %105, %105, %105, %105
  br label %129

116:                                              ; preds = %105
  %117 = load %struct.call*, %struct.call** %6, align 8
  %118 = getelementptr inbounds %struct.call, %struct.call* %117, i32 0, i32 1
  %119 = load %struct.uni*, %struct.uni** %118, align 8
  %120 = load i32, i32* @UNI_FAC_ERR, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %122 = load %struct.call*, %struct.call** %6, align 8
  %123 = getelementptr inbounds %struct.call, %struct.call* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %119, i32 %120, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %116, %115, %112, %109
  br label %1575

130:                                              ; preds = %33
  %131 = load %struct.call*, %struct.call** %6, align 8
  %132 = getelementptr inbounds %struct.call, %struct.call* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 190
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.call*, %struct.call** %6, align 8
  %137 = getelementptr inbounds %struct.call, %struct.call* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 201
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.call*, %struct.call** %6, align 8
  %142 = getelementptr inbounds %struct.call, %struct.call* %141, i32 0, i32 1
  %143 = load %struct.uni*, %struct.uni** %142, align 8
  %144 = load i32, i32* @UNI_FAC_ERR, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %146 = load %struct.call*, %struct.call** %6, align 8
  %147 = getelementptr inbounds %struct.call, %struct.call* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %143, i32 %144, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  br label %1575

153:                                              ; preds = %135, %130
  %154 = load %struct.call*, %struct.call** %6, align 8
  %155 = call i32 @un10_link_establish_confirm(%struct.call* %154)
  br label %1575

156:                                              ; preds = %33
  %157 = load %struct.call*, %struct.call** %6, align 8
  %158 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %159 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %160 = call i32 @unx_unknown(%struct.call* %157, %struct.uni_msg* %158, %struct.uni_all* %159)
  br label %1575

161:                                              ; preds = %33
  %162 = load %struct.call*, %struct.call** %6, align 8
  %163 = getelementptr inbounds %struct.call, %struct.call* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 192
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %168 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %169 = load %struct.call*, %struct.call** %6, align 8
  %170 = getelementptr inbounds %struct.call, %struct.call* %169, i32 0, i32 1
  %171 = load %struct.uni*, %struct.uni** %170, align 8
  %172 = getelementptr inbounds %struct.uni, %struct.uni* %171, i32 0, i32 4
  %173 = call i32 @uni_decode_body(%struct.uni_msg* %167, %struct.uni_all* %168, i32* %172)
  %174 = load %struct.call*, %struct.call** %6, align 8
  %175 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %176 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %177 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %178 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = call i32 @uni_bad_message(%struct.call* %174, %struct.uni_all* %175, i32 %176, i32* %180, i32 -1)
  br label %1576

182:                                              ; preds = %161
  %183 = load %struct.call*, %struct.call** %6, align 8
  %184 = getelementptr inbounds %struct.call, %struct.call* %183, i32 0, i32 1
  %185 = load %struct.uni*, %struct.uni** %184, align 8
  %186 = getelementptr inbounds %struct.uni, %struct.uni* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @UNIPROTO_UNI40N, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = load %struct.call*, %struct.call** %6, align 8
  %192 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %193 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %194 = call i32 @un0_setup(%struct.call* %191, %struct.uni_msg* %192, %struct.uni_all* %193, i32 202)
  br label %200

195:                                              ; preds = %182
  %196 = load %struct.call*, %struct.call** %6, align 8
  %197 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %198 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %199 = call i32 @un0_setup(%struct.call* %196, %struct.uni_msg* %197, %struct.uni_all* %198, i32 185)
  br label %200

200:                                              ; preds = %195, %190
  br label %1575

201:                                              ; preds = %33
  %202 = load %struct.call*, %struct.call** %6, align 8
  %203 = getelementptr inbounds %struct.call, %struct.call* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 191
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.call*, %struct.call** %6, align 8
  %208 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %209 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %210 = call i32 @u1n6_call_proc(%struct.call* %207, %struct.uni_msg* %208, %struct.uni_all* %209, i32 187)
  br label %1575

211:                                              ; preds = %201
  %212 = load %struct.call*, %struct.call** %6, align 8
  %213 = getelementptr inbounds %struct.call, %struct.call* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 196
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.call*, %struct.call** %6, align 8
  %218 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %219 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %220 = call i32 @u1n6_call_proc(%struct.call* %217, %struct.uni_msg* %218, %struct.uni_all* %219, i32 193)
  br label %1575

221:                                              ; preds = %211
  %222 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %223 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %224 = load %struct.call*, %struct.call** %6, align 8
  %225 = getelementptr inbounds %struct.call, %struct.call* %224, i32 0, i32 1
  %226 = load %struct.uni*, %struct.uni** %225, align 8
  %227 = getelementptr inbounds %struct.uni, %struct.uni* %226, i32 0, i32 4
  %228 = call i32 @uni_decode_body(%struct.uni_msg* %222, %struct.uni_all* %223, i32* %227)
  %229 = load %struct.call*, %struct.call** %6, align 8
  %230 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %231 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %232 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %233 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = call i32 @uni_bad_message(%struct.call* %229, %struct.uni_all* %230, i32 %231, i32* %235, i32 -1)
  br label %1576

237:                                              ; preds = %33
  %238 = load %struct.call*, %struct.call** %6, align 8
  %239 = getelementptr inbounds %struct.call, %struct.call* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 191
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load %struct.call*, %struct.call** %6, align 8
  %244 = getelementptr inbounds %struct.call, %struct.call* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 187
  br i1 %246, label %247, label %252

247:                                              ; preds = %242, %237
  %248 = load %struct.call*, %struct.call** %6, align 8
  %249 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %250 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %251 = call i32 @unx_alerting(%struct.call* %248, %struct.uni_msg* %249, %struct.uni_all* %250, i32 186)
  br label %1575

252:                                              ; preds = %242
  %253 = load %struct.call*, %struct.call** %6, align 8
  %254 = getelementptr inbounds %struct.call, %struct.call* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 196
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load %struct.call*, %struct.call** %6, align 8
  %259 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %260 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %261 = call i32 @unx_alerting(%struct.call* %258, %struct.uni_msg* %259, %struct.uni_all* %260, i32 195)
  br label %1575

262:                                              ; preds = %252
  %263 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %264 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %265 = load %struct.call*, %struct.call** %6, align 8
  %266 = getelementptr inbounds %struct.call, %struct.call* %265, i32 0, i32 1
  %267 = load %struct.uni*, %struct.uni** %266, align 8
  %268 = getelementptr inbounds %struct.uni, %struct.uni* %267, i32 0, i32 4
  %269 = call i32 @uni_decode_body(%struct.uni_msg* %263, %struct.uni_all* %264, i32* %268)
  %270 = load %struct.call*, %struct.call** %6, align 8
  %271 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %272 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %273 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %274 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = call i32 @uni_bad_message(%struct.call* %270, %struct.uni_all* %271, i32 %272, i32* %276, i32 -1)
  br label %1576

278:                                              ; preds = %33
  %279 = load %struct.call*, %struct.call** %6, align 8
  %280 = getelementptr inbounds %struct.call, %struct.call* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 191
  br i1 %282, label %293, label %283

283:                                              ; preds = %278
  %284 = load %struct.call*, %struct.call** %6, align 8
  %285 = getelementptr inbounds %struct.call, %struct.call* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 187
  br i1 %287, label %293, label %288

288:                                              ; preds = %283
  %289 = load %struct.call*, %struct.call** %6, align 8
  %290 = getelementptr inbounds %struct.call, %struct.call* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 186
  br i1 %292, label %293, label %298

293:                                              ; preds = %288, %283, %278
  %294 = load %struct.call*, %struct.call** %6, align 8
  %295 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %296 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %297 = call i32 @unx_connect(%struct.call* %294, %struct.uni_msg* %295, %struct.uni_all* %296, i32 190)
  br label %1575

298:                                              ; preds = %288
  %299 = load %struct.call*, %struct.call** %6, align 8
  %300 = getelementptr inbounds %struct.call, %struct.call* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %301, 196
  br i1 %302, label %313, label %303

303:                                              ; preds = %298
  %304 = load %struct.call*, %struct.call** %6, align 8
  %305 = getelementptr inbounds %struct.call, %struct.call* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 195
  br i1 %307, label %313, label %308

308:                                              ; preds = %303
  %309 = load %struct.call*, %struct.call** %6, align 8
  %310 = getelementptr inbounds %struct.call, %struct.call* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 193
  br i1 %312, label %313, label %318

313:                                              ; preds = %308, %303, %298
  %314 = load %struct.call*, %struct.call** %6, align 8
  %315 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %316 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %317 = call i32 @unx_connect(%struct.call* %314, %struct.uni_msg* %315, %struct.uni_all* %316, i32 194)
  br label %1575

318:                                              ; preds = %308
  %319 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %320 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %321 = load %struct.call*, %struct.call** %6, align 8
  %322 = getelementptr inbounds %struct.call, %struct.call* %321, i32 0, i32 1
  %323 = load %struct.uni*, %struct.uni** %322, align 8
  %324 = getelementptr inbounds %struct.uni, %struct.uni* %323, i32 0, i32 4
  %325 = call i32 @uni_decode_body(%struct.uni_msg* %319, %struct.uni_all* %320, i32* %324)
  %326 = load %struct.call*, %struct.call** %6, align 8
  %327 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %328 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %329 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %330 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 0
  %333 = call i32 @uni_bad_message(%struct.call* %326, %struct.uni_all* %327, i32 %328, i32* %332, i32 -1)
  br label %1576

334:                                              ; preds = %33
  %335 = load %struct.call*, %struct.call** %6, align 8
  %336 = getelementptr inbounds %struct.call, %struct.call* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %337, 183
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.call*, %struct.call** %6, align 8
  %341 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %342 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %343 = call i32 @u8_connect_ack(%struct.call* %340, %struct.uni_msg* %341, %struct.uni_all* %342, i32 190)
  br label %1575

344:                                              ; preds = %334
  %345 = load %struct.call*, %struct.call** %6, align 8
  %346 = getelementptr inbounds %struct.call, %struct.call* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp eq i64 %347, 201
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = load %struct.call*, %struct.call** %6, align 8
  %351 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %352 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %353 = call i32 @n10_connect_ack(%struct.call* %350, %struct.uni_msg* %351, %struct.uni_all* %352)
  br label %1575

354:                                              ; preds = %344
  %355 = load %struct.call*, %struct.call** %6, align 8
  %356 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %357 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %358 = call i32 @uni_bad_message(%struct.call* %355, %struct.uni_all* %356, i32 %357, i32* null, i32 0)
  br label %1576

359:                                              ; preds = %33
  %360 = load %struct.call*, %struct.call** %6, align 8
  %361 = getelementptr inbounds %struct.call, %struct.call* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  switch i64 %362, label %363 [
    i64 189, label %368
    i64 199, label %368
    i64 191, label %373
    i64 187, label %373
    i64 186, label %373
    i64 185, label %373
    i64 184, label %373
    i64 183, label %373
    i64 182, label %373
    i64 190, label %373
    i64 188, label %373
    i64 202, label %378
    i64 198, label %378
    i64 197, label %378
    i64 196, label %378
    i64 195, label %378
    i64 194, label %378
    i64 193, label %378
    i64 201, label %378
    i64 200, label %378
  ]

363:                                              ; preds = %359
  %364 = load %struct.call*, %struct.call** %6, align 8
  %365 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %366 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %367 = call i32 @uni_bad_message(%struct.call* %364, %struct.uni_all* %365, i32 %366, i32* null, i32 0)
  br label %1576

368:                                              ; preds = %359, %359
  %369 = load %struct.call*, %struct.call** %6, align 8
  %370 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %371 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %372 = call i32 @u11n12_release(%struct.call* %369, %struct.uni_msg* %370, %struct.uni_all* %371)
  br label %383

373:                                              ; preds = %359, %359, %359, %359, %359, %359, %359, %359, %359
  %374 = load %struct.call*, %struct.call** %6, align 8
  %375 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %376 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %377 = call i32 @unx_release(%struct.call* %374, %struct.uni_msg* %375, %struct.uni_all* %376, i32 188)
  br label %383

378:                                              ; preds = %359, %359, %359, %359, %359, %359, %359, %359, %359
  %379 = load %struct.call*, %struct.call** %6, align 8
  %380 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %381 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %382 = call i32 @unx_release(%struct.call* %379, %struct.uni_msg* %380, %struct.uni_all* %381, i32 200)
  br label %383

383:                                              ; preds = %378, %373, %368
  br label %1575

384:                                              ; preds = %33
  %385 = load %struct.call*, %struct.call** %6, align 8
  %386 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %387 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %388 = call i32 @unx_release_compl(%struct.call* %385, %struct.uni_msg* %386, %struct.uni_all* %387)
  br label %1575

389:                                              ; preds = %33
  %390 = load %struct.call*, %struct.call** %6, align 8
  %391 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %392 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %393 = call i32 @unx_notify(%struct.call* %390, %struct.uni_msg* %391, %struct.uni_all* %392)
  br label %1575

394:                                              ; preds = %33
  %395 = load %struct.call*, %struct.call** %6, align 8
  %396 = getelementptr inbounds %struct.call, %struct.call* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp eq i64 %397, 189
  br i1 %398, label %414, label %399

399:                                              ; preds = %394
  %400 = load %struct.call*, %struct.call** %6, align 8
  %401 = getelementptr inbounds %struct.call, %struct.call* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp eq i64 %402, 188
  br i1 %403, label %414, label %404

404:                                              ; preds = %399
  %405 = load %struct.call*, %struct.call** %6, align 8
  %406 = getelementptr inbounds %struct.call, %struct.call* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp eq i64 %407, 200
  br i1 %408, label %414, label %409

409:                                              ; preds = %404
  %410 = load %struct.call*, %struct.call** %6, align 8
  %411 = getelementptr inbounds %struct.call, %struct.call* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp eq i64 %412, 199
  br i1 %413, label %414, label %419

414:                                              ; preds = %409, %404, %399, %394
  %415 = load %struct.call*, %struct.call** %6, align 8
  %416 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %417 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %418 = call i32 @un11un12_status(%struct.call* %415, %struct.uni_msg* %416, %struct.uni_all* %417)
  br label %1575

419:                                              ; preds = %409
  %420 = load %struct.call*, %struct.call** %6, align 8
  %421 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %422 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %423 = call i32 @unx_status(%struct.call* %420, %struct.uni_msg* %421, %struct.uni_all* %422)
  br label %1575

424:                                              ; preds = %33
  %425 = load %struct.call*, %struct.call** %6, align 8
  %426 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %427 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %428 = call i32 @unx_status_enq(%struct.call* %425, %struct.uni_msg* %426, %struct.uni_all* %427)
  br label %1575

429:                                              ; preds = %33
  %430 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %431 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %432 = load %struct.call*, %struct.call** %6, align 8
  %433 = getelementptr inbounds %struct.call, %struct.call* %432, i32 0, i32 1
  %434 = load %struct.uni*, %struct.uni** %433, align 8
  %435 = getelementptr inbounds %struct.uni, %struct.uni* %434, i32 0, i32 4
  %436 = call i32 @uni_decode_body(%struct.uni_msg* %430, %struct.uni_all* %431, i32* %435)
  %437 = load %struct.call*, %struct.call** %6, align 8
  %438 = getelementptr inbounds %struct.call, %struct.call* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @CALL_LEAF, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %458

442:                                              ; preds = %429
  %443 = load %struct.call*, %struct.call** %6, align 8
  %444 = getelementptr inbounds %struct.call, %struct.call* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @CALL_ROOT, align 4
  %447 = icmp ne i32 %445, %446
  br i1 %447, label %448, label %458

448:                                              ; preds = %442
  %449 = load %struct.call*, %struct.call** %6, align 8
  %450 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %451 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %452 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %453 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 0
  %456 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %457 = call i32 @uni_bad_message(%struct.call* %449, %struct.uni_all* %450, i32 %451, i32* %455, i32 %456)
  br label %1576

458:                                              ; preds = %442, %429
  %459 = load %struct.call*, %struct.call** %6, align 8
  %460 = getelementptr inbounds %struct.call, %struct.call* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  switch i64 %461, label %467 [
    i64 184, label %462
    i64 183, label %462
    i64 190, label %462
    i64 197, label %462
    i64 201, label %462
  ]

462:                                              ; preds = %458, %458, %458, %458, %458
  %463 = load %struct.call*, %struct.call** %6, align 8
  %464 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %465 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %466 = call i32 @unx_add_party(%struct.call* %463, %struct.uni_msg* %464, %struct.uni_all* %465, i32 1)
  br label %472

467:                                              ; preds = %458
  %468 = load %struct.call*, %struct.call** %6, align 8
  %469 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %470 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %471 = call i32 @unx_add_party(%struct.call* %468, %struct.uni_msg* %469, %struct.uni_all* %470, i32 0)
  br label %1576

472:                                              ; preds = %462
  br label %1575

473:                                              ; preds = %33
  %474 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %475 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %476 = load %struct.call*, %struct.call** %6, align 8
  %477 = getelementptr inbounds %struct.call, %struct.call* %476, i32 0, i32 1
  %478 = load %struct.uni*, %struct.uni** %477, align 8
  %479 = getelementptr inbounds %struct.uni, %struct.uni* %478, i32 0, i32 4
  %480 = call i32 @uni_decode_body(%struct.uni_msg* %474, %struct.uni_all* %475, i32* %479)
  %481 = load %struct.call*, %struct.call** %6, align 8
  %482 = getelementptr inbounds %struct.call, %struct.call* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 8
  %484 = load i32, i32* @CALL_ROOT, align 4
  %485 = icmp ne i32 %483, %484
  br i1 %485, label %486, label %495

486:                                              ; preds = %473
  %487 = load %struct.call*, %struct.call** %6, align 8
  %488 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %489 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %490 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %491 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 3
  %493 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %492, i32 0, i32 0
  %494 = call i32 @uni_bad_message(%struct.call* %487, %struct.uni_all* %488, i32 %489, i32* %493, i32 -1)
  br label %1576

495:                                              ; preds = %473
  %496 = load %struct.call*, %struct.call** %6, align 8
  %497 = getelementptr inbounds %struct.call, %struct.call* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  switch i64 %498, label %499 [
    i64 186, label %504
    i64 190, label %504
  ]

499:                                              ; preds = %495
  %500 = load %struct.call*, %struct.call** %6, align 8
  %501 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %502 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %503 = call i32 @unx_party_alerting(%struct.call* %500, %struct.uni_msg* %501, %struct.uni_all* %502, i32 0)
  br label %509

504:                                              ; preds = %495, %495
  %505 = load %struct.call*, %struct.call** %6, align 8
  %506 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %507 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %508 = call i32 @unx_party_alerting(%struct.call* %505, %struct.uni_msg* %506, %struct.uni_all* %507, i32 1)
  br label %509

509:                                              ; preds = %504, %499
  br label %1575

510:                                              ; preds = %33
  %511 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %512 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %513 = load %struct.call*, %struct.call** %6, align 8
  %514 = getelementptr inbounds %struct.call, %struct.call* %513, i32 0, i32 1
  %515 = load %struct.uni*, %struct.uni** %514, align 8
  %516 = getelementptr inbounds %struct.uni, %struct.uni* %515, i32 0, i32 4
  %517 = call i32 @uni_decode_body(%struct.uni_msg* %511, %struct.uni_all* %512, i32* %516)
  %518 = load %struct.call*, %struct.call** %6, align 8
  %519 = getelementptr inbounds %struct.call, %struct.call* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @CALL_ROOT, align 4
  %522 = icmp ne i32 %520, %521
  br i1 %522, label %523, label %532

523:                                              ; preds = %510
  %524 = load %struct.call*, %struct.call** %6, align 8
  %525 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %526 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %527 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %528 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %529, i32 0, i32 0
  %531 = call i32 @uni_bad_message(%struct.call* %524, %struct.uni_all* %525, i32 %526, i32* %530, i32 -1)
  br label %1576

532:                                              ; preds = %510
  %533 = load %struct.call*, %struct.call** %6, align 8
  %534 = getelementptr inbounds %struct.call, %struct.call* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  switch i64 %535, label %541 [
    i64 190, label %536
  ]

536:                                              ; preds = %532
  %537 = load %struct.call*, %struct.call** %6, align 8
  %538 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %539 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %540 = call i32 @un10n8_add_party_ack(%struct.call* %537, %struct.uni_msg* %538, %struct.uni_all* %539, i32 1)
  br label %546

541:                                              ; preds = %532
  %542 = load %struct.call*, %struct.call** %6, align 8
  %543 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %544 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %545 = call i32 @un10n8_add_party_ack(%struct.call* %542, %struct.uni_msg* %543, %struct.uni_all* %544, i32 0)
  br label %546

546:                                              ; preds = %541, %536
  br label %1575

547:                                              ; preds = %33
  %548 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %549 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %550 = load %struct.call*, %struct.call** %6, align 8
  %551 = getelementptr inbounds %struct.call, %struct.call* %550, i32 0, i32 1
  %552 = load %struct.uni*, %struct.uni** %551, align 8
  %553 = getelementptr inbounds %struct.uni, %struct.uni* %552, i32 0, i32 4
  %554 = call i32 @uni_decode_body(%struct.uni_msg* %548, %struct.uni_all* %549, i32* %553)
  %555 = load %struct.call*, %struct.call** %6, align 8
  %556 = getelementptr inbounds %struct.call, %struct.call* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = load i32, i32* @CALL_ROOT, align 4
  %559 = icmp ne i32 %557, %558
  br i1 %559, label %560, label %569

560:                                              ; preds = %547
  %561 = load %struct.call*, %struct.call** %6, align 8
  %562 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %563 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %564 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %565 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 0
  %568 = call i32 @uni_bad_message(%struct.call* %561, %struct.uni_all* %562, i32 %563, i32* %567, i32 -1)
  br label %1576

569:                                              ; preds = %547
  %570 = load %struct.call*, %struct.call** %6, align 8
  %571 = getelementptr inbounds %struct.call, %struct.call* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  switch i64 %572, label %578 [
    i64 186, label %573
    i64 190, label %573
    i64 195, label %573
    i64 194, label %573
    i64 201, label %573
  ]

573:                                              ; preds = %569, %569, %569, %569, %569
  %574 = load %struct.call*, %struct.call** %6, align 8
  %575 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %576 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %577 = call i32 @unx_add_party_rej(%struct.call* %574, %struct.uni_msg* %575, %struct.uni_all* %576, i32 1)
  br label %583

578:                                              ; preds = %569
  %579 = load %struct.call*, %struct.call** %6, align 8
  %580 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %581 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %582 = call i32 @unx_add_party_rej(%struct.call* %579, %struct.uni_msg* %580, %struct.uni_all* %581, i32 0)
  br label %583

583:                                              ; preds = %578, %573
  br label %1575

584:                                              ; preds = %33
  %585 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %586 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %587 = load %struct.call*, %struct.call** %6, align 8
  %588 = getelementptr inbounds %struct.call, %struct.call* %587, i32 0, i32 1
  %589 = load %struct.uni*, %struct.uni** %588, align 8
  %590 = getelementptr inbounds %struct.uni, %struct.uni* %589, i32 0, i32 4
  %591 = call i32 @uni_decode_body(%struct.uni_msg* %585, %struct.uni_all* %586, i32* %590)
  %592 = load %struct.call*, %struct.call** %6, align 8
  %593 = getelementptr inbounds %struct.call, %struct.call* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @CALL_ROOT, align 4
  %596 = icmp ne i32 %594, %595
  br i1 %596, label %597, label %612

597:                                              ; preds = %584
  %598 = load %struct.call*, %struct.call** %6, align 8
  %599 = getelementptr inbounds %struct.call, %struct.call* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 8
  %601 = load i32, i32* @CALL_LEAF, align 4
  %602 = icmp ne i32 %600, %601
  br i1 %602, label %603, label %612

603:                                              ; preds = %597
  %604 = load %struct.call*, %struct.call** %6, align 8
  %605 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %606 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %607 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %608 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %609, i32 0, i32 1
  %611 = call i32 @uni_bad_message(%struct.call* %604, %struct.uni_all* %605, i32 %606, i32* %610, i32 -1)
  br label %1576

612:                                              ; preds = %597, %584
  %613 = load %struct.call*, %struct.call** %6, align 8
  %614 = getelementptr inbounds %struct.call, %struct.call* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  switch i64 %615, label %645 [
    i64 189, label %616
    i64 188, label %616
    i64 200, label %616
    i64 199, label %616
    i64 192, label %617
    i64 187, label %627
    i64 198, label %627
    i64 183, label %632
  ]

616:                                              ; preds = %612, %612, %612, %612
  br label %1576

617:                                              ; preds = %612
  %618 = load %struct.call*, %struct.call** %6, align 8
  %619 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %620 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %621 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %622 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %623, i32 0, i32 1
  %625 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %626 = call i32 @uni_bad_message(%struct.call* %618, %struct.uni_all* %619, i32 %620, i32* %624, i32 %625)
  br label %1576

627:                                              ; preds = %612, %612
  %628 = load %struct.call*, %struct.call** %6, align 8
  %629 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %630 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %631 = call i32 @unx_drop_party(%struct.call* %628, %struct.uni_msg* %629, %struct.uni_all* %630, i32 0)
  br label %650

632:                                              ; preds = %612
  %633 = load %struct.call*, %struct.call** %6, align 8
  %634 = getelementptr inbounds %struct.call, %struct.call* %633, i32 0, i32 1
  %635 = load %struct.uni*, %struct.uni** %634, align 8
  %636 = getelementptr inbounds %struct.uni, %struct.uni* %635, i32 0, i32 5
  %637 = load i32, i32* %636, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %644

639:                                              ; preds = %632
  %640 = load %struct.call*, %struct.call** %6, align 8
  %641 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %642 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %643 = call i32 @unx_drop_party(%struct.call* %640, %struct.uni_msg* %641, %struct.uni_all* %642, i32 0)
  br label %650

644:                                              ; preds = %632
  br label %645

645:                                              ; preds = %612, %644
  %646 = load %struct.call*, %struct.call** %6, align 8
  %647 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %648 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %649 = call i32 @unx_drop_party(%struct.call* %646, %struct.uni_msg* %647, %struct.uni_all* %648, i32 1)
  br label %650

650:                                              ; preds = %645, %639, %627
  br label %1575

651:                                              ; preds = %33
  %652 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %653 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %654 = load %struct.call*, %struct.call** %6, align 8
  %655 = getelementptr inbounds %struct.call, %struct.call* %654, i32 0, i32 1
  %656 = load %struct.uni*, %struct.uni** %655, align 8
  %657 = getelementptr inbounds %struct.uni, %struct.uni* %656, i32 0, i32 4
  %658 = call i32 @uni_decode_body(%struct.uni_msg* %652, %struct.uni_all* %653, i32* %657)
  %659 = load %struct.call*, %struct.call** %6, align 8
  %660 = getelementptr inbounds %struct.call, %struct.call* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 8
  %662 = load i32, i32* @CALL_ROOT, align 4
  %663 = icmp ne i32 %661, %662
  br i1 %663, label %664, label %679

664:                                              ; preds = %651
  %665 = load %struct.call*, %struct.call** %6, align 8
  %666 = getelementptr inbounds %struct.call, %struct.call* %665, i32 0, i32 2
  %667 = load i32, i32* %666, align 8
  %668 = load i32, i32* @CALL_LEAF, align 4
  %669 = icmp ne i32 %667, %668
  br i1 %669, label %670, label %679

670:                                              ; preds = %664
  %671 = load %struct.call*, %struct.call** %6, align 8
  %672 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %673 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %674 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %675 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %674, i32 0, i32 0
  %676 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %676, i32 0, i32 1
  %678 = call i32 @uni_bad_message(%struct.call* %671, %struct.uni_all* %672, i32 %673, i32* %677, i32 -1)
  br label %1576

679:                                              ; preds = %664, %651
  %680 = load %struct.call*, %struct.call** %6, align 8
  %681 = getelementptr inbounds %struct.call, %struct.call* %680, i32 0, i32 0
  %682 = load i64, i64* %681, align 8
  switch i64 %682, label %699 [
    i64 189, label %683
    i64 188, label %683
    i64 192, label %684
    i64 186, label %694
    i64 197, label %694
    i64 184, label %694
    i64 195, label %694
    i64 183, label %694
    i64 194, label %694
    i64 190, label %694
    i64 201, label %694
  ]

683:                                              ; preds = %679, %679
  br label %1576

684:                                              ; preds = %679
  %685 = load %struct.call*, %struct.call** %6, align 8
  %686 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %687 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %688 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %689 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %688, i32 0, i32 0
  %690 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %690, i32 0, i32 1
  %692 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %693 = call i32 @uni_bad_message(%struct.call* %685, %struct.uni_all* %686, i32 %687, i32* %691, i32 %692)
  br label %1576

694:                                              ; preds = %679, %679, %679, %679, %679, %679, %679, %679
  %695 = load %struct.call*, %struct.call** %6, align 8
  %696 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %697 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %698 = call i32 @unx_drop_party_ack(%struct.call* %695, %struct.uni_msg* %696, %struct.uni_all* %697, i32 1)
  br label %704

699:                                              ; preds = %679
  %700 = load %struct.call*, %struct.call** %6, align 8
  %701 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %702 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %703 = call i32 @unx_drop_party_ack(%struct.call* %700, %struct.uni_msg* %701, %struct.uni_all* %702, i32 0)
  br label %704

704:                                              ; preds = %699, %694
  br label %1575

705:                                              ; preds = %33
  %706 = load %struct.call*, %struct.call** %6, align 8
  %707 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %708 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %709 = call i32 @unx_unknown(%struct.call* %706, %struct.uni_msg* %707, %struct.uni_all* %708)
  br label %1575

710:                                              ; preds = %33
  %711 = load %struct.call*, %struct.call** %6, align 8
  %712 = getelementptr inbounds %struct.call, %struct.call* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = icmp eq i64 %713, 192
  br i1 %714, label %715, label %734

715:                                              ; preds = %710
  %716 = load %struct.call*, %struct.call** %6, align 8
  %717 = getelementptr inbounds %struct.call, %struct.call* %716, i32 0, i32 1
  %718 = load %struct.uni*, %struct.uni** %717, align 8
  %719 = getelementptr inbounds %struct.uni, %struct.uni* %718, i32 0, i32 3
  %720 = load i32, i32* %719, align 4
  %721 = load i32, i32* @UNIPROTO_UNI40N, align 4
  %722 = icmp eq i32 %720, %721
  br i1 %722, label %723, label %728

723:                                              ; preds = %715
  %724 = load %struct.call*, %struct.call** %6, align 8
  %725 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %726 = load i32, i32* %8, align 4
  %727 = call i32 @un0_setup_request(%struct.call* %724, %struct.uni_msg* %725, i32 %726, i32 196)
  br label %733

728:                                              ; preds = %715
  %729 = load %struct.call*, %struct.call** %6, align 8
  %730 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %731 = load i32, i32* %8, align 4
  %732 = call i32 @un0_setup_request(%struct.call* %729, %struct.uni_msg* %730, i32 %731, i32 191)
  br label %733

733:                                              ; preds = %728, %723
  br label %1575

734:                                              ; preds = %710
  %735 = load %struct.call*, %struct.call** %6, align 8
  %736 = getelementptr inbounds %struct.call, %struct.call* %735, i32 0, i32 1
  %737 = load %struct.uni*, %struct.uni** %736, align 8
  %738 = load i32, i32* @UNI_FAC_ERR, align 4
  %739 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %740 = load %struct.call*, %struct.call** %6, align 8
  %741 = getelementptr inbounds %struct.call, %struct.call* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %739, i64 %742
  %744 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 4
  %746 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %737, i32 %738, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %745)
  %747 = load %struct.call*, %struct.call** %6, align 8
  %748 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %749 = load i32, i32* %8, align 4
  %750 = call i32 @uniapi_call_error(%struct.call* %747, i32 %748, i32 %749)
  %751 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %752 = call i32 @uni_msg_destroy(%struct.uni_msg* %751)
  br label %1575

753:                                              ; preds = %33
  %754 = load %struct.call*, %struct.call** %6, align 8
  %755 = getelementptr inbounds %struct.call, %struct.call* %754, i32 0, i32 0
  %756 = load i64, i64* %755, align 8
  %757 = icmp eq i64 %756, 185
  br i1 %757, label %768, label %758

758:                                              ; preds = %753
  %759 = load %struct.call*, %struct.call** %6, align 8
  %760 = getelementptr inbounds %struct.call, %struct.call* %759, i32 0, i32 0
  %761 = load i64, i64* %760, align 8
  %762 = icmp eq i64 %761, 182
  br i1 %762, label %768, label %763

763:                                              ; preds = %758
  %764 = load %struct.call*, %struct.call** %6, align 8
  %765 = getelementptr inbounds %struct.call, %struct.call* %764, i32 0, i32 0
  %766 = load i64, i64* %765, align 8
  %767 = icmp eq i64 %766, 184
  br i1 %767, label %768, label %773

768:                                              ; preds = %763, %758, %753
  %769 = load %struct.call*, %struct.call** %6, align 8
  %770 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %771 = load i32, i32* %8, align 4
  %772 = call i32 @unx_setup_response(%struct.call* %769, %struct.uni_msg* %770, i32 %771, i32 183)
  br label %1575

773:                                              ; preds = %763
  %774 = load %struct.call*, %struct.call** %6, align 8
  %775 = getelementptr inbounds %struct.call, %struct.call* %774, i32 0, i32 0
  %776 = load i64, i64* %775, align 8
  %777 = icmp eq i64 %776, 202
  br i1 %777, label %788, label %778

778:                                              ; preds = %773
  %779 = load %struct.call*, %struct.call** %6, align 8
  %780 = getelementptr inbounds %struct.call, %struct.call* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = icmp eq i64 %781, 198
  br i1 %782, label %788, label %783

783:                                              ; preds = %778
  %784 = load %struct.call*, %struct.call** %6, align 8
  %785 = getelementptr inbounds %struct.call, %struct.call* %784, i32 0, i32 0
  %786 = load i64, i64* %785, align 8
  %787 = icmp eq i64 %786, 197
  br i1 %787, label %788, label %793

788:                                              ; preds = %783, %778, %773
  %789 = load %struct.call*, %struct.call** %6, align 8
  %790 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %791 = load i32, i32* %8, align 4
  %792 = call i32 @unx_setup_response(%struct.call* %789, %struct.uni_msg* %790, i32 %791, i32 201)
  br label %1575

793:                                              ; preds = %783
  %794 = load %struct.call*, %struct.call** %6, align 8
  %795 = getelementptr inbounds %struct.call, %struct.call* %794, i32 0, i32 1
  %796 = load %struct.uni*, %struct.uni** %795, align 8
  %797 = load i32, i32* @UNI_FAC_ERR, align 4
  %798 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %799 = load %struct.call*, %struct.call** %6, align 8
  %800 = getelementptr inbounds %struct.call, %struct.call* %799, i32 0, i32 0
  %801 = load i64, i64* %800, align 8
  %802 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %798, i64 %801
  %803 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 4
  %805 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %796, i32 %797, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %804)
  %806 = load %struct.call*, %struct.call** %6, align 8
  %807 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %808 = load i32, i32* %8, align 4
  %809 = call i32 @uniapi_call_error(%struct.call* %806, i32 %807, i32 %808)
  %810 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %811 = call i32 @uni_msg_destroy(%struct.uni_msg* %810)
  br label %1575

812:                                              ; preds = %33
  %813 = load %struct.call*, %struct.call** %6, align 8
  %814 = getelementptr inbounds %struct.call, %struct.call* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = icmp eq i64 %815, 194
  br i1 %816, label %817, label %822

817:                                              ; preds = %812
  %818 = load %struct.call*, %struct.call** %6, align 8
  %819 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %820 = load i32, i32* %8, align 4
  %821 = call i32 @n8_setup_compl_request(%struct.call* %818, %struct.uni_msg* %819, i32 %820, i32 201)
  br label %1575

822:                                              ; preds = %812
  %823 = load %struct.call*, %struct.call** %6, align 8
  %824 = getelementptr inbounds %struct.call, %struct.call* %823, i32 0, i32 1
  %825 = load %struct.uni*, %struct.uni** %824, align 8
  %826 = load i32, i32* @UNI_FAC_ERR, align 4
  %827 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %828 = load %struct.call*, %struct.call** %6, align 8
  %829 = getelementptr inbounds %struct.call, %struct.call* %828, i32 0, i32 0
  %830 = load i64, i64* %829, align 8
  %831 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %827, i64 %830
  %832 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 4
  %834 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %825, i32 %826, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %833)
  %835 = load %struct.call*, %struct.call** %6, align 8
  %836 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %837 = load i32, i32* %8, align 4
  %838 = call i32 @uniapi_call_error(%struct.call* %835, i32 %836, i32 %837)
  %839 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %840 = call i32 @uni_msg_destroy(%struct.uni_msg* %839)
  br label %1575

841:                                              ; preds = %33
  %842 = load %struct.call*, %struct.call** %6, align 8
  %843 = getelementptr inbounds %struct.call, %struct.call* %842, i32 0, i32 0
  %844 = load i64, i64* %843, align 8
  %845 = icmp eq i64 %844, 185
  br i1 %845, label %846, label %851

846:                                              ; preds = %841
  %847 = load %struct.call*, %struct.call** %6, align 8
  %848 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %849 = load i32, i32* %8, align 4
  %850 = call i32 @u6n1_proceeding_request(%struct.call* %847, %struct.uni_msg* %848, i32 %849, i32 182)
  br label %1575

851:                                              ; preds = %841
  %852 = load %struct.call*, %struct.call** %6, align 8
  %853 = getelementptr inbounds %struct.call, %struct.call* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = icmp eq i64 %854, 202
  br i1 %855, label %856, label %861

856:                                              ; preds = %851
  %857 = load %struct.call*, %struct.call** %6, align 8
  %858 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %859 = load i32, i32* %8, align 4
  %860 = call i32 @u6n1_proceeding_request(%struct.call* %857, %struct.uni_msg* %858, i32 %859, i32 198)
  br label %1575

861:                                              ; preds = %851
  %862 = load %struct.call*, %struct.call** %6, align 8
  %863 = getelementptr inbounds %struct.call, %struct.call* %862, i32 0, i32 1
  %864 = load %struct.uni*, %struct.uni** %863, align 8
  %865 = load i32, i32* @UNI_FAC_ERR, align 4
  %866 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %867 = load %struct.call*, %struct.call** %6, align 8
  %868 = getelementptr inbounds %struct.call, %struct.call* %867, i32 0, i32 0
  %869 = load i64, i64* %868, align 8
  %870 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %866, i64 %869
  %871 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %870, i32 0, i32 0
  %872 = load i32, i32* %871, align 4
  %873 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %864, i32 %865, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %872)
  %874 = load %struct.call*, %struct.call** %6, align 8
  %875 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %876 = load i32, i32* %8, align 4
  %877 = call i32 @uniapi_call_error(%struct.call* %874, i32 %875, i32 %876)
  %878 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %879 = call i32 @uni_msg_destroy(%struct.uni_msg* %878)
  br label %1575

880:                                              ; preds = %33
  %881 = load %struct.call*, %struct.call** %6, align 8
  %882 = getelementptr inbounds %struct.call, %struct.call* %881, i32 0, i32 0
  %883 = load i64, i64* %882, align 8
  %884 = icmp eq i64 %883, 185
  br i1 %884, label %890, label %885

885:                                              ; preds = %880
  %886 = load %struct.call*, %struct.call** %6, align 8
  %887 = getelementptr inbounds %struct.call, %struct.call* %886, i32 0, i32 0
  %888 = load i64, i64* %887, align 8
  %889 = icmp eq i64 %888, 182
  br i1 %889, label %890, label %895

890:                                              ; preds = %885, %880
  %891 = load %struct.call*, %struct.call** %6, align 8
  %892 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %893 = load i32, i32* %8, align 4
  %894 = call i32 @unx_alerting_request(%struct.call* %891, %struct.uni_msg* %892, i32 %893, i32 184)
  br label %1575

895:                                              ; preds = %885
  %896 = load %struct.call*, %struct.call** %6, align 8
  %897 = getelementptr inbounds %struct.call, %struct.call* %896, i32 0, i32 0
  %898 = load i64, i64* %897, align 8
  %899 = icmp eq i64 %898, 202
  br i1 %899, label %905, label %900

900:                                              ; preds = %895
  %901 = load %struct.call*, %struct.call** %6, align 8
  %902 = getelementptr inbounds %struct.call, %struct.call* %901, i32 0, i32 0
  %903 = load i64, i64* %902, align 8
  %904 = icmp eq i64 %903, 198
  br i1 %904, label %905, label %910

905:                                              ; preds = %900, %895
  %906 = load %struct.call*, %struct.call** %6, align 8
  %907 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %908 = load i32, i32* %8, align 4
  %909 = call i32 @unx_alerting_request(%struct.call* %906, %struct.uni_msg* %907, i32 %908, i32 197)
  br label %1575

910:                                              ; preds = %900
  %911 = load %struct.call*, %struct.call** %6, align 8
  %912 = getelementptr inbounds %struct.call, %struct.call* %911, i32 0, i32 1
  %913 = load %struct.uni*, %struct.uni** %912, align 8
  %914 = load i32, i32* @UNI_FAC_ERR, align 4
  %915 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %916 = load %struct.call*, %struct.call** %6, align 8
  %917 = getelementptr inbounds %struct.call, %struct.call* %916, i32 0, i32 0
  %918 = load i64, i64* %917, align 8
  %919 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %915, i64 %918
  %920 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %919, i32 0, i32 0
  %921 = load i32, i32* %920, align 4
  %922 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %913, i32 %914, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %921)
  %923 = load %struct.call*, %struct.call** %6, align 8
  %924 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %925 = load i32, i32* %8, align 4
  %926 = call i32 @uniapi_call_error(%struct.call* %923, i32 %924, i32 %925)
  %927 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %928 = call i32 @uni_msg_destroy(%struct.uni_msg* %927)
  br label %1575

929:                                              ; preds = %33
  %930 = load %struct.call*, %struct.call** %6, align 8
  %931 = getelementptr inbounds %struct.call, %struct.call* %930, i32 0, i32 0
  %932 = load i64, i64* %931, align 8
  switch i64 %932, label %962 [
    i64 191, label %933
    i64 187, label %933
    i64 186, label %933
    i64 185, label %933
    i64 184, label %933
    i64 183, label %933
    i64 182, label %933
    i64 190, label %933
    i64 202, label %938
    i64 198, label %938
    i64 197, label %938
    i64 196, label %938
    i64 195, label %938
    i64 194, label %938
    i64 193, label %938
    i64 201, label %938
    i64 189, label %943
    i64 188, label %943
    i64 200, label %943
    i64 199, label %943
    i64 192, label %943
  ]

933:                                              ; preds = %929, %929, %929, %929, %929, %929, %929, %929
  %934 = load %struct.call*, %struct.call** %6, align 8
  %935 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %936 = load i32, i32* %8, align 4
  %937 = call i32 @unx_release_request(%struct.call* %934, %struct.uni_msg* %935, i32 %936, i32 189)
  br label %962

938:                                              ; preds = %929, %929, %929, %929, %929, %929, %929, %929
  %939 = load %struct.call*, %struct.call** %6, align 8
  %940 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %941 = load i32, i32* %8, align 4
  %942 = call i32 @unx_release_request(%struct.call* %939, %struct.uni_msg* %940, i32 %941, i32 199)
  br label %962

943:                                              ; preds = %929, %929, %929, %929, %929
  %944 = load %struct.call*, %struct.call** %6, align 8
  %945 = getelementptr inbounds %struct.call, %struct.call* %944, i32 0, i32 1
  %946 = load %struct.uni*, %struct.uni** %945, align 8
  %947 = load i32, i32* @UNI_FAC_ERR, align 4
  %948 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %949 = load %struct.call*, %struct.call** %6, align 8
  %950 = getelementptr inbounds %struct.call, %struct.call* %949, i32 0, i32 0
  %951 = load i64, i64* %950, align 8
  %952 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %948, i64 %951
  %953 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 4
  %955 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %946, i32 %947, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %954)
  %956 = load %struct.call*, %struct.call** %6, align 8
  %957 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %958 = load i32, i32* %8, align 4
  %959 = call i32 @uniapi_call_error(%struct.call* %956, i32 %957, i32 %958)
  %960 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %961 = call i32 @uni_msg_destroy(%struct.uni_msg* %960)
  br label %962

962:                                              ; preds = %929, %943, %938, %933
  br label %1575

963:                                              ; preds = %33
  %964 = load %struct.call*, %struct.call** %6, align 8
  %965 = getelementptr inbounds %struct.call, %struct.call* %964, i32 0, i32 0
  %966 = load i64, i64* %965, align 8
  %967 = icmp eq i64 %966, 185
  br i1 %967, label %983, label %968

968:                                              ; preds = %963
  %969 = load %struct.call*, %struct.call** %6, align 8
  %970 = getelementptr inbounds %struct.call, %struct.call* %969, i32 0, i32 0
  %971 = load i64, i64* %970, align 8
  %972 = icmp eq i64 %971, 188
  br i1 %972, label %983, label %973

973:                                              ; preds = %968
  %974 = load %struct.call*, %struct.call** %6, align 8
  %975 = getelementptr inbounds %struct.call, %struct.call* %974, i32 0, i32 0
  %976 = load i64, i64* %975, align 8
  %977 = icmp eq i64 %976, 202
  br i1 %977, label %983, label %978

978:                                              ; preds = %973
  %979 = load %struct.call*, %struct.call** %6, align 8
  %980 = getelementptr inbounds %struct.call, %struct.call* %979, i32 0, i32 0
  %981 = load i64, i64* %980, align 8
  %982 = icmp eq i64 %981, 200
  br i1 %982, label %983, label %988

983:                                              ; preds = %978, %973, %968, %963
  %984 = load %struct.call*, %struct.call** %6, align 8
  %985 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %986 = load i32, i32* %8, align 4
  %987 = call i32 @unx_release_response(%struct.call* %984, %struct.uni_msg* %985, i32 %986)
  br label %1575

988:                                              ; preds = %978
  %989 = load %struct.call*, %struct.call** %6, align 8
  %990 = getelementptr inbounds %struct.call, %struct.call* %989, i32 0, i32 1
  %991 = load %struct.uni*, %struct.uni** %990, align 8
  %992 = load i32, i32* @UNI_FAC_ERR, align 4
  %993 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %994 = load %struct.call*, %struct.call** %6, align 8
  %995 = getelementptr inbounds %struct.call, %struct.call* %994, i32 0, i32 0
  %996 = load i64, i64* %995, align 8
  %997 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %993, i64 %996
  %998 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %997, i32 0, i32 0
  %999 = load i32, i32* %998, align 4
  %1000 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %991, i32 %992, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %999)
  %1001 = load %struct.call*, %struct.call** %6, align 8
  %1002 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1003 = load i32, i32* %8, align 4
  %1004 = call i32 @uniapi_call_error(%struct.call* %1001, i32 %1002, i32 %1003)
  %1005 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1006 = call i32 @uni_msg_destroy(%struct.uni_msg* %1005)
  br label %1575

1007:                                             ; preds = %33
  %1008 = load %struct.call*, %struct.call** %6, align 8
  %1009 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1010 = load i32, i32* %8, align 4
  %1011 = call i32 @unx_notify_request(%struct.call* %1008, %struct.uni_msg* %1009, i32 %1010)
  br label %1575

1012:                                             ; preds = %33
  %1013 = load %struct.call*, %struct.call** %6, align 8
  %1014 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1015 = load i32, i32* %8, align 4
  %1016 = call i32 @unx_status_enquiry_request(%struct.call* %1013, %struct.uni_msg* %1014, i32 %1015)
  br label %1575

1017:                                             ; preds = %33
  %1018 = load %struct.call*, %struct.call** %6, align 8
  %1019 = getelementptr inbounds %struct.call, %struct.call* %1018, i32 0, i32 0
  %1020 = load i64, i64* %1019, align 8
  %1021 = icmp eq i64 %1020, 186
  br i1 %1021, label %1037, label %1022

1022:                                             ; preds = %1017
  %1023 = load %struct.call*, %struct.call** %6, align 8
  %1024 = getelementptr inbounds %struct.call, %struct.call* %1023, i32 0, i32 0
  %1025 = load i64, i64* %1024, align 8
  %1026 = icmp eq i64 %1025, 190
  br i1 %1026, label %1037, label %1027

1027:                                             ; preds = %1022
  %1028 = load %struct.call*, %struct.call** %6, align 8
  %1029 = getelementptr inbounds %struct.call, %struct.call* %1028, i32 0, i32 0
  %1030 = load i64, i64* %1029, align 8
  %1031 = icmp eq i64 %1030, 195
  br i1 %1031, label %1037, label %1032

1032:                                             ; preds = %1027
  %1033 = load %struct.call*, %struct.call** %6, align 8
  %1034 = getelementptr inbounds %struct.call, %struct.call* %1033, i32 0, i32 0
  %1035 = load i64, i64* %1034, align 8
  %1036 = icmp eq i64 %1035, 201
  br i1 %1036, label %1037, label %1042

1037:                                             ; preds = %1032, %1027, %1022, %1017
  %1038 = load %struct.call*, %struct.call** %6, align 8
  %1039 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1040 = load i32, i32* %8, align 4
  %1041 = call i32 @unx_add_party_request(%struct.call* %1038, %struct.uni_msg* %1039, i32 %1040)
  br label %1575

1042:                                             ; preds = %1032
  %1043 = load %struct.call*, %struct.call** %6, align 8
  %1044 = getelementptr inbounds %struct.call, %struct.call* %1043, i32 0, i32 1
  %1045 = load %struct.uni*, %struct.uni** %1044, align 8
  %1046 = load i32, i32* @UNI_FAC_ERR, align 4
  %1047 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1048 = load %struct.call*, %struct.call** %6, align 8
  %1049 = getelementptr inbounds %struct.call, %struct.call* %1048, i32 0, i32 0
  %1050 = load i64, i64* %1049, align 8
  %1051 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1047, i64 %1050
  %1052 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1051, i32 0, i32 0
  %1053 = load i32, i32* %1052, align 4
  %1054 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1045, i32 %1046, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %1053)
  %1055 = load %struct.call*, %struct.call** %6, align 8
  %1056 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1057 = load i32, i32* %8, align 4
  %1058 = call i32 @uniapi_call_error(%struct.call* %1055, i32 %1056, i32 %1057)
  %1059 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1060 = call i32 @uni_msg_destroy(%struct.uni_msg* %1059)
  br label %1575

1061:                                             ; preds = %33
  %1062 = load %struct.call*, %struct.call** %6, align 8
  %1063 = getelementptr inbounds %struct.call, %struct.call* %1062, i32 0, i32 0
  %1064 = load i64, i64* %1063, align 8
  %1065 = icmp eq i64 %1064, 184
  br i1 %1065, label %1086, label %1066

1066:                                             ; preds = %1061
  %1067 = load %struct.call*, %struct.call** %6, align 8
  %1068 = getelementptr inbounds %struct.call, %struct.call* %1067, i32 0, i32 0
  %1069 = load i64, i64* %1068, align 8
  %1070 = icmp eq i64 %1069, 183
  br i1 %1070, label %1086, label %1071

1071:                                             ; preds = %1066
  %1072 = load %struct.call*, %struct.call** %6, align 8
  %1073 = getelementptr inbounds %struct.call, %struct.call* %1072, i32 0, i32 0
  %1074 = load i64, i64* %1073, align 8
  %1075 = icmp eq i64 %1074, 190
  br i1 %1075, label %1086, label %1076

1076:                                             ; preds = %1071
  %1077 = load %struct.call*, %struct.call** %6, align 8
  %1078 = getelementptr inbounds %struct.call, %struct.call* %1077, i32 0, i32 0
  %1079 = load i64, i64* %1078, align 8
  %1080 = icmp eq i64 %1079, 197
  br i1 %1080, label %1086, label %1081

1081:                                             ; preds = %1076
  %1082 = load %struct.call*, %struct.call** %6, align 8
  %1083 = getelementptr inbounds %struct.call, %struct.call* %1082, i32 0, i32 0
  %1084 = load i64, i64* %1083, align 8
  %1085 = icmp eq i64 %1084, 201
  br i1 %1085, label %1086, label %1091

1086:                                             ; preds = %1081, %1076, %1071, %1066, %1061
  %1087 = load %struct.call*, %struct.call** %6, align 8
  %1088 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1089 = load i32, i32* %8, align 4
  %1090 = call i32 @unx_party_alerting_request(%struct.call* %1087, %struct.uni_msg* %1088, i32 %1089)
  br label %1575

1091:                                             ; preds = %1081
  %1092 = load %struct.call*, %struct.call** %6, align 8
  %1093 = getelementptr inbounds %struct.call, %struct.call* %1092, i32 0, i32 1
  %1094 = load %struct.uni*, %struct.uni** %1093, align 8
  %1095 = load i32, i32* @UNI_FAC_ERR, align 4
  %1096 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1097 = load %struct.call*, %struct.call** %6, align 8
  %1098 = getelementptr inbounds %struct.call, %struct.call* %1097, i32 0, i32 0
  %1099 = load i64, i64* %1098, align 8
  %1100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1096, i64 %1099
  %1101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1100, i32 0, i32 0
  %1102 = load i32, i32* %1101, align 4
  %1103 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1094, i32 %1095, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %1102)
  %1104 = load %struct.call*, %struct.call** %6, align 8
  %1105 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1106 = load i32, i32* %8, align 4
  %1107 = call i32 @uniapi_call_error(%struct.call* %1104, i32 %1105, i32 %1106)
  %1108 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1109 = call i32 @uni_msg_destroy(%struct.uni_msg* %1108)
  br label %1575

1110:                                             ; preds = %33
  %1111 = load %struct.call*, %struct.call** %6, align 8
  %1112 = getelementptr inbounds %struct.call, %struct.call* %1111, i32 0, i32 0
  %1113 = load i64, i64* %1112, align 8
  %1114 = icmp eq i64 %1113, 190
  br i1 %1114, label %1120, label %1115

1115:                                             ; preds = %1110
  %1116 = load %struct.call*, %struct.call** %6, align 8
  %1117 = getelementptr inbounds %struct.call, %struct.call* %1116, i32 0, i32 0
  %1118 = load i64, i64* %1117, align 8
  %1119 = icmp eq i64 %1118, 201
  br i1 %1119, label %1120, label %1125

1120:                                             ; preds = %1115, %1110
  %1121 = load %struct.call*, %struct.call** %6, align 8
  %1122 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1123 = load i32, i32* %8, align 4
  %1124 = call i32 @un10_add_party_ack_request(%struct.call* %1121, %struct.uni_msg* %1122, i32 %1123)
  br label %1575

1125:                                             ; preds = %1115
  %1126 = load %struct.call*, %struct.call** %6, align 8
  %1127 = getelementptr inbounds %struct.call, %struct.call* %1126, i32 0, i32 1
  %1128 = load %struct.uni*, %struct.uni** %1127, align 8
  %1129 = load i32, i32* @UNI_FAC_ERR, align 4
  %1130 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1131 = load %struct.call*, %struct.call** %6, align 8
  %1132 = getelementptr inbounds %struct.call, %struct.call* %1131, i32 0, i32 0
  %1133 = load i64, i64* %1132, align 8
  %1134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1130, i64 %1133
  %1135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1134, i32 0, i32 0
  %1136 = load i32, i32* %1135, align 4
  %1137 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1128, i32 %1129, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %1136)
  %1138 = load %struct.call*, %struct.call** %6, align 8
  %1139 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1140 = load i32, i32* %8, align 4
  %1141 = call i32 @uniapi_call_error(%struct.call* %1138, i32 %1139, i32 %1140)
  %1142 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1143 = call i32 @uni_msg_destroy(%struct.uni_msg* %1142)
  br label %1575

1144:                                             ; preds = %33
  %1145 = load %struct.call*, %struct.call** %6, align 8
  %1146 = getelementptr inbounds %struct.call, %struct.call* %1145, i32 0, i32 0
  %1147 = load i64, i64* %1146, align 8
  %1148 = icmp eq i64 %1147, 184
  br i1 %1148, label %1169, label %1149

1149:                                             ; preds = %1144
  %1150 = load %struct.call*, %struct.call** %6, align 8
  %1151 = getelementptr inbounds %struct.call, %struct.call* %1150, i32 0, i32 0
  %1152 = load i64, i64* %1151, align 8
  %1153 = icmp eq i64 %1152, 183
  br i1 %1153, label %1169, label %1154

1154:                                             ; preds = %1149
  %1155 = load %struct.call*, %struct.call** %6, align 8
  %1156 = getelementptr inbounds %struct.call, %struct.call* %1155, i32 0, i32 0
  %1157 = load i64, i64* %1156, align 8
  %1158 = icmp eq i64 %1157, 190
  br i1 %1158, label %1169, label %1159

1159:                                             ; preds = %1154
  %1160 = load %struct.call*, %struct.call** %6, align 8
  %1161 = getelementptr inbounds %struct.call, %struct.call* %1160, i32 0, i32 0
  %1162 = load i64, i64* %1161, align 8
  %1163 = icmp eq i64 %1162, 197
  br i1 %1163, label %1169, label %1164

1164:                                             ; preds = %1159
  %1165 = load %struct.call*, %struct.call** %6, align 8
  %1166 = getelementptr inbounds %struct.call, %struct.call* %1165, i32 0, i32 0
  %1167 = load i64, i64* %1166, align 8
  %1168 = icmp eq i64 %1167, 201
  br i1 %1168, label %1169, label %1174

1169:                                             ; preds = %1164, %1159, %1154, %1149, %1144
  %1170 = load %struct.call*, %struct.call** %6, align 8
  %1171 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1172 = load i32, i32* %8, align 4
  %1173 = call i32 @unx_add_party_rej_request(%struct.call* %1170, %struct.uni_msg* %1171, i32 %1172)
  br label %1575

1174:                                             ; preds = %1164
  %1175 = load %struct.call*, %struct.call** %6, align 8
  %1176 = getelementptr inbounds %struct.call, %struct.call* %1175, i32 0, i32 1
  %1177 = load %struct.uni*, %struct.uni** %1176, align 8
  %1178 = load i32, i32* @UNI_FAC_ERR, align 4
  %1179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1180 = load %struct.call*, %struct.call** %6, align 8
  %1181 = getelementptr inbounds %struct.call, %struct.call* %1180, i32 0, i32 0
  %1182 = load i64, i64* %1181, align 8
  %1183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1179, i64 %1182
  %1184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1183, i32 0, i32 0
  %1185 = load i32, i32* %1184, align 4
  %1186 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1177, i32 %1178, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %1185)
  %1187 = load %struct.call*, %struct.call** %6, align 8
  %1188 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1189 = load i32, i32* %8, align 4
  %1190 = call i32 @uniapi_call_error(%struct.call* %1187, i32 %1188, i32 %1189)
  %1191 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1192 = call i32 @uni_msg_destroy(%struct.uni_msg* %1191)
  br label %1575

1193:                                             ; preds = %33
  %1194 = load %struct.call*, %struct.call** %6, align 8
  %1195 = getelementptr inbounds %struct.call, %struct.call* %1194, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 8
  %1197 = icmp ne i64 %1196, 189
  br i1 %1197, label %1198, label %1223

1198:                                             ; preds = %1193
  %1199 = load %struct.call*, %struct.call** %6, align 8
  %1200 = getelementptr inbounds %struct.call, %struct.call* %1199, i32 0, i32 0
  %1201 = load i64, i64* %1200, align 8
  %1202 = icmp ne i64 %1201, 188
  br i1 %1202, label %1203, label %1223

1203:                                             ; preds = %1198
  %1204 = load %struct.call*, %struct.call** %6, align 8
  %1205 = getelementptr inbounds %struct.call, %struct.call* %1204, i32 0, i32 0
  %1206 = load i64, i64* %1205, align 8
  %1207 = icmp ne i64 %1206, 200
  br i1 %1207, label %1208, label %1223

1208:                                             ; preds = %1203
  %1209 = load %struct.call*, %struct.call** %6, align 8
  %1210 = getelementptr inbounds %struct.call, %struct.call* %1209, i32 0, i32 0
  %1211 = load i64, i64* %1210, align 8
  %1212 = icmp ne i64 %1211, 199
  br i1 %1212, label %1213, label %1223

1213:                                             ; preds = %1208
  %1214 = load %struct.call*, %struct.call** %6, align 8
  %1215 = getelementptr inbounds %struct.call, %struct.call* %1214, i32 0, i32 0
  %1216 = load i64, i64* %1215, align 8
  %1217 = icmp ne i64 %1216, 192
  br i1 %1217, label %1218, label %1223

1218:                                             ; preds = %1213
  %1219 = load %struct.call*, %struct.call** %6, align 8
  %1220 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1221 = load i32, i32* %8, align 4
  %1222 = call i32 @unx_drop_party_request(%struct.call* %1219, %struct.uni_msg* %1220, i32 %1221)
  br label %1575

1223:                                             ; preds = %1213, %1208, %1203, %1198, %1193
  %1224 = load %struct.call*, %struct.call** %6, align 8
  %1225 = getelementptr inbounds %struct.call, %struct.call* %1224, i32 0, i32 1
  %1226 = load %struct.uni*, %struct.uni** %1225, align 8
  %1227 = load i32, i32* @UNI_FAC_ERR, align 4
  %1228 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1229 = load %struct.call*, %struct.call** %6, align 8
  %1230 = getelementptr inbounds %struct.call, %struct.call* %1229, i32 0, i32 0
  %1231 = load i64, i64* %1230, align 8
  %1232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1228, i64 %1231
  %1233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1232, i32 0, i32 0
  %1234 = load i32, i32* %1233, align 4
  %1235 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1226, i32 %1227, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %1234)
  %1236 = load %struct.call*, %struct.call** %6, align 8
  %1237 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1238 = load i32, i32* %8, align 4
  %1239 = call i32 @uniapi_call_error(%struct.call* %1236, i32 %1237, i32 %1238)
  %1240 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1241 = call i32 @uni_msg_destroy(%struct.uni_msg* %1240)
  br label %1575

1242:                                             ; preds = %33
  %1243 = load %struct.call*, %struct.call** %6, align 8
  %1244 = getelementptr inbounds %struct.call, %struct.call* %1243, i32 0, i32 0
  %1245 = load i64, i64* %1244, align 8
  %1246 = icmp ne i64 %1245, 189
  br i1 %1246, label %1247, label %1272

1247:                                             ; preds = %1242
  %1248 = load %struct.call*, %struct.call** %6, align 8
  %1249 = getelementptr inbounds %struct.call, %struct.call* %1248, i32 0, i32 0
  %1250 = load i64, i64* %1249, align 8
  %1251 = icmp ne i64 %1250, 188
  br i1 %1251, label %1252, label %1272

1252:                                             ; preds = %1247
  %1253 = load %struct.call*, %struct.call** %6, align 8
  %1254 = getelementptr inbounds %struct.call, %struct.call* %1253, i32 0, i32 0
  %1255 = load i64, i64* %1254, align 8
  %1256 = icmp ne i64 %1255, 200
  br i1 %1256, label %1257, label %1272

1257:                                             ; preds = %1252
  %1258 = load %struct.call*, %struct.call** %6, align 8
  %1259 = getelementptr inbounds %struct.call, %struct.call* %1258, i32 0, i32 0
  %1260 = load i64, i64* %1259, align 8
  %1261 = icmp ne i64 %1260, 199
  br i1 %1261, label %1262, label %1272

1262:                                             ; preds = %1257
  %1263 = load %struct.call*, %struct.call** %6, align 8
  %1264 = getelementptr inbounds %struct.call, %struct.call* %1263, i32 0, i32 0
  %1265 = load i64, i64* %1264, align 8
  %1266 = icmp ne i64 %1265, 192
  br i1 %1266, label %1267, label %1272

1267:                                             ; preds = %1262
  %1268 = load %struct.call*, %struct.call** %6, align 8
  %1269 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1270 = load i32, i32* %8, align 4
  %1271 = call i32 @unx_drop_party_ack_request(%struct.call* %1268, %struct.uni_msg* %1269, i32 %1270)
  br label %1575

1272:                                             ; preds = %1262, %1257, %1252, %1247, %1242
  %1273 = load %struct.call*, %struct.call** %6, align 8
  %1274 = getelementptr inbounds %struct.call, %struct.call* %1273, i32 0, i32 1
  %1275 = load %struct.uni*, %struct.uni** %1274, align 8
  %1276 = load i32, i32* @UNI_FAC_ERR, align 4
  %1277 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1278 = load %struct.call*, %struct.call** %6, align 8
  %1279 = getelementptr inbounds %struct.call, %struct.call* %1278, i32 0, i32 0
  %1280 = load i64, i64* %1279, align 8
  %1281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1277, i64 %1280
  %1282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1281, i32 0, i32 0
  %1283 = load i32, i32* %1282, align 4
  %1284 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1275, i32 %1276, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %1283)
  %1285 = load %struct.call*, %struct.call** %6, align 8
  %1286 = load i32, i32* @UNIAPI_ERROR_BAD_CALLSTATE, align 4
  %1287 = load i32, i32* %8, align 4
  %1288 = call i32 @uniapi_call_error(%struct.call* %1285, i32 %1286, i32 %1287)
  %1289 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1290 = call i32 @uni_msg_destroy(%struct.uni_msg* %1289)
  br label %1575

1291:                                             ; preds = %33
  %1292 = load %struct.call*, %struct.call** %6, align 8
  %1293 = getelementptr inbounds %struct.call, %struct.call* %1292, i32 0, i32 1
  %1294 = load %struct.uni*, %struct.uni** %1293, align 8
  store %struct.uni* %1294, %struct.uni** %11, align 8
  %1295 = load %struct.call*, %struct.call** %6, align 8
  %1296 = call i32 @uni_destroy_call(%struct.call* %1295, i32 0)
  %1297 = load %struct.uni*, %struct.uni** %11, align 8
  %1298 = load i32, i32* @UNIAPI_OK, align 4
  %1299 = load i32, i32* %8, align 4
  %1300 = load i32, i32* @UNI_CALLSTATE_U0, align 4
  %1301 = call i32 @uniapi_uni_error(%struct.uni* %1297, i32 %1298, i32 %1299, i32 %1300)
  br label %1575

1302:                                             ; preds = %33
  %1303 = load %struct.call*, %struct.call** %6, align 8
  %1304 = getelementptr inbounds %struct.call, %struct.call* %1303, i32 0, i32 0
  %1305 = load i64, i64* %1304, align 8
  %1306 = icmp eq i64 %1305, 186
  br i1 %1306, label %1312, label %1307

1307:                                             ; preds = %1302
  %1308 = load %struct.call*, %struct.call** %6, align 8
  %1309 = getelementptr inbounds %struct.call, %struct.call* %1308, i32 0, i32 0
  %1310 = load i64, i64* %1309, align 8
  %1311 = icmp eq i64 %1310, 195
  br i1 %1311, label %1312, label %1315

1312:                                             ; preds = %1307, %1302
  %1313 = load %struct.call*, %struct.call** %6, align 8
  %1314 = call i32 @u4n7_t301(%struct.call* %1313)
  br label %1575

1315:                                             ; preds = %1307
  %1316 = load %struct.call*, %struct.call** %6, align 8
  %1317 = getelementptr inbounds %struct.call, %struct.call* %1316, i32 0, i32 1
  %1318 = load %struct.uni*, %struct.uni** %1317, align 8
  %1319 = load i32, i32* @UNI_FAC_ERR, align 4
  %1320 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1321 = load %struct.call*, %struct.call** %6, align 8
  %1322 = getelementptr inbounds %struct.call, %struct.call* %1321, i32 0, i32 0
  %1323 = load i64, i64* %1322, align 8
  %1324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1320, i64 %1323
  %1325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1324, i32 0, i32 0
  %1326 = load i32, i32* %1325, align 4
  %1327 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1318, i32 %1319, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %1326)
  br label %1575

1328:                                             ; preds = %33
  %1329 = load %struct.call*, %struct.call** %6, align 8
  %1330 = getelementptr inbounds %struct.call, %struct.call* %1329, i32 0, i32 0
  %1331 = load i64, i64* %1330, align 8
  %1332 = icmp eq i64 %1331, 191
  br i1 %1332, label %1338, label %1333

1333:                                             ; preds = %1328
  %1334 = load %struct.call*, %struct.call** %6, align 8
  %1335 = getelementptr inbounds %struct.call, %struct.call* %1334, i32 0, i32 0
  %1336 = load i64, i64* %1335, align 8
  %1337 = icmp eq i64 %1336, 196
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1333, %1328
  %1339 = load %struct.call*, %struct.call** %6, align 8
  %1340 = call i32 @u1n6_t303(%struct.call* %1339)
  br label %1575

1341:                                             ; preds = %1333
  %1342 = load %struct.call*, %struct.call** %6, align 8
  %1343 = getelementptr inbounds %struct.call, %struct.call* %1342, i32 0, i32 1
  %1344 = load %struct.uni*, %struct.uni** %1343, align 8
  %1345 = load i32, i32* @UNI_FAC_ERR, align 4
  %1346 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1347 = load %struct.call*, %struct.call** %6, align 8
  %1348 = getelementptr inbounds %struct.call, %struct.call* %1347, i32 0, i32 0
  %1349 = load i64, i64* %1348, align 8
  %1350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1346, i64 %1349
  %1351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1350, i32 0, i32 0
  %1352 = load i32, i32* %1351, align 4
  %1353 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1344, i32 %1345, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %1352)
  br label %1575

1354:                                             ; preds = %33
  %1355 = load %struct.call*, %struct.call** %6, align 8
  %1356 = getelementptr inbounds %struct.call, %struct.call* %1355, i32 0, i32 0
  %1357 = load i64, i64* %1356, align 8
  %1358 = icmp eq i64 %1357, 189
  br i1 %1358, label %1364, label %1359

1359:                                             ; preds = %1354
  %1360 = load %struct.call*, %struct.call** %6, align 8
  %1361 = getelementptr inbounds %struct.call, %struct.call* %1360, i32 0, i32 0
  %1362 = load i64, i64* %1361, align 8
  %1363 = icmp eq i64 %1362, 199
  br i1 %1363, label %1364, label %1367

1364:                                             ; preds = %1359, %1354
  %1365 = load %struct.call*, %struct.call** %6, align 8
  %1366 = call i32 @u11n12_t308(%struct.call* %1365)
  br label %1575

1367:                                             ; preds = %1359
  %1368 = load %struct.call*, %struct.call** %6, align 8
  %1369 = getelementptr inbounds %struct.call, %struct.call* %1368, i32 0, i32 1
  %1370 = load %struct.uni*, %struct.uni** %1369, align 8
  %1371 = load i32, i32* @UNI_FAC_ERR, align 4
  %1372 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1373 = load %struct.call*, %struct.call** %6, align 8
  %1374 = getelementptr inbounds %struct.call, %struct.call* %1373, i32 0, i32 0
  %1375 = load i64, i64* %1374, align 8
  %1376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1372, i64 %1375
  %1377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1376, i32 0, i32 0
  %1378 = load i32, i32* %1377, align 4
  %1379 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1370, i32 %1371, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %1378)
  br label %1575

1380:                                             ; preds = %33
  %1381 = load %struct.call*, %struct.call** %6, align 8
  %1382 = getelementptr inbounds %struct.call, %struct.call* %1381, i32 0, i32 0
  %1383 = load i64, i64* %1382, align 8
  %1384 = icmp eq i64 %1383, 187
  br i1 %1384, label %1390, label %1385

1385:                                             ; preds = %1380
  %1386 = load %struct.call*, %struct.call** %6, align 8
  %1387 = getelementptr inbounds %struct.call, %struct.call* %1386, i32 0, i32 0
  %1388 = load i64, i64* %1387, align 8
  %1389 = icmp eq i64 %1388, 193
  br i1 %1389, label %1390, label %1393

1390:                                             ; preds = %1385, %1380
  %1391 = load %struct.call*, %struct.call** %6, align 8
  %1392 = call i32 @u3n9_t310(%struct.call* %1391)
  br label %1575

1393:                                             ; preds = %1385
  %1394 = load %struct.call*, %struct.call** %6, align 8
  %1395 = getelementptr inbounds %struct.call, %struct.call* %1394, i32 0, i32 1
  %1396 = load %struct.uni*, %struct.uni** %1395, align 8
  %1397 = load i32, i32* @UNI_FAC_ERR, align 4
  %1398 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1399 = load %struct.call*, %struct.call** %6, align 8
  %1400 = getelementptr inbounds %struct.call, %struct.call* %1399, i32 0, i32 0
  %1401 = load i64, i64* %1400, align 8
  %1402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1398, i64 %1401
  %1403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1402, i32 0, i32 0
  %1404 = load i32, i32* %1403, align 4
  %1405 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1396, i32 %1397, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %1404)
  br label %1575

1406:                                             ; preds = %33
  %1407 = load %struct.call*, %struct.call** %6, align 8
  %1408 = getelementptr inbounds %struct.call, %struct.call* %1407, i32 0, i32 0
  %1409 = load i64, i64* %1408, align 8
  %1410 = icmp eq i64 %1409, 183
  br i1 %1410, label %1411, label %1414

1411:                                             ; preds = %1406
  %1412 = load %struct.call*, %struct.call** %6, align 8
  %1413 = call i32 @u8_t313(%struct.call* %1412)
  br label %1575

1414:                                             ; preds = %1406
  %1415 = load %struct.call*, %struct.call** %6, align 8
  %1416 = getelementptr inbounds %struct.call, %struct.call* %1415, i32 0, i32 1
  %1417 = load %struct.uni*, %struct.uni** %1416, align 8
  %1418 = load i32, i32* @UNI_FAC_ERR, align 4
  %1419 = load %struct.TYPE_15__*, %struct.TYPE_15__** @callstates, align 8
  %1420 = load %struct.call*, %struct.call** %6, align 8
  %1421 = getelementptr inbounds %struct.call, %struct.call* %1420, i32 0, i32 0
  %1422 = load i64, i64* %1421, align 8
  %1423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1419, i64 %1422
  %1424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1423, i32 0, i32 0
  %1425 = load i32, i32* %1424, align 4
  %1426 = call i32 (%struct.uni*, i32, i32, i8*, i32, ...) @VERBOSE(%struct.uni* %1417, i32 %1418, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %1425)
  br label %1575

1427:                                             ; preds = %33
  %1428 = load %struct.call*, %struct.call** %6, align 8
  %1429 = call i32 @unx_t322(%struct.call* %1428)
  br label %1575

1430:                                             ; preds = %33
  %1431 = load %struct.call*, %struct.call** %6, align 8
  %1432 = call i32 @CALL_FREE(%struct.call* %1431)
  br label %1575

1433:                                             ; preds = %33
  %1434 = load %struct.call*, %struct.call** %6, align 8
  %1435 = getelementptr inbounds %struct.call, %struct.call* %1434, i32 0, i32 1
  %1436 = load %struct.uni*, %struct.uni** %1435, align 8
  %1437 = getelementptr inbounds %struct.uni, %struct.uni* %1436, i32 0, i32 3
  %1438 = load i32, i32* %1437, align 4
  %1439 = load i32, i32* @UNIPROTO_UNI40U, align 4
  %1440 = icmp eq i32 %1438, %1439
  br i1 %1440, label %1441, label %1445

1441:                                             ; preds = %1433
  %1442 = load %struct.call*, %struct.call** %6, align 8
  %1443 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1444 = call i32 @ux_drop_party_indication(%struct.call* %1442, %struct.uni_msg* %1443)
  br label %1449

1445:                                             ; preds = %1433
  %1446 = load %struct.call*, %struct.call** %6, align 8
  %1447 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1448 = call i32 @nx_drop_party_indication(%struct.call* %1446, %struct.uni_msg* %1447)
  br label %1449

1449:                                             ; preds = %1445, %1441
  br label %1575

1450:                                             ; preds = %33
  %1451 = load %struct.call*, %struct.call** %6, align 8
  %1452 = getelementptr inbounds %struct.call, %struct.call* %1451, i32 0, i32 1
  %1453 = load %struct.uni*, %struct.uni** %1452, align 8
  %1454 = getelementptr inbounds %struct.uni, %struct.uni* %1453, i32 0, i32 3
  %1455 = load i32, i32* %1454, align 4
  %1456 = load i32, i32* @UNIPROTO_UNI40U, align 4
  %1457 = icmp eq i32 %1455, %1456
  br i1 %1457, label %1458, label %1462

1458:                                             ; preds = %1450
  %1459 = load %struct.call*, %struct.call** %6, align 8
  %1460 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1461 = call i32 @ux_drop_party_ack_indication(%struct.call* %1459, %struct.uni_msg* %1460)
  br label %1466

1462:                                             ; preds = %1450
  %1463 = load %struct.call*, %struct.call** %6, align 8
  %1464 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1465 = call i32 @nx_drop_party_ack_indication(%struct.call* %1463, %struct.uni_msg* %1464)
  br label %1466

1466:                                             ; preds = %1462, %1458
  br label %1575

1467:                                             ; preds = %33
  %1468 = load %struct.call*, %struct.call** %6, align 8
  %1469 = getelementptr inbounds %struct.call, %struct.call* %1468, i32 0, i32 1
  %1470 = load %struct.uni*, %struct.uni** %1469, align 8
  %1471 = getelementptr inbounds %struct.uni, %struct.uni* %1470, i32 0, i32 3
  %1472 = load i32, i32* %1471, align 4
  %1473 = load i32, i32* @UNIPROTO_UNI40U, align 4
  %1474 = icmp eq i32 %1472, %1473
  br i1 %1474, label %1475, label %1479

1475:                                             ; preds = %1467
  %1476 = load %struct.call*, %struct.call** %6, align 8
  %1477 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1478 = call i32 @ux_add_party_rej_indication(%struct.call* %1476, %struct.uni_msg* %1477)
  br label %1483

1479:                                             ; preds = %1467
  %1480 = load %struct.call*, %struct.call** %6, align 8
  %1481 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1482 = call i32 @nx_add_party_rej_indication(%struct.call* %1480, %struct.uni_msg* %1481)
  br label %1483

1483:                                             ; preds = %1479, %1475
  br label %1575

1484:                                             ; preds = %33
  %1485 = load %struct.call*, %struct.call** %6, align 8
  %1486 = call i32 @uni_party_act_count(%struct.call* %1485, i32 2)
  %1487 = icmp ne i32 %1486, 0
  br i1 %1487, label %1488, label %1494

1488:                                             ; preds = %1484
  %1489 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1490 = load %struct.call*, %struct.call** %6, align 8
  %1491 = getelementptr inbounds %struct.call, %struct.call* %1490, i32 0, i32 1
  %1492 = load %struct.uni*, %struct.uni** %1491, align 8
  %1493 = call i32 @uni_send_output(%struct.uni_all* %1489, %struct.uni* %1492)
  br label %1512

1494:                                             ; preds = %1484
  %1495 = load %struct.call*, %struct.call** %6, align 8
  %1496 = getelementptr inbounds %struct.call, %struct.call* %1495, i32 0, i32 0
  %1497 = load i64, i64* %1496, align 8
  %1498 = icmp ne i64 %1497, 189
  br i1 %1498, label %1499, label %1511

1499:                                             ; preds = %1494
  %1500 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1501 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %1500, i32 0, i32 0
  %1502 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1502, i32 0, i32 0
  %1504 = load i32, i32* %1503, align 4
  %1505 = load %struct.call*, %struct.call** %6, align 8
  %1506 = getelementptr inbounds %struct.call, %struct.call* %1505, i32 0, i32 1
  %1507 = load %struct.uni*, %struct.uni** %1506, align 8
  %1508 = getelementptr inbounds %struct.uni, %struct.uni* %1507, i32 0, i32 2
  store i32 %1504, i32* %1508, align 8
  %1509 = load %struct.call*, %struct.call** %6, align 8
  %1510 = call i32 @clear_callD(%struct.call* %1509)
  br label %1511

1511:                                             ; preds = %1499, %1494
  br label %1512

1512:                                             ; preds = %1511, %1488
  %1513 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1514 = call i32 @UNI_FREE(%struct.uni_all* %1513)
  br label %1575

1515:                                             ; preds = %33
  %1516 = load %struct.call*, %struct.call** %6, align 8
  %1517 = call i32 @uni_party_act_count(%struct.call* %1516, i32 2)
  %1518 = icmp ne i32 %1517, 0
  br i1 %1518, label %1519, label %1525

1519:                                             ; preds = %1515
  %1520 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1521 = load %struct.call*, %struct.call** %6, align 8
  %1522 = getelementptr inbounds %struct.call, %struct.call* %1521, i32 0, i32 1
  %1523 = load %struct.uni*, %struct.uni** %1522, align 8
  %1524 = call i32 @uni_send_output(%struct.uni_all* %1520, %struct.uni* %1523)
  br label %1543

1525:                                             ; preds = %1515
  %1526 = load %struct.call*, %struct.call** %6, align 8
  %1527 = getelementptr inbounds %struct.call, %struct.call* %1526, i32 0, i32 0
  %1528 = load i64, i64* %1527, align 8
  %1529 = icmp ne i64 %1528, 189
  br i1 %1529, label %1530, label %1542

1530:                                             ; preds = %1525
  %1531 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1532 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1532, i32 0, i32 0
  %1534 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1533, i32 0, i32 0
  %1535 = load i32, i32* %1534, align 4
  %1536 = load %struct.call*, %struct.call** %6, align 8
  %1537 = getelementptr inbounds %struct.call, %struct.call* %1536, i32 0, i32 1
  %1538 = load %struct.uni*, %struct.uni** %1537, align 8
  %1539 = getelementptr inbounds %struct.uni, %struct.uni* %1538, i32 0, i32 2
  store i32 %1535, i32* %1539, align 8
  %1540 = load %struct.call*, %struct.call** %6, align 8
  %1541 = call i32 @clear_callD(%struct.call* %1540)
  br label %1542

1542:                                             ; preds = %1530, %1525
  br label %1543

1543:                                             ; preds = %1542, %1519
  %1544 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1545 = call i32 @UNI_FREE(%struct.uni_all* %1544)
  br label %1575

1546:                                             ; preds = %33
  %1547 = load %struct.call*, %struct.call** %6, align 8
  %1548 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1549 = call i32 @unx_send_add_party_rej(%struct.call* %1547, %struct.uni_all* %1548)
  br label %1575

1550:                                             ; preds = %33
  %1551 = load %struct.call*, %struct.call** %6, align 8
  %1552 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1553 = call i32 @unx_send_party_status_enq(%struct.call* %1551, %struct.uni_all* %1552)
  br label %1575

1554:                                             ; preds = %33
  %1555 = load %struct.call*, %struct.call** %6, align 8
  %1556 = getelementptr inbounds %struct.call, %struct.call* %1555, i32 0, i32 1
  %1557 = load %struct.uni*, %struct.uni** %1556, align 8
  %1558 = getelementptr inbounds %struct.uni, %struct.uni* %1557, i32 0, i32 1
  %1559 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1558, align 8
  %1560 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1559, i32 0, i32 0
  %1561 = load i32 (%struct.uni*, i32, i32, i32, %struct.uni_msg*)*, i32 (%struct.uni*, i32, i32, i32, %struct.uni_msg*)** %1560, align 8
  %1562 = load %struct.call*, %struct.call** %6, align 8
  %1563 = getelementptr inbounds %struct.call, %struct.call* %1562, i32 0, i32 1
  %1564 = load %struct.uni*, %struct.uni** %1563, align 8
  %1565 = load %struct.call*, %struct.call** %6, align 8
  %1566 = getelementptr inbounds %struct.call, %struct.call* %1565, i32 0, i32 1
  %1567 = load %struct.uni*, %struct.uni** %1566, align 8
  %1568 = getelementptr inbounds %struct.uni, %struct.uni* %1567, i32 0, i32 0
  %1569 = load i32, i32* %1568, align 8
  %1570 = load i32, i32* @UNIAPI_PARTY_DESTROYED, align 4
  %1571 = load i32, i32* %8, align 4
  %1572 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1573 = call i32 %1561(%struct.uni* %1564, i32 %1569, i32 %1570, i32 %1571, %struct.uni_msg* %1572)
  br label %1575

1574:                                             ; preds = %33
  br label %1575

1575:                                             ; preds = %33, %1574, %1554, %1550, %1546, %1543, %1512, %1483, %1466, %1449, %1430, %1427, %1414, %1411, %1393, %1390, %1367, %1364, %1341, %1338, %1315, %1312, %1291, %1272, %1267, %1223, %1218, %1174, %1169, %1125, %1120, %1091, %1086, %1042, %1037, %1012, %1007, %988, %983, %962, %910, %905, %890, %861, %856, %846, %822, %817, %793, %788, %768, %734, %733, %705, %704, %650, %583, %546, %509, %472, %424, %419, %414, %389, %384, %383, %349, %339, %313, %293, %257, %247, %216, %206, %200, %156, %153, %140, %129, %102, %89, %78
  br label %1581

1576:                                             ; preds = %684, %683, %670, %617, %616, %603, %560, %523, %486, %467, %448, %363, %354, %318, %262, %221, %166
  %1577 = load %struct.uni_msg*, %struct.uni_msg** %9, align 8
  %1578 = call i32 @uni_msg_destroy(%struct.uni_msg* %1577)
  %1579 = load %struct.uni_all*, %struct.uni_all** %10, align 8
  %1580 = call i32 @UNI_FREE(%struct.uni_all* %1579)
  br label %1581

1581:                                             ; preds = %1576, %1575, %32
  ret void
}

declare dso_local i32 @VERBOSE(%struct.uni*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @un10_link_release_indication(%struct.call*) #1

declare dso_local i32 @unx_link_release_indication(%struct.call*) #1

declare dso_local i32 @un10_link_establish_error_indication(%struct.call*) #1

declare dso_local i32 @unx_link_establish_indication(%struct.call*) #1

declare dso_local i32 @un10_link_establish_indication(%struct.call*) #1

declare dso_local i32 @un10_link_establish_confirm(%struct.call*) #1

declare dso_local i32 @unx_unknown(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @uni_bad_message(%struct.call*, %struct.uni_all*, i32, i32*, i32) #1

declare dso_local i32 @un0_setup(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @u1n6_call_proc(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_alerting(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_connect(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @u8_connect_ack(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @n10_connect_ack(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @u11n12_release(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @unx_release(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_release_compl(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @unx_notify(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @un11un12_status(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @unx_status(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @unx_status_enq(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @unx_add_party(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_party_alerting(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @un10n8_add_party_ack(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_add_party_rej(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_drop_party(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @unx_drop_party_ack(%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32) #1

declare dso_local i32 @un0_setup_request(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @uniapi_call_error(%struct.call*, i32, i32) #1

declare dso_local i32 @unx_setup_response(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @n8_setup_compl_request(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @u6n1_proceeding_request(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @unx_alerting_request(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @unx_release_request(%struct.call*, %struct.uni_msg*, i32, i32) #1

declare dso_local i32 @unx_release_response(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_notify_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_status_enquiry_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_add_party_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_party_alerting_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @un10_add_party_ack_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_add_party_rej_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_drop_party_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @unx_drop_party_ack_request(%struct.call*, %struct.uni_msg*, i32) #1

declare dso_local i32 @uni_destroy_call(%struct.call*, i32) #1

declare dso_local i32 @uniapi_uni_error(%struct.uni*, i32, i32, i32) #1

declare dso_local i32 @u4n7_t301(%struct.call*) #1

declare dso_local i32 @u1n6_t303(%struct.call*) #1

declare dso_local i32 @u11n12_t308(%struct.call*) #1

declare dso_local i32 @u3n9_t310(%struct.call*) #1

declare dso_local i32 @u8_t313(%struct.call*) #1

declare dso_local i32 @unx_t322(%struct.call*) #1

declare dso_local i32 @CALL_FREE(%struct.call*) #1

declare dso_local i32 @ux_drop_party_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @nx_drop_party_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @ux_drop_party_ack_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @nx_drop_party_ack_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @ux_add_party_rej_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @nx_add_party_rej_indication(%struct.call*, %struct.uni_msg*) #1

declare dso_local i32 @uni_party_act_count(%struct.call*, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.uni*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @unx_send_add_party_rej(%struct.call*, %struct.uni_all*) #1

declare dso_local i32 @unx_send_party_status_enq(%struct.call*, %struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
