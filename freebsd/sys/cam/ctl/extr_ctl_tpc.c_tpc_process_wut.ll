; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_wut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_wut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_18__*, %struct.runl, %struct.TYPE_13__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.runl = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.tpc_io = type { i32, %struct.TYPE_19__*, %struct.runl, %struct.tpc_io*, %struct.tpc_list* }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.tpc_io* }

@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_ERROR = common dso_local global i32 0, align 4
@CTL_SCSI_ERROR = common dso_local global i32 0, align 4
@CTL_AUTOSENSE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@TPC_MAX_IOCHUNK_SIZE = common dso_local global i32 0, align 4
@TPC_MAX_IO_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@rlinks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tpcl_queue() error\00", align 1
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*)* @tpc_process_wut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_process_wut(%struct.tpc_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpc_list*, align 8
  %4 = alloca %struct.tpc_io*, align 8
  %5 = alloca %struct.tpc_io*, align 8
  %6 = alloca %struct.tpc_io*, align 8
  %7 = alloca %struct.runl, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tpc_list* %0, %struct.tpc_list** %3, align 8
  %22 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %23 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %124

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %29 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %28, i32 0, i32 8
  %30 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %29)
  store %struct.tpc_io* %30, %struct.tpc_io** %4, align 8
  %31 = icmp ne %struct.tpc_io* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %34 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %33, i32 0, i32 8
  %35 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %36 = load i32, i32* @links, align 4
  %37 = call i32 @TAILQ_REMOVE(%struct.runl* %34, %struct.tpc_io* %35, i32 %36)
  %38 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %39 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %38, i32 0, i32 1
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = call i32 @ctl_free_io(%struct.TYPE_19__* %40)
  %42 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %43 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %42, i32 0, i32 3
  %44 = load %struct.tpc_io*, %struct.tpc_io** %43, align 8
  %45 = load i32, i32* @M_CTL, align 4
  %46 = call i32 @free(%struct.tpc_io* %44, i32 %45)
  %47 = load %struct.tpc_io*, %struct.tpc_io** %4, align 8
  %48 = load i32, i32* @M_CTL, align 4
  %49 = call i32 @free(%struct.tpc_io* %47, i32 %48)
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %52 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %51, i32 0, i32 17
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %57 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %56, i32 0, i32 10
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = call i32 @ctl_set_task_aborted(%struct.TYPE_21__* %58)
  %60 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %60, i32* %2, align 4
  br label %540

61:                                               ; preds = %50
  %62 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %63 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %62, i32 0, i32 16
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  %67 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %68 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %67, i32 0, i32 15
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load i32, i32* @CTL_SCSI_ERROR, align 4
  %73 = load i32, i32* @CTL_AUTOSENSE, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %76 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %75, i32 0, i32 10
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  %80 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %81 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %80, i32 0, i32 15
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %84 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %83, i32 0, i32 10
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  store i64 %82, i64* %86, align 8
  %87 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %88 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %91 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %90, i32 0, i32 10
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %95 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %98 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %97, i32 0, i32 10
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  br label %106

