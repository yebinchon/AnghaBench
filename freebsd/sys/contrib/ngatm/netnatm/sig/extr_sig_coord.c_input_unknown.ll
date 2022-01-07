; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__ }
%struct.call = type { i32 }

@UNI_CAUSE_CREF_INV = common dso_local global i32 0, align 4
@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"UNKNOWN MTYPE = %x\00", align 1
@SIGC_SETUP = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U0 = common dso_local global i32 0, align 4
@UNI_CAUSE_MSG_INCOMP = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_STATUS = common dso_local global i32 0, align 4
@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4
@SIGC_COBISETUP = common dso_local global i32 0, align 4
@UNI_CODING_ITU = common dso_local global i32 0, align 4
@UNI_DIAG_MTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, %struct.uni_msg*, %struct.uni_all*)* @input_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_unknown(%struct.uni* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.uni*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  %7 = alloca %struct.uni_all*, align 8
  %8 = alloca %struct.call*, align 8
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 4
  store %struct.uni* %0, %struct.uni** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %14 = load i32, i32* @UNI_CAUSE_CREF_INV, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.uni*, %struct.uni** %4, align 8
  %16 = load i32, i32* @UNI_FAC_COORD, align 4
  %17 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %18 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @VERBOSE(%struct.uni* %15, i32 %16, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %22 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %24 [
    i32 130, label %25
    i32 131, label %51
    i32 129, label %52
    i32 128, label %83
    i32 132, label %181
  ]

24:                                               ; preds = %3
  br label %207

25:                                               ; preds = %3
  %26 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %27 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %251

34:                                               ; preds = %25
  %35 = load %struct.uni*, %struct.uni** %4, align 8
  %36 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %37 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.call* @uni_create_call(%struct.uni* %35, i32 %41, i32 0, i32 0)
  store %struct.call* %42, %struct.call** %8, align 8
  %43 = icmp ne %struct.call* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.call*, %struct.call** %8, align 8
  %46 = load i32, i32* @SIGC_SETUP, align 4
  %47 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %48 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %49 = call i32 @uni_enq_call(%struct.call* %45, i32 %46, i32 0, %struct.uni_msg* %47, %struct.uni_all* %48)
  br label %256

50:                                               ; preds = %34
  br label %251

51:                                               ; preds = %3
  br label %251

52:                                               ; preds = %3
  %53 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %54 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %55 = load %struct.uni*, %struct.uni** %4, align 8
  %56 = getelementptr inbounds %struct.uni, %struct.uni* %55, i32 0, i32 0
  %57 = call i32 @uni_decode_body(%struct.uni_msg* %53, %struct.uni_all* %54, i32* %56)
  %58 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %59 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = bitcast { i64, i32 }* %10 to i8*
  %63 = bitcast %struct.TYPE_16__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IE_ISGOOD(i64 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %52
  br label %251

71:                                               ; preds = %52
  %72 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %73 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UNI_CALLSTATE_U0, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %251

81:                                               ; preds = %71
  %82 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  store i32 %82, i32* %9, align 4
  br label %207

83:                                               ; preds = %3
  %84 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %84, %struct.uni_all** %7, align 8
  %85 = icmp eq %struct.uni_all* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %251

87:                                               ; preds = %83
  %88 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %89 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %90 = load %struct.uni*, %struct.uni** %4, align 8
  %91 = getelementptr inbounds %struct.uni, %struct.uni* %90, i32 0, i32 0
  %92 = call i32 @uni_decode_body(%struct.uni_msg* %88, %struct.uni_all* %89, i32* %91)
  %93 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %94 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %95 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = call i32 @MK_MSG_RESP(%struct.uni_all* %93, i32 129, %struct.TYPE_15__* %97)
  %99 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %100 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i32, i32* @UNI_CALLSTATE_U0, align 4
  %104 = bitcast { i64, i32 }* %11 to i8*
  %105 = bitcast %struct.TYPE_16__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 12, i1 false)
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %107 = load i64, i64* %106, align 4
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MK_IE_CALLSTATE(i64 %107, i32 %109, i32 %103)
  %111 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %112 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %117 = load i32, i32* @UNI_CAUSE_STATUS, align 4
  %118 = call i32 @MK_IE_CAUSE(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %120 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = bitcast { i64, i32 }* %12 to i8*
  %124 = bitcast %struct.TYPE_16__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 12, i1 false)
  %125 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @IE_ISGOOD(i64 %126, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %87
  %132 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %133 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %137 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = bitcast %struct.TYPE_16__* %135 to i8*
  %141 = bitcast %struct.TYPE_16__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 8 %141, i64 12, i1 false)
  %142 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %143 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %147 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %153 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = bitcast { i64, i32 }* %13 to i8*
  %162 = bitcast %struct.TYPE_16__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %164 = load i64, i64* %163, align 4
  %165 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @MK_IE_EPREF(i64 %164, i32 %166, i32 %151, i32 %160)
  %168 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %169 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %174 = call i32 @MK_IE_EPSTATE(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %131, %87
  %176 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %177 = load %struct.uni*, %struct.uni** %4, align 8
  %178 = call i32 @uni_send_output(%struct.uni_all* %176, %struct.uni* %177)
  %179 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %180 = call i32 @UNI_FREE(%struct.uni_all* %179)
  br label %251

181:                                              ; preds = %3
  %182 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %183 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %251

190:                                              ; preds = %181
  %191 = load %struct.uni*, %struct.uni** %4, align 8
  %192 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %193 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.call* @uni_create_call(%struct.uni* %191, i32 %197, i32 0, i32 0)
  store %struct.call* %198, %struct.call** %8, align 8
  %199 = icmp ne %struct.call* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %190
  %201 = load %struct.call*, %struct.call** %8, align 8
  %202 = load i32, i32* @SIGC_COBISETUP, align 4
  %203 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %204 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %205 = call i32 @uni_enq_call(%struct.call* %201, i32 %202, i32 0, %struct.uni_msg* %203, %struct.uni_all* %204)
  br label %256

206:                                              ; preds = %190
  br label %251

207:                                              ; preds = %81, %24
  %208 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %208, %struct.uni_all** %7, align 8
  %209 = icmp eq %struct.uni_all* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %251

211:                                              ; preds = %207
  %212 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %213 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %214 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = call i32 @MK_MSG_RESP(%struct.uni_all* %212, i32 131, %struct.TYPE_15__* %216)
  %218 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %219 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @MK_IE_CAUSE(i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @UNI_CODING_ITU, align 4
  %230 = call i64 @uni_diag(i32 %228, i32 %229)
  %231 = load i64, i64* @UNI_DIAG_MTYPE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %211
  %234 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %235 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %242 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ADD_CAUSE_MTYPE(i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %233, %211
  %246 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %247 = load %struct.uni*, %struct.uni** %4, align 8
  %248 = call i32 @uni_send_output(%struct.uni_all* %246, %struct.uni* %247)
  %249 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %250 = call i32 @UNI_FREE(%struct.uni_all* %249)
  br label %251

251:                                              ; preds = %245, %210, %206, %189, %175, %86, %80, %70, %51, %50, %33
  %252 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %253 = call i32 @UNI_FREE(%struct.uni_all* %252)
  %254 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %255 = call i32 @uni_msg_destroy(%struct.uni_msg* %254)
  br label %256

256:                                              ; preds = %251, %200, %44
  ret void
}

declare dso_local i32 @VERBOSE(%struct.uni*, i32, i32, i8*, i32) #1

declare dso_local %struct.call* @uni_create_call(%struct.uni*, i32, i32, i32) #1

declare dso_local i32 @uni_enq_call(%struct.call*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @IE_ISGOOD(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_RESP(%struct.uni_all*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @MK_IE_CALLSTATE(i64, i32, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @MK_IE_EPREF(i64, i32, i32, i32) #1

declare dso_local i32 @MK_IE_EPSTATE(i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.uni*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i64 @uni_diag(i32, i32) #1

declare dso_local i32 @ADD_CAUSE_MTYPE(i32, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
