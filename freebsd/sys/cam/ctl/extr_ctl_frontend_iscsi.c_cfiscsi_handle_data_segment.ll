; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_handle_data_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_handle_data_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cfiscsi_data_wait = type { i32, i64, i64, i64, i32, %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.iscsi_bhs_data_out = type { i32, i32 }
%struct.cfiscsi_session = type { i32 }
%struct.ctl_sg_entry = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_SCSI_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad opcode 0x%x\00", align 1
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CTL_FLAG_DATA_IN\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"received bad buffer offset %zd, expected %zd; dropping connection\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"cdw->cdw_sg_index >= ctl_sg_count\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"len > off\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"received too much data: got %zd bytes, expected %zd; dropping connection\00", align 1
@BHSDO_FLAGS_F = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [75 x i8] c"got the final packet without the F flag; flags = 0x%x; dropping connection\00", align 1
@.str.7 = private unnamed_addr constant [96 x i8] c"got the final packet, but the transmitted size was %zd bytes instead of %d; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*, %struct.cfiscsi_data_wait*)* @cfiscsi_handle_data_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfiscsi_handle_data_segment(%struct.icl_pdu* %0, %struct.cfiscsi_data_wait* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca %struct.cfiscsi_data_wait*, align 8
  %6 = alloca %struct.iscsi_bhs_data_out*, align 8
  %7 = alloca %struct.cfiscsi_session*, align 8
  %8 = alloca %struct.ctl_sg_entry, align 8
  %9 = alloca %struct.ctl_sg_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.ctl_io*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %4, align 8
  store %struct.cfiscsi_data_wait* %1, %struct.cfiscsi_data_wait** %5, align 8
  %16 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %17 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %16)
  store %struct.cfiscsi_session* %17, %struct.cfiscsi_session** %7, align 8
  %18 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %19 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %30 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_COMMAND, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %28, %2
  %40 = phi i1 [ true, %2 ], [ %38, %28 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %41, i8* %48)
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %51 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = bitcast %struct.TYPE_5__* %52 to %struct.iscsi_bhs_data_out*
  store %struct.iscsi_bhs_data_out* %53, %struct.iscsi_bhs_data_out** %6, align 8
  %54 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %55 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %54, i32 0, i32 5
  %56 = load %union.ctl_io*, %union.ctl_io** %55, align 8
  store %union.ctl_io* %56, %union.ctl_io** %15, align 8
  %57 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %58 = bitcast %union.ctl_io* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @KASSERT(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %39
  %73 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ctl_sg_entry*
  store %struct.ctl_sg_entry* %77, %struct.ctl_sg_entry** %9, align 8
  %78 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  br label %95

82:                                               ; preds = %39
  store %struct.ctl_sg_entry* %8, %struct.ctl_sg_entry** %9, align 8
  %83 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %88 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %90 = bitcast %union.ctl_io* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %94 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %82, %72
  %96 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %97 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %108 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohl(i32 %109)
  store i64 %110, i64* %13, align 8
  br label %112

111:                                              ; preds = %95
  store i64 0, i64* %13, align 8
  br label %112

112:                                              ; preds = %111, %106
  %113 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %114 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %113)
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %117 = bitcast %union.ctl_io* %116 to %struct.TYPE_6__*
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %121 = bitcast %union.ctl_io* %120 to %struct.TYPE_6__*
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %119, %123
  %125 = icmp ugt i64 %115, %124
  br i1 %125, label %140, label %126

126:                                              ; preds = %112
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %127, %128
  %130 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %131 = bitcast %union.ctl_io* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %135 = bitcast %union.ctl_io* %134 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %133, %137
  %139 = icmp ule i64 %129, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %126, %112
  %141 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %144 = bitcast %union.ctl_io* %143 to %struct.TYPE_6__*
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %148 = bitcast %union.ctl_io* %147 to %struct.TYPE_6__*
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %146, %150
  %152 = call i32 (%struct.cfiscsi_session*, i8*, i64, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %141, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %142, i64 %151)
  %153 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %154 = bitcast %union.ctl_io* %153 to %struct.TYPE_6__*
  %155 = call i32 @ctl_set_data_phase_error(%struct.TYPE_6__* %154)
  %156 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %157 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %156)
  store i32 1, i32* %3, align 4
  br label %386

158:                                              ; preds = %126
  %159 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %160 = bitcast %union.ctl_io* %159 to %struct.TYPE_6__*
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %164 = bitcast %union.ctl_io* %163 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %162, %166
  %168 = load i64, i64* %13, align 8
  %169 = sub i64 %167, %168
  store i64 %169, i64* %12, align 8
  br label %170

