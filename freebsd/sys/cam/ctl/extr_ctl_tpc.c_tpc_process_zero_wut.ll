; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_zero_wut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_zero_wut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i64, i64, i32, i32, i64, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.runl, i64, %struct.TYPE_20__*, i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.runl = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.tpc_io = type { i32, %struct.TYPE_19__*, %struct.runl, %struct.tpc_list* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.tpc_io* }

@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_ERROR = common dso_local global i32 0, align 4
@CTL_SCSI_ERROR = common dso_local global i32 0, align 4
@CTL_AUTOSENSE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SWS_NDOB = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@rlinks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tpcl_queue() error\00", align 1
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*)* @tpc_process_zero_wut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_process_zero_wut(%struct.tpc_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpc_list*, align 8
  %4 = alloca %struct.tpc_io*, align 8
  %5 = alloca %struct.tpc_io*, align 8
  %6 = alloca %struct.runl, align 4
  %7 = alloca %struct.runl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tpc_list* %0, %struct.tpc_list** %3, align 8
  %11 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %12 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %110

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %227, %15
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %19 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %18, i32 0, i32 8
  %20 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %19)
  store %struct.tpc_io* %20, %struct.tpc_io** %4, align 8
  %21 = icmp ne %struct.tpc_io* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %24 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %23, i32 0, i32 8
  %25 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %26 = load i32, i32* @links, align 4
  %27 = call i32 @TAILQ_REMOVE(%struct.runl* %24, %struct.tpc_io* %25, i32 %26)
  %28 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %29 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = call i32 @ctl_free_io(%struct.TYPE_19__* %30)
  %32 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %33 = load i32, i32* @M_CTL, align 4
  %34 = call i32 @free(%struct.tpc_io* %32, i32 %33)
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %37 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %36, i32 0, i32 15
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %42 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %41, i32 0, i32 10
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = call i32 @ctl_set_task_aborted(%struct.TYPE_20__* %43)
  %45 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %45, i32* %2, align 4
  br label %254

46:                                               ; preds = %35
  %47 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %48 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %47, i32 0, i32 14
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %53 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %52, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load i32, i32* @CTL_SCSI_ERROR, align 4
  %58 = load i32, i32* @CTL_AUTOSENSE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %61 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %60, i32 0, i32 10
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 8
  %65 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %66 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %65, i32 0, i32 13
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %69 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %68, i32 0, i32 10
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  store i64 %67, i64* %71, align 8
  %72 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %73 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %76 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %75, i32 0, i32 10
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %80 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %83 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %82, i32 0, i32 10
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  br label %91

86:                                               ; preds = %51
  %87 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %88 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %87, i32 0, i32 10
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = call i32 @ctl_set_invalid_field(%struct.TYPE_20__* %89, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %91

91:                                               ; preds = %86, %56
  %92 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %92, i32* %2, align 4
  br label %254

93:                                               ; preds = %46
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %96 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %99 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %103 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %106 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %109, i32* %2, align 4
  br label %254

110:                                              ; preds = %1
  %111 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %112 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %111, i32 0, i32 6
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %9, align 8
  %118 = call i32 @TAILQ_INIT(%struct.runl* %6)
  store %struct.runl* %6, %struct.runl** %7, align 8
  %119 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %120 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %119, i32 0, i32 3
  store i32 1, i32* %120, align 8
  %121 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %122 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %121, i32 0, i32 8
  %123 = call i32 @TAILQ_INIT(%struct.runl* %122)
  %124 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %125 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %214, %110
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %129 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %217

132:                                              ; preds = %126
  %133 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %134 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %133, i32 0, i32 7
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @scsi_4btoul(i32 %140)
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %10, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %214

145:                                              ; preds = %132
  %146 = load i32, i32* @M_CTL, align 4
  %147 = load i32, i32* @M_WAITOK, align 4
  %148 = load i32, i32* @M_ZERO, align 4
  %149 = or i32 %147, %148
  %150 = call %struct.tpc_io* @malloc(i32 32, i32 %146, i32 %149)
  store %struct.tpc_io* %150, %struct.tpc_io** %5, align 8
  %151 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %152 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %151, i32 0, i32 2
  %153 = call i32 @TAILQ_INIT(%struct.runl* %152)
  %154 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %155 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %156 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %155, i32 0, i32 3
  store %struct.tpc_list* %154, %struct.tpc_list** %156, align 8
  %157 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %158 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %157, i32 0, i32 8
  %159 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %160 = load i32, i32* @links, align 4
  %161 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %158, %struct.tpc_io* %159, i32 %160)
  %162 = call %struct.TYPE_19__* (...) @tpcl_alloc_io()
  %163 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %164 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %163, i32 0, i32 1
  store %struct.TYPE_19__* %162, %struct.TYPE_19__** %164, align 8
  %165 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %166 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %165, i32 0, i32 1
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = load i32, i32* @SWS_NDOB, align 4
  %169 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %170 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %169, i32 0, i32 7
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @scsi_8btou64(i32 %176)
  %178 = load i64, i64* %10, align 8
  %179 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %180 = call i32 @ctl_scsi_write_same(%struct.TYPE_19__* %167, i32* null, i32 0, i32 %168, i32 %177, i64 %178, i32 %179, i32 0)
  %181 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %182 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %181, i32 0, i32 1
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i32 3, i32* %185, align 8
  %186 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %187 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %186, i32 0, i32 6
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %192 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %194 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %195 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store %struct.tpc_io* %193, %struct.tpc_io** %202, align 8
  %203 = load %struct.runl*, %struct.runl** %7, align 8
  %204 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %205 = load i32, i32* @rlinks, align 4
  %206 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %203, %struct.tpc_io* %204, i32 %205)
  %207 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %208 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %207, i32 0, i32 2
  store %struct.runl* %208, %struct.runl** %7, align 8
  %209 = load i64, i64* %10, align 8
  %210 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %211 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, %209
  store i64 %213, i64* %211, align 8
  br label %214

214:                                              ; preds = %145, %144
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %126

217:                                              ; preds = %126
  %218 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %219 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = mul nsw i64 %220, %221
  %223 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %224 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %223, i32 0, i32 5
  store i64 %222, i64* %224, align 8
  %225 = call i64 @TAILQ_EMPTY(%struct.runl* %6)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  br label %16

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %247, %228
  %230 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %6)
  store %struct.tpc_io* %230, %struct.tpc_io** %5, align 8
  %231 = icmp ne %struct.tpc_io* %230, null
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  %233 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %234 = load i32, i32* @rlinks, align 4
  %235 = call i32 @TAILQ_REMOVE(%struct.runl* %6, %struct.tpc_io* %233, i32 %234)
  %236 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %237 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %236, i32 0, i32 1
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %240 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @tpcl_queue(%struct.TYPE_19__* %238, i32 %241)
  %243 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %232
  %246 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %232
  br label %229

248:                                              ; preds = %229
  %249 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %250 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %250, align 8
  %253 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %248, %94, %91, %40
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.tpc_io* @TAILQ_FIRST(%struct.runl*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_free_io(%struct.TYPE_19__*) #1

declare dso_local i32 @free(%struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_set_task_aborted(%struct.TYPE_20__*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_20__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.runl*) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local %struct.tpc_io* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local %struct.TYPE_19__* @tpcl_alloc_io(...) #1

declare dso_local i32 @ctl_scsi_write_same(%struct.TYPE_19__*, i32*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.runl*) #1

declare dso_local i32 @tpcl_queue(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
