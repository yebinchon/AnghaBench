; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_b2b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_process_b2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i64, i32, i32, i32, i32, i32, i64, %struct.runl, i32, %struct.TYPE_9__*, i64*, i64, i64 }
%struct.runl = type { i32 }
%struct.TYPE_9__ = type { %struct.scsi_ec_cscd_dtsp }
%struct.scsi_ec_cscd_dtsp = type { i32 }
%struct.scsi_ec_segment_b2b = type { i32, i32, i32, i32, i32, i32 }
%struct.tpc_io = type { i64, i64, %struct.TYPE_10__*, %struct.runl, i32, %struct.tpc_io*, %struct.tpc_list* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.tpc_io* }

@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_ERROR = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@SSD_KEY_COPY_ABORTED = common dso_local global i32 0, align 4
@SSD_ELEM_COMMAND = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@EC_SEG_DC = common dso_local global i32 0, align 4
@TPC_MAX_IO_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@SSD_FORWARDED_SDS_EXSRC = common dso_local global i32 0, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@SSD_FORWARDED_SDS_EXDST = common dso_local global i32 0, align 4
@rlinks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tpcl_queue() error\00", align 1
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*)* @tpc_process_b2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_process_b2b(%struct.tpc_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpc_list*, align 8
  %4 = alloca %struct.scsi_ec_segment_b2b*, align 8
  %5 = alloca %struct.scsi_ec_cscd_dtsp*, align 8
  %6 = alloca %struct.scsi_ec_cscd_dtsp*, align 8
  %7 = alloca %struct.tpc_io*, align 8
  %8 = alloca %struct.tpc_io*, align 8
  %9 = alloca %struct.runl, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca [4 x i32], align 16
  store %struct.tpc_list* %0, %struct.tpc_list** %3, align 8
  %26 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %27 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %30 = call i32 @scsi_ulto4b(i64 %28, i32* %29)
  %31 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %32 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %96

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %38 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %37, i32 0, i32 7
  %39 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %38)
  store %struct.tpc_io* %39, %struct.tpc_io** %7, align 8
  %40 = icmp ne %struct.tpc_io* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %43 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %42, i32 0, i32 7
  %44 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %45 = load i32, i32* @links, align 4
  %46 = call i32 @TAILQ_REMOVE(%struct.runl* %43, %struct.tpc_io* %44, i32 %45)
  %47 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %48 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @ctl_free_io(%struct.TYPE_10__* %49)
  %51 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %52 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %51, i32 0, i32 5
  %53 = load %struct.tpc_io*, %struct.tpc_io** %52, align 8
  %54 = load i32, i32* @M_CTL, align 4
  %55 = call i32 @free(%struct.tpc_io* %53, i32 %54)
  %56 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %57 = load i32, i32* @M_CTL, align 4
  %58 = call i32 @free(%struct.tpc_io* %56, i32 %57)
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %61 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %66 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ctl_set_task_aborted(i32 %67)
  %69 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %69, i32* %2, align 4
  br label %465

70:                                               ; preds = %59
  %71 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %72 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %77 = call i32 @tpc_set_io_error_sense(%struct.tpc_list* %76)
  %78 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %78, i32* %2, align 4
  br label %465

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %82 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %85 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %89 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %92 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %95, i32* %2, align 4
  br label %465

96:                                               ; preds = %1
  %97 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %98 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %97, i32 0, i32 7
  %99 = call i32 @TAILQ_INIT(%struct.runl* %98)
  %100 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %101 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %100, i32 0, i32 10
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %104 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.scsi_ec_segment_b2b*
  store %struct.scsi_ec_segment_b2b* %108, %struct.scsi_ec_segment_b2b** %4, align 8
  %109 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @scsi_2btoul(i32 %111)
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* %23, align 8
  %114 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %115 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @scsi_2btoul(i32 %116)
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* %24, align 8
  %119 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %120 = load i64, i64* %23, align 8
  %121 = call i64 @tpc_resolve(%struct.tpc_list* %119, i64 %120, i32* %18, i32* null, i32* null)
  store i64 %121, i64* %10, align 8
  %122 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %123 = load i64, i64* %24, align 8
  %124 = call i64 @tpc_resolve(%struct.tpc_list* %122, i64 %123, i32* %19, i32* %20, i32* %21)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* @UINT64_MAX, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %96
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @UINT64_MAX, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128, %96
  %133 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %134 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %137 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %139 = load i32, i32* @SSD_ELEM_NONE, align 4
  %140 = call i32 @ctl_set_sense(i32 %135, i32 1, i32 %136, i32 8, i32 4, i32 %137, i32 16, i32* %138, i32 %139)
  %141 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %141, i32* %2, align 4
  br label %465