101:                                              ; preds = %66
  %102 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %103 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %102, i32 0, i32 10
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = call i32 @ctl_set_invalid_field(%struct.TYPE_21__* %104, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %106

106:                                              ; preds = %101, %71
  %107 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %107, i32* %2, align 4
  br label %540

108:                                              ; preds = %61
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %111 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %114 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %118 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %121 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %109, %1
  %125 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %126 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %125, i32 0, i32 11
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %129 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %132 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @tpc_skip_ranges(%struct.TYPE_20__* %127, i32 %130, i32 %133, i32* %8, i32* %10)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %137, i32* %2, align 4
  br label %540

138:                                              ; preds = %124
  %139 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %140 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %139, i32 0, i32 7
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %148 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %147, i32 0, i32 7
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %146, %153
  store i32 %154, i32* %19, align 4
  %155 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %156 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %155, i32 0, i32 7
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %138
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %167 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %166, i32 0, i32 7
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %165, %172
  %174 = sub nsw i32 %164, %173
  store i32 %174, i32* %20, align 4
  br label %176

175:                                              ; preds = %138
  store i32 0, i32* %20, align 4
  br label %176

176:                                              ; preds = %175, %163
  %177 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %178 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %177, i32 0, i32 9
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %17, align 4
  %182 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %183 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %182, i32 0, i32 9
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %185, align 8
  %187 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %188 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %187, i32 0, i32 9
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %193 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %196 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %17, align 4
  %201 = sdiv i32 %199, %200
  %202 = add nsw i32 %194, %201
  %203 = call i64 @tpc_skip_ranges(%struct.TYPE_20__* %186, i32 %191, i32 %202, i32* %9, i32* %11)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %176
  %206 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %207 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %206, i32 0, i32 10
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = call i32 @ctl_set_invalid_field(%struct.TYPE_21__* %208, i32 0, i32 0, i32 0, i32 0, i32 0)
  %210 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %210, i32* %2, align 4
  br label %540

211:                                              ; preds = %176
  %212 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %213 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %212, i32 0, i32 9
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @scsi_8btou64(i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %222, %223
  store i32 %224, i32* %12, align 4
  %225 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %226 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %225, i32 0, i32 11
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @scsi_8btou64(i32 %232)
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %17, align 4
  %237 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %238 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %237, i32 0, i32 9
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @scsi_4btoul(i32 %246)
  %248 = load i32, i32* %11, align 4
  %249 = sub nsw i32 %247, %248
  %250 = mul nsw i32 %236, %249
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %254 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %253, i32 0, i32 11
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @scsi_4btoul(i32 %260)
  %262 = load i32, i32* %10, align 4
  %263 = sub nsw i32 %261, %262
  %264 = mul nsw i32 %252, %263
  %265 = call i32 @omin(i32 %251, i32 %264)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @TPC_MAX_IOCHUNK_SIZE, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %298

269:                                              ; preds = %211
  %270 = load i32, i32* @TPC_MAX_IOCHUNK_SIZE, align 4
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* %18, align 4
  %273 = srem i32 %271, %272
  %274 = load i32, i32* %14, align 4
  %275 = sub nsw i32 %274, %273
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %18, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %297

279:                                              ; preds = %269
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %18, align 4
  %282 = mul nsw i32 %280, %281
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i32, i32* %20, align 4
  %286 = sub nsw i32 %284, %285
  %287 = load i32, i32* %19, align 4
  %288 = srem i32 %286, %287
  store i32 %288, i32* %21, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %21, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %279
  %293 = load i32, i32* %21, align 4
  %294 = load i32, i32* %14, align 4
  %295 = sub nsw i32 %294, %293
  store i32 %295, i32* %14, align 4
  br label %296

296:                                              ; preds = %292, %279
  br label %297

297:                                              ; preds = %296, %269
  br label %298

298:                                              ; preds = %297, %211
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* %17, align 4
  %301 = srem i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %18, align 4
  %306 = srem i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %303, %298
  %309 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %310 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %309, i32 0, i32 10
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %310, align 8
  %312 = call i32 @ctl_set_invalid_field(%struct.TYPE_21__* %311, i32 0, i32 0, i32 0, i32 0, i32 0)
  %313 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %313, i32* %2, align 4
  br label %540

314:                                              ; preds = %303
  %315 = load i32, i32* %14, align 4
  %316 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %317 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %316, i32 0, i32 4
  store i32 %315, i32* %317, align 4
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* %18, align 4
  %320 = sdiv i32 %318, %319
  %321 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %322 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 4
  store i32 0, i32* %15, align 4
  %323 = call i32 @TAILQ_INIT(%struct.runl* %7)
  %324 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %325 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %324, i32 0, i32 6
  store i64 0, i64* %325, align 8
  %326 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %327 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %326, i32 0, i32 8
  %328 = call i32 @TAILQ_INIT(%struct.runl* %327)
  br label %329

329:                                              ; preds = %369, %314
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %14, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %514

333:                                              ; preds = %329
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* %15, align 4
  %336 = sub nsw i32 %334, %335
  store i32 %336, i32* %16, align 4
  %337 = load i32, i32* %16, align 4
  %338 = load i32, i32* @TPC_MAX_IO_SIZE, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %369

340:                                              ; preds = %333
  %341 = load i32, i32* @TPC_MAX_IO_SIZE, align 4
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %18, align 4
  %344 = srem i32 %342, %343
  %345 = load i32, i32* %16, align 4
  %346 = sub nsw i32 %345, %344
  store i32 %346, i32* %16, align 4
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* %18, align 4
  %349 = icmp sgt i32 %347, %348
  br i1 %349, label %350, label %368

350:                                              ; preds = %340
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* %18, align 4
  %353 = mul nsw i32 %351, %352
  %354 = load i32, i32* %16, align 4
  %355 = add nsw i32 %353, %354
  %356 = load i32, i32* %20, align 4
  %357 = sub nsw i32 %355, %356
  %358 = load i32, i32* %19, align 4
  %359 = srem i32 %357, %358
  store i32 %359, i32* %21, align 4
  %360 = load i32, i32* %16, align 4
  %361 = load i32, i32* %21, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %350
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %16, align 4
  %366 = sub nsw i32 %365, %364
  store i32 %366, i32* %16, align 4
  br label %367

367:                                              ; preds = %363, %350
  br label %368

368:                                              ; preds = %367, %340
  br label %369

369:                                              ; preds = %368, %333
  %370 = load i32, i32* @M_CTL, align 4
  %371 = load i32, i32* @M_WAITOK, align 4
  %372 = load i32, i32* @M_ZERO, align 4
  %373 = or i32 %371, %372
  %374 = call i8* @malloc(i32 40, i32 %370, i32 %373)
  %375 = bitcast i8* %374 to %struct.tpc_io*
  store %struct.tpc_io* %375, %struct.tpc_io** %5, align 8
  %376 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %377 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %376, i32 0, i32 2
  %378 = call i32 @TAILQ_INIT(%struct.runl* %377)
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* @M_CTL, align 4
  %381 = load i32, i32* @M_WAITOK, align 4
  %382 = call i8* @malloc(i32 %379, i32 %380, i32 %381)
  %383 = bitcast i8* %382 to %struct.tpc_io*
  %384 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %385 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %384, i32 0, i32 3
  store %struct.tpc_io* %383, %struct.tpc_io** %385, align 8
  %386 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %387 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %388 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %387, i32 0, i32 4
  store %struct.tpc_list* %386, %struct.tpc_list** %388, align 8
  %389 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %390 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %389, i32 0, i32 8
  %391 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %392 = load i32, i32* @links, align 4
  %393 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %390, %struct.tpc_io* %391, i32 %392)
  %394 = call i8* (...) @tpcl_alloc_io()
  %395 = bitcast i8* %394 to %struct.TYPE_19__*
  %396 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %397 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %396, i32 0, i32 1
  store %struct.TYPE_19__* %395, %struct.TYPE_19__** %397, align 8
  %398 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %399 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %398, i32 0, i32 1
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %399, align 8
  %401 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %402 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %401, i32 0, i32 3
  %403 = load %struct.tpc_io*, %struct.tpc_io** %402, align 8
  %404 = load i32, i32* %16, align 4
  %405 = load i32, i32* %12, align 4
  %406 = load i32, i32* %16, align 4
  %407 = load i32, i32* %17, align 4
  %408 = sdiv i32 %406, %407
  %409 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %410 = call i32 @ctl_scsi_read_write(%struct.TYPE_19__* %400, %struct.tpc_io* %403, i32 %404, i32 1, i32 0, i32 0, i32 %405, i32 %408, i32 %409, i32 0)
  %411 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %412 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %411, i32 0, i32 1
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 0
  store i32 3, i32* %415, align 8
  %416 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %417 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %416, i32 0, i32 9
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %422 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  %423 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %424 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %425 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %424, i32 0, i32 1
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %428, align 8
  %430 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  store %struct.tpc_io* %423, %struct.tpc_io** %432, align 8
  %433 = load i32, i32* @M_CTL, align 4
  %434 = load i32, i32* @M_WAITOK, align 4
  %435 = load i32, i32* @M_ZERO, align 4
  %436 = or i32 %434, %435
  %437 = call i8* @malloc(i32 40, i32 %433, i32 %436)
  %438 = bitcast i8* %437 to %struct.tpc_io*
  store %struct.tpc_io* %438, %struct.tpc_io** %6, align 8
  %439 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %440 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %439, i32 0, i32 2
  %441 = call i32 @TAILQ_INIT(%struct.runl* %440)
  %442 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %443 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %444 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %443, i32 0, i32 4
  store %struct.tpc_list* %442, %struct.tpc_list** %444, align 8
  %445 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %446 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %445, i32 0, i32 8
  %447 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %448 = load i32, i32* @links, align 4
  %449 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %446, %struct.tpc_io* %447, i32 %448)
  %450 = call i8* (...) @tpcl_alloc_io()
  %451 = bitcast i8* %450 to %struct.TYPE_19__*
  %452 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %453 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %452, i32 0, i32 1
  store %struct.TYPE_19__* %451, %struct.TYPE_19__** %453, align 8
  %454 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %455 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %454, i32 0, i32 1
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %455, align 8
  %457 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %458 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %457, i32 0, i32 3
  %459 = load %struct.tpc_io*, %struct.tpc_io** %458, align 8
  %460 = load i32, i32* %16, align 4
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* %18, align 4
  %464 = sdiv i32 %462, %463
  %465 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %466 = call i32 @ctl_scsi_read_write(%struct.TYPE_19__* %456, %struct.tpc_io* %459, i32 %460, i32 0, i32 0, i32 0, i32 %461, i32 %464, i32 %465, i32 0)
  %467 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %468 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %467, i32 0, i32 1
  %469 = load %struct.TYPE_19__*, %struct.TYPE_19__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 0
  store i32 3, i32* %471, align 8
  %472 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %473 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %472, i32 0, i32 7
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %478 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %477, i32 0, i32 0
  store i32 %476, i32* %478, align 8
  %479 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %480 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %481 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %480, i32 0, i32 1
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %484, align 8
  %486 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 0
  store %struct.tpc_io* %479, %struct.tpc_io** %488, align 8
  %489 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %490 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %489, i32 0, i32 2
  %491 = load %struct.tpc_io*, %struct.tpc_io** %6, align 8
  %492 = load i32, i32* @rlinks, align 4
  %493 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %490, %struct.tpc_io* %491, i32 %492)
  %494 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %495 = load i32, i32* @rlinks, align 4
  %496 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %7, %struct.tpc_io* %494, i32 %495)
  %497 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %498 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %497, i32 0, i32 6
  %499 = load i64, i64* %498, align 8
  %500 = add nsw i64 %499, 1
  store i64 %500, i64* %498, align 8
  %501 = load i32, i32* %16, align 4
  %502 = load i32, i32* %15, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* %15, align 4
  %504 = load i32, i32* %16, align 4
  %505 = load i32, i32* %17, align 4
  %506 = sdiv i32 %504, %505
  %507 = load i32, i32* %12, align 4
  %508 = add nsw i32 %507, %506
  store i32 %508, i32* %12, align 4
  %509 = load i32, i32* %16, align 4
  %510 = load i32, i32* %18, align 4
  %511 = sdiv i32 %509, %510
  %512 = load i32, i32* %13, align 4
  %513 = add nsw i32 %512, %511
  store i32 %513, i32* %13, align 4
  br label %329

