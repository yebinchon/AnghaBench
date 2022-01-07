; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_bulk_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_bulk_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i64, i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.bulk_waiter = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32*, i32 }

@VCHIQ_BULK_TRANSMIT = common dso_local global i32 0, align 4
@VCHIQ_MSG_BULK_TX = common dso_local global i32 0, align 4
@VCHIQ_MSG_BULK_RX = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@VCHI_MEM_HANDLE_INVALID = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_NUM_SERVICE_BULKS = common dso_local global i64 0, align 8
@bulk_stalls = common dso_local global i32 0, align 4
@VCHIQ_BULK_ACTUAL_ABORTED = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%d: bt (%d->%d) %cx %x@%x %x\00", align 1
@VCHIQ_POLL_TXNOTIFY = common dso_local global i32 0, align 4
@VCHIQ_POLL_RXNOTIFY = common dso_local global i32 0, align 4
@QMFLAGS_IS_BLOCKING = common dso_local global i32 0, align 4
@QMFLAGS_NO_MUTEX_LOCK = common dso_local global i32 0, align 4
@QMFLAGS_NO_MUTEX_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%d: bt:%d %cx li=%x ri=%x p=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_bulk_transfer(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.bulk_waiter*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca [2 x i32], align 4
  %25 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.TYPE_19__* @find_service_by_handle(i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %16, align 8
  store %struct.bulk_waiter* null, %struct.bulk_waiter** %20, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 116, i32 114
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %21, align 1
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* @VCHIQ_MSG_BULK_TX, align 4
  br label %41

39:                                               ; preds = %7
  %40 = load i32, i32* @VCHIQ_MSG_BULK_RX, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %22, align 4
  %43 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %43, i64* %23, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @VCHI_MEM_HANDLE_INVALID, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %11, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %61 = call i64 @vchiq_check_service(%struct.TYPE_19__* %60)
  %62 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %56, %46, %41
  br label %345

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  switch i32 %66, label %84 [
    i32 129, label %67
    i32 130, label %67
    i32 131, label %68
    i32 128, label %78
  ]

67:                                               ; preds = %65, %65
  br label %85

68:                                               ; preds = %65
  %69 = load i8*, i8** %13, align 8
  %70 = bitcast i8* %69 to %struct.bulk_waiter*
  store %struct.bulk_waiter* %70, %struct.bulk_waiter** %20, align 8
  %71 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %72 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %71, i32 0, i32 1
  %73 = call i32 @_sema_init(i32* %72, i32 0)
  %74 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %75 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %77 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %76, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %77, align 8
  br label %85

78:                                               ; preds = %65
  %79 = load i8*, i8** %13, align 8
  %80 = bitcast i8* %79 to %struct.bulk_waiter*
  store %struct.bulk_waiter* %80, %struct.bulk_waiter** %20, align 8
  %81 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %82 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  store %struct.TYPE_21__* %83, %struct.TYPE_21__** %18, align 8
  br label %306

84:                                               ; preds = %65
  br label %345

85:                                               ; preds = %68, %67
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %19, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 6
  br label %98

95:                                               ; preds = %85
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 5
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi %struct.TYPE_22__* [ %94, %92 ], [ %97, %95 ]
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %17, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = call i64 @lmutex_lock_interruptible(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %105, i64* %23, align 8
  br label %345

106:                                              ; preds = %98
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VCHIQ_NUM_SERVICE_BULKS, align 8
  %114 = add nsw i64 %112, %113
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %149

116:                                              ; preds = %106
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %118 = load i32, i32* @bulk_stalls, align 4
  %119 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_19__* %117, i32 %118)
  br label %120

120:                                              ; preds = %138, %116
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = call i32 @lmutex_unlock(i32* %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  %126 = call i64 @down_interruptible(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %129, i64* %23, align 8
  br label %345

130:                                              ; preds = %120
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = call i64 @lmutex_lock_interruptible(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %136, i64* %23, align 8
  br label %345

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VCHIQ_NUM_SERVICE_BULKS, align 8
  %146 = add nsw i64 %144, %145
  %147 = icmp eq i64 %141, %146
  br i1 %147, label %120, label %148

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %106
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @BULK_INDEX(i64 %155)
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i64 %156
  store %struct.TYPE_21__* %157, %struct.TYPE_21__** %18, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %15, align 4
  %178 = call i64 @vchiq_prepare_bulk_data(%struct.TYPE_21__* %173, i32 %174, i8* %175, i32 %176, i32 %177)
  %179 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %149
  br label %341

182:                                              ; preds = %149
  %183 = call i32 (...) @wmb()
  %184 = load i32, i32* @vchiq_core_log_level, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i8, i8* %21, align 1
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i8*, i8** %13, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = call i32 @vchiq_log_info(i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %190, i32 %193, i8 signext %194, i32 %195, i32 %199, i32 %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = call i64 @lmutex_lock_interruptible(i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %182
  %208 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %208, i64* %23, align 8
  br label %338

209:                                              ; preds = %182
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %334

216:                                              ; preds = %209
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %216
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %223, align 8
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %228 = call i64 @resolve_bulks(%struct.TYPE_19__* %226, %struct.TYPE_22__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %221
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @VCHIQ_POLL_TXNOTIFY, align 4
  br label %240

238:                                              ; preds = %230
  %239 = load i32, i32* @VCHIQ_POLL_RXNOTIFY, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = call i32 @request_poll(%struct.TYPE_18__* %231, %struct.TYPE_19__* %232, i32 %241)
  br label %243

243:                                              ; preds = %240, %221
  br label %281

244:                                              ; preds = %216
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 4
  %250 = getelementptr inbounds i32, i32* %245, i64 1
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %250, align 4
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32* %255, i32** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  store i32 8, i32* %256, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %258 = load i32, i32* %22, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @VCHIQ_MAKE_MSG(i32 %258, i32 %261, i32 %264)
  %266 = load i32, i32* @QMFLAGS_IS_BLOCKING, align 4
  %267 = load i32, i32* @QMFLAGS_NO_MUTEX_LOCK, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @QMFLAGS_NO_MUTEX_UNLOCK, align 4
  %270 = or i32 %268, %269
  %271 = call i64 @queue_message(%struct.TYPE_18__* %257, i32* null, i32 %265, %struct.TYPE_20__* %25, i32 1, i32 8, i32 %270)
  store i64 %271, i64* %23, align 8
  %272 = load i64, i64* %23, align 8
  %273 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %244
  br label %334

276:                                              ; preds = %244
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %276, %243
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = call i32 @lmutex_unlock(i32* %283)
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 1
  %287 = call i32 @lmutex_unlock(i32* %286)
  %288 = load i32, i32* @vchiq_core_log_level, align 4
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i8, i8* %21, align 1
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @vchiq_log_trace(i32 %288, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %291, i32 %294, i8 signext %295, i64 %298, i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %281, %78
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %308 = call i32 @unlock_service(%struct.TYPE_19__* %307)
  %309 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %309, i64* %23, align 8
  %310 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %311 = icmp ne %struct.bulk_waiter* %310, null
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %314 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %315 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %314, i32 0, i32 2
  store %struct.TYPE_21__* %313, %struct.TYPE_21__** %315, align 8
  %316 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %317 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %316, i32 0, i32 1
  %318 = call i64 @down_interruptible(i32* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %321, i64* %23, align 8
  br label %331

322:                                              ; preds = %312
  %323 = load %struct.bulk_waiter*, %struct.bulk_waiter** %20, align 8
  %324 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %329, i64* %23, align 8
  br label %330

330:                                              ; preds = %328, %322
  br label %331

331:                                              ; preds = %330, %320
  br label %332

332:                                              ; preds = %331, %306
  %333 = load i64, i64* %23, align 8
  store i64 %333, i64* %8, align 8
  br label %353

334:                                              ; preds = %275, %215
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 0
  %337 = call i32 @lmutex_unlock(i32* %336)
  br label %338

338:                                              ; preds = %334, %207
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %340 = call i32 @vchiq_complete_bulk(%struct.TYPE_21__* %339)
  br label %341

341:                                              ; preds = %338, %181
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 1
  %344 = call i32 @lmutex_unlock(i32* %343)
  br label %345

345:                                              ; preds = %341, %135, %128, %104, %84, %64
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %347 = icmp ne %struct.TYPE_19__* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %350 = call i32 @unlock_service(%struct.TYPE_19__* %349)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load i64, i64* %23, align 8
  store i64 %352, i64* %8, align 8
  br label %353

353:                                              ; preds = %351, %332
  %354 = load i64, i64* %8, align 8
  ret i64 %354
}

declare dso_local %struct.TYPE_19__* @find_service_by_handle(i32) #1

declare dso_local i64 @vchiq_check_service(%struct.TYPE_19__*) #1

declare dso_local i32 @_sema_init(i32*, i32) #1

declare dso_local i64 @lmutex_lock_interruptible(i32*) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @lmutex_unlock(i32*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @BULK_INDEX(i64) #1

declare dso_local i64 @vchiq_prepare_bulk_data(%struct.TYPE_21__*, i32, i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32, i8 signext, i32, i32, i32) #1

declare dso_local i64 @resolve_bulks(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @request_poll(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @queue_message(%struct.TYPE_18__*, i32*, i32, %struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i8 signext, i64, i32, i32) #1

declare dso_local i32 @unlock_service(%struct.TYPE_19__*) #1

declare dso_local i32 @vchiq_complete_bulk(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