142:                                              ; preds = %128
  %143 = load i32, i32* %21, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %21, align 4
  br label %149

149:                                              ; preds = %145, %142
  %150 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %151 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %150, i32 0, i32 9
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i64, i64* %23, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store %struct.scsi_ec_cscd_dtsp* %155, %struct.scsi_ec_cscd_dtsp** %5, align 8
  %156 = load %struct.scsi_ec_cscd_dtsp*, %struct.scsi_ec_cscd_dtsp** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_ec_cscd_dtsp, %struct.scsi_ec_cscd_dtsp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @scsi_3btoul(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %149
  %162 = load %struct.scsi_ec_cscd_dtsp*, %struct.scsi_ec_cscd_dtsp** %5, align 8
  %163 = getelementptr inbounds %struct.scsi_ec_cscd_dtsp, %struct.scsi_ec_cscd_dtsp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @scsi_3btoul(i32 %164)
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %161, %149
  %168 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %169 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %168, i32 0, i32 9
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i64, i64* %24, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store %struct.scsi_ec_cscd_dtsp* %173, %struct.scsi_ec_cscd_dtsp** %6, align 8
  %174 = load %struct.scsi_ec_cscd_dtsp*, %struct.scsi_ec_cscd_dtsp** %6, align 8
  %175 = getelementptr inbounds %struct.scsi_ec_cscd_dtsp, %struct.scsi_ec_cscd_dtsp* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @scsi_3btoul(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %167
  %180 = load %struct.scsi_ec_cscd_dtsp*, %struct.scsi_ec_cscd_dtsp** %6, align 8
  %181 = getelementptr inbounds %struct.scsi_ec_cscd_dtsp, %struct.scsi_ec_cscd_dtsp* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @scsi_3btoul(i32 %182)
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %179, %167
  %186 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %187 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @scsi_2btoul(i32 %188)
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %17, align 4
  %191 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %192 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @EC_SEG_DC, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %185
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %19, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %14, align 4
  br label %205

201:                                              ; preds = %185
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %18, align 4
  %204 = mul nsw i32 %202, %203
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %207 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @scsi_8btou64(i32 %208)
  store i32 %209, i32* %12, align 4
  %210 = load %struct.scsi_ec_segment_b2b*, %struct.scsi_ec_segment_b2b** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_ec_segment_b2b, %struct.scsi_ec_segment_b2b* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @scsi_8btou64(i32 %212)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %217, i32* %2, align 4
  br label %465

218:                                              ; preds = %205
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %18, align 4
  %221 = srem i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %19, align 4
  %226 = srem i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %223, %218
  %229 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %230 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @SSD_KEY_COPY_ABORTED, align 4
  %233 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %235 = load i32, i32* @SSD_ELEM_NONE, align 4
  %236 = call i32 @ctl_set_sense(i32 %231, i32 1, i32 %232, i32 38, i32 10, i32 %233, i32 16, i32* %234, i32 %235)
  %237 = load i32, i32* @CTL_RETVAL_ERROR, align 4
  store i32 %237, i32* %2, align 4
  br label %465

238:                                              ; preds = %223
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %241 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %19, align 4
  %244 = sdiv i32 %242, %243
  %245 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %246 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  store i32 0, i32* %15, align 4
  %247 = call i32 @TAILQ_INIT(%struct.runl* %9)
  %248 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %249 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %248, i32 0, i32 6
  store i64 0, i64* %249, align 8
  br label %250

250:                                              ; preds = %290, %238
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %439

254:                                              ; preds = %250
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %15, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %16, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @TPC_MAX_IO_SIZE, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %290

261:                                              ; preds = %254
  %262 = load i32, i32* @TPC_MAX_IO_SIZE, align 4
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %19, align 4
  %265 = srem i32 %263, %264
  %266 = load i32, i32* %16, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %20, align 4
  %269 = load i32, i32* %19, align 4
  %270 = icmp sgt i32 %268, %269
  br i1 %270, label %271, label %289

271:                                              ; preds = %261
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %19, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* %21, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load i32, i32* %20, align 4
  %280 = srem i32 %278, %279
  store i32 %280, i32* %22, align 4
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %22, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %271
  %285 = load i32, i32* %22, align 4
  %286 = load i32, i32* %16, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %16, align 4
  br label %288

288:                                              ; preds = %284, %271
  br label %289

289:                                              ; preds = %288, %261
  br label %290

290:                                              ; preds = %289, %254
  %291 = load i32, i32* @M_CTL, align 4
  %292 = load i32, i32* @M_WAITOK, align 4
  %293 = load i32, i32* @M_ZERO, align 4
  %294 = or i32 %292, %293
  %295 = call i8* @malloc(i32 48, i32 %291, i32 %294)
  %296 = bitcast i8* %295 to %struct.tpc_io*
  store %struct.tpc_io* %296, %struct.tpc_io** %7, align 8
  %297 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %298 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %297, i32 0, i32 3
  %299 = call i32 @TAILQ_INIT(%struct.runl* %298)
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* @M_CTL, align 4
  %302 = load i32, i32* @M_WAITOK, align 4
  %303 = call i8* @malloc(i32 %300, i32 %301, i32 %302)
  %304 = bitcast i8* %303 to %struct.tpc_io*
  %305 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %306 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %305, i32 0, i32 5
  store %struct.tpc_io* %304, %struct.tpc_io** %306, align 8
  %307 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %308 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %309 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %308, i32 0, i32 6
  store %struct.tpc_list* %307, %struct.tpc_list** %309, align 8
  %310 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %311 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %310, i32 0, i32 7
  %312 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %313 = load i32, i32* @links, align 4
  %314 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %311, %struct.tpc_io* %312, i32 %313)
  %315 = call i8* (...) @tpcl_alloc_io()
  %316 = bitcast i8* %315 to %struct.TYPE_10__*
  %317 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %318 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %317, i32 0, i32 2
  store %struct.TYPE_10__* %316, %struct.TYPE_10__** %318, align 8
  %319 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %320 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %319, i32 0, i32 2
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %320, align 8
  %322 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %323 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %322, i32 0, i32 5
  %324 = load %struct.tpc_io*, %struct.tpc_io** %323, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %18, align 4
  %329 = sdiv i32 %327, %328
  %330 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %331 = call i32 @ctl_scsi_read_write(%struct.TYPE_10__* %321, %struct.tpc_io* %324, i32 %325, i32 1, i32 0, i32 0, i32 %326, i32 %329, i32 %330, i32 0)
  %332 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %333 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %332, i32 0, i32 2
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  store i32 3, i32* %336, align 8
  %337 = load i32, i32* @SSD_FORWARDED_SDS_EXSRC, align 4
  %338 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %339 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  %340 = load i64, i64* %23, align 8
  %341 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %342 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %341, i32 0, i32 0
  store i64 %340, i64* %342, align 8
  %343 = load i64, i64* %10, align 8
  %344 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %345 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %344, i32 0, i32 1
  store i64 %343, i64* %345, align 8
  %346 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %347 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %348 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %347, i32 0, i32 2
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %351, align 8
  %353 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  store %struct.tpc_io* %346, %struct.tpc_io** %355, align 8
  %356 = load i32, i32* @M_CTL, align 4
  %357 = load i32, i32* @M_WAITOK, align 4
  %358 = load i32, i32* @M_ZERO, align 4
  %359 = or i32 %357, %358
  %360 = call i8* @malloc(i32 48, i32 %356, i32 %359)
  %361 = bitcast i8* %360 to %struct.tpc_io*
  store %struct.tpc_io* %361, %struct.tpc_io** %8, align 8
  %362 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %363 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %362, i32 0, i32 3
  %364 = call i32 @TAILQ_INIT(%struct.runl* %363)
  %365 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %366 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %367 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %366, i32 0, i32 6
  store %struct.tpc_list* %365, %struct.tpc_list** %367, align 8
  %368 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %369 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %368, i32 0, i32 7
  %370 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %371 = load i32, i32* @links, align 4
  %372 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %369, %struct.tpc_io* %370, i32 %371)
  %373 = call i8* (...) @tpcl_alloc_io()
  %374 = bitcast i8* %373 to %struct.TYPE_10__*
  %375 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %376 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %375, i32 0, i32 2
  store %struct.TYPE_10__* %374, %struct.TYPE_10__** %376, align 8
  %377 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %378 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %377, i32 0, i32 2
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %378, align 8
  %380 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %381 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %380, i32 0, i32 5
  %382 = load %struct.tpc_io*, %struct.tpc_io** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %16, align 4
  %386 = load i32, i32* %19, align 4
  %387 = sdiv i32 %385, %386
  %388 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %389 = call i32 @ctl_scsi_read_write(%struct.TYPE_10__* %379, %struct.tpc_io* %382, i32 %383, i32 0, i32 0, i32 0, i32 %384, i32 %387, i32 %388, i32 0)
  %390 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %391 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %390, i32 0, i32 2
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  store i32 3, i32* %394, align 8
  %395 = load i32, i32* @SSD_FORWARDED_SDS_EXDST, align 4
  %396 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %397 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %396, i32 0, i32 4
  store i32 %395, i32* %397, align 4
  %398 = load i64, i64* %24, align 8
  %399 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %400 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %399, i32 0, i32 0
  store i64 %398, i64* %400, align 8
  %401 = load i64, i64* %11, align 8
  %402 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %403 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %402, i32 0, i32 1
  store i64 %401, i64* %403, align 8
  %404 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %405 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %406 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %405, i32 0, i32 2
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %409, align 8
  %411 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 0
  store %struct.tpc_io* %404, %struct.tpc_io** %413, align 8
  %414 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %415 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %414, i32 0, i32 3
  %416 = load %struct.tpc_io*, %struct.tpc_io** %8, align 8
  %417 = load i32, i32* @rlinks, align 4
  %418 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %415, %struct.tpc_io* %416, i32 %417)
  %419 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %420 = load i32, i32* @rlinks, align 4
  %421 = call i32 @TAILQ_INSERT_TAIL(%struct.runl* %9, %struct.tpc_io* %419, i32 %420)
  %422 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %423 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %422, i32 0, i32 6
  %424 = load i64, i64* %423, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* %423, align 8
  %426 = load i32, i32* %16, align 4
  %427 = load i32, i32* %15, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %15, align 4
  %429 = load i32, i32* %16, align 4
  %430 = load i32, i32* %18, align 4
  %431 = sdiv i32 %429, %430
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %432, %431
  store i32 %433, i32* %12, align 4
  %434 = load i32, i32* %16, align 4
  %435 = load i32, i32* %19, align 4
  %436 = sdiv i32 %434, %435
  %437 = load i32, i32* %13, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %13, align 4
  br label %250