514:                                              ; preds = %329
  br label %515

515:                                              ; preds = %533, %514
  %516 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %7)
  store %struct.tpc_io* %516, %struct.tpc_io** %5, align 8
  %517 = icmp ne %struct.tpc_io* %516, null
  br i1 %517, label %518, label %534

518:                                              ; preds = %515
  %519 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %520 = load i32, i32* @rlinks, align 4
  %521 = call i32 @TAILQ_REMOVE(%struct.runl* %7, %struct.tpc_io* %519, i32 %520)
  %522 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %523 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %522, i32 0, i32 1
  %524 = load %struct.TYPE_19__*, %struct.TYPE_19__** %523, align 8
  %525 = load %struct.tpc_io*, %struct.tpc_io** %5, align 8
  %526 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @tpcl_queue(%struct.TYPE_19__* %524, i32 %527)
  %529 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %530 = icmp ne i32 %528, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %518
  %532 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %533

533:                                              ; preds = %531, %518
  br label %515

534:                                              ; preds = %515
  %535 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %536 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = add nsw i64 %537, 1
  store i64 %538, i64* %536, align 8
  %539 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %539, i32* %2, align 4
  br label %540

540:                                              ; preds = %534, %308, %205, %136, %106, %55
  %541 = load i32, i32* %2, align 4
  ret i32 %541
}

declare dso_local %struct.tpc_io* @TAILQ_FIRST(%struct.runl*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_free_io(%struct.TYPE_19__*) #1

declare dso_local i32 @free(%struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_set_task_aborted(%struct.TYPE_21__*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @tpc_skip_ranges(%struct.TYPE_20__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @omin(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.runl*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local i8* @tpcl_alloc_io(...) #1

declare dso_local i32 @ctl_scsi_read_write(%struct.TYPE_19__*, %struct.tpc_io*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tpcl_queue(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