170:                                              ; preds = %276, %158
  %171 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %172 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @KASSERT(i32 %176, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %178 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %179 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %203

182:                                              ; preds = %170
  %183 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %184 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %185 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %183, i64 %187
  %189 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %192 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %191, i32 0, i32 2
  store i64 %190, i64* %192, align 8
  %193 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %194 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %195 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %193, i64 %197
  %199 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %202 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %182, %170
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* %11, align 8
  %206 = icmp ule i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @KASSERT(i32 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = sub i64 %209, %210
  store i64 %211, i64* %10, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %214 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ugt i64 %212, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %203
  %218 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %219 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %10, align 8
  br label %221

221:                                              ; preds = %217, %203
  %222 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %223 = load i64, i64* %12, align 8
  %224 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %225 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @icl_pdu_get_data(%struct.icl_pdu* %222, i64 %223, i64 %226, i64 %227)
  %229 = load i64, i64* %10, align 8
  %230 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %231 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, %229
  store i64 %233, i64* %231, align 8
  %234 = load i64, i64* %10, align 8
  %235 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %236 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = sub i64 %237, %234
  store i64 %238, i64* %236, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %12, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %12, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %244 = bitcast %union.ctl_io* %243 to %struct.TYPE_6__*
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %246, %242
  store i64 %247, i64* %245, align 8
  %248 = load i64, i64* %10, align 8
  %249 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %250 = bitcast %union.ctl_io* %249 to %struct.TYPE_6__*
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = sub i64 %252, %248
  store i64 %253, i64* %251, align 8
  %254 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %255 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %221
  %259 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %260 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sub nsw i32 %262, 1
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  br label %277

266:                                              ; preds = %258
  %267 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %268 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %266, %221
  %272 = load i64, i64* %12, align 8
  %273 = load i64, i64* %11, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %277

276:                                              ; preds = %271
  br label %170

277:                                              ; preds = %275, %265
  %278 = load i64, i64* %11, align 8
  %279 = load i64, i64* %12, align 8
  %280 = icmp ugt i64 %278, %279
  br i1 %280, label %281, label %304

281:                                              ; preds = %277
  %282 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %283 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %282, i32 0, i32 0
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %288 = xor i32 %287, -1
  %289 = and i32 %286, %288
  %290 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_COMMAND, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %281
  store i32 1, i32* %3, align 4
  br label %386

293:                                              ; preds = %281
  %294 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %295 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %296 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %295)
  %297 = load i64, i64* %12, align 8
  %298 = call i32 (%struct.cfiscsi_session*, i8*, i64, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %294, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %296, i64 %297)
  %299 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %300 = bitcast %union.ctl_io* %299 to %struct.TYPE_6__*
  %301 = call i32 @ctl_set_data_phase_error(%struct.TYPE_6__* %300)
  %302 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %303 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %302)
  store i32 1, i32* %3, align 4
  br label %386

304:                                              ; preds = %277
  %305 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %306 = bitcast %union.ctl_io* %305 to %struct.TYPE_6__*
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %310 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %308, %311
  br i1 %312, label %313, label %332

313:                                              ; preds = %304
  %314 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %315 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @BHSDO_FLAGS_F, align 4
  %318 = and i32 %316, %317
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %313
  %321 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %322 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %323 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = call i32 (%struct.cfiscsi_session*, i8*, i64, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %321, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i64 %325)
  %327 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %328 = bitcast %union.ctl_io* %327 to %struct.TYPE_6__*
  %329 = call i32 @ctl_set_data_phase_error(%struct.TYPE_6__* %328)
  %330 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %331 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %330)
  store i32 1, i32* %3, align 4
  br label %386

332:                                              ; preds = %313, %304
  %333 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %334 = bitcast %union.ctl_io* %333 to %struct.TYPE_6__*
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %338 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %336, %339
  br i1 %340, label %341, label %375

341:                                              ; preds = %332
  %342 = load %struct.iscsi_bhs_data_out*, %struct.iscsi_bhs_data_out** %6, align 8
  %343 = getelementptr inbounds %struct.iscsi_bhs_data_out, %struct.iscsi_bhs_data_out* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @BHSDO_FLAGS_F, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %375

348:                                              ; preds = %341
  %349 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %350 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %349, i32 0, i32 0
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %355 = xor i32 %354, -1
  %356 = and i32 %353, %355
  %357 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %374

359:                                              ; preds = %348
  %360 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %361 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %362 = bitcast %union.ctl_io* %361 to %struct.TYPE_6__*
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %366 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = call i32 (%struct.cfiscsi_session*, i8*, i64, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %360, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.7, i64 0, i64 0), i64 %364, i64 %367)
  %369 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %370 = bitcast %union.ctl_io* %369 to %struct.TYPE_6__*
  %371 = call i32 @ctl_set_data_phase_error(%struct.TYPE_6__* %370)
  %372 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %7, align 8
  %373 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %372)
  store i32 1, i32* %3, align 4
  br label %386

374:                                              ; preds = %348
  store i32 0, i32* %3, align 4
  br label %386

375:                                              ; preds = %341, %332
  %376 = load %union.ctl_io*, %union.ctl_io** %15, align 8
  %377 = bitcast %union.ctl_io* %376 to %struct.TYPE_6__*
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 4
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  %381 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = icmp eq i64 %379, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %375
  store i32 1, i32* %3, align 4
  br label %386

385:                                              ; preds = %375
  store i32 0, i32* %3, align 4
  br label %386

386:                                              ; preds = %385, %384, %374, %359, %320, %293, %292, %140
  %387 = load i32, i32* %3, align 4
  ret i32 %387
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @icl_pdu_data_segment_length(%struct.icl_pdu*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i64, ...) #1

declare dso_local i32 @ctl_set_data_phase_error(%struct.TYPE_6__*) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local i32 @icl_pdu_get_data(%struct.icl_pdu*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