439:                                              ; preds = %250
  br label %440

440:                                              ; preds = %458, %439
  %441 = call %struct.tpc_io* @TAILQ_FIRST(%struct.runl* %9)
  store %struct.tpc_io* %441, %struct.tpc_io** %7, align 8
  %442 = icmp ne %struct.tpc_io* %441, null
  br i1 %442, label %443, label %459

443:                                              ; preds = %440
  %444 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %445 = load i32, i32* @rlinks, align 4
  %446 = call i32 @TAILQ_REMOVE(%struct.runl* %9, %struct.tpc_io* %444, i32 %445)
  %447 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %448 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %447, i32 0, i32 2
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %448, align 8
  %450 = load %struct.tpc_io*, %struct.tpc_io** %7, align 8
  %451 = getelementptr inbounds %struct.tpc_io, %struct.tpc_io* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @tpcl_queue(%struct.TYPE_10__* %449, i64 %452)
  %454 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %443
  %457 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %458

458:                                              ; preds = %456, %443
  br label %440

459:                                              ; preds = %440
  %460 = load %struct.tpc_list*, %struct.tpc_list** %3, align 8
  %461 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %461, align 8
  %464 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %464, i32* %2, align 4
  br label %465

465:                                              ; preds = %459, %228, %216, %132, %80, %75, %64
  %466 = load i32, i32* %2, align 4
  ret i32 %466
}

declare dso_local i32 @scsi_ulto4b(i64, i32*) #1

declare dso_local %struct.tpc_io* @TAILQ_FIRST(%struct.runl*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_free_io(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.tpc_io*, i32) #1

declare dso_local i32 @ctl_set_task_aborted(i32) #1

declare dso_local i32 @tpc_set_io_error_sense(%struct.tpc_list*) #1

declare dso_local i32 @TAILQ_INIT(%struct.runl*) #1

declare dso_local i8* @scsi_2btoul(i32) #1

declare dso_local i64 @tpc_resolve(%struct.tpc_list*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @ctl_set_sense(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @scsi_3btoul(i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.runl*, %struct.tpc_io*, i32) #1

declare dso_local i8* @tpcl_alloc_io(...) #1

declare dso_local i32 @ctl_scsi_read_write(%struct.TYPE_10__*, %struct.tpc_io*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tpcl_queue(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
