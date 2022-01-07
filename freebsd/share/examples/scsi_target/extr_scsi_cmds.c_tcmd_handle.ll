; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_cdb_handlers = type { i64, i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)*, i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)* }
%struct.ccb_accept_tio.0 = type opaque
%struct.ccb_scsiio.1 = type opaque
%struct.ccb_accept_tio.2 = type opaque
%struct.ccb_scsiio.3 = type opaque
%struct.ccb_accept_tio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ccb_scsiio = type { i64, i32 }
%struct.initiator_state = type { i64, i64, i64, i64 }
%struct.atio_descr = type { i64*, i32 }
%union.ccb = type { i32 }

@tcmd_handle.last_cmd = internal global %struct.targ_cdb_handlers* null, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"tcmd_handle atio %p ctio %p atioflags %#x\00", align 1
@cdb_handlers = common dso_local global %struct.targ_cdb_handlers* null, align 8
@ILLEGAL_CDB = common dso_local global i64 0, align 8
@ATIO_WORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no done func for %#x???\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cdb %#x not handled\00", align 1
@INQUIRY = common dso_local global i64 0, align 8
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@UA_POWER_ON = common dso_local global i64 0, align 8
@CA_UNIT_ATTN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"UA active for %u: \00", align 1
@CA_NONE = common dso_local global i64 0, align 8
@UA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcmd_handle(%struct.ccb_accept_tio* %0, %struct.ccb_scsiio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccb_accept_tio*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.initiator_state*, align 8
  %9 = alloca %struct.atio_descr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.targ_cdb_handlers*, align 8
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %5, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %16 = ptrtoint %struct.ccb_accept_tio* %15 to i64
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %18 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %19 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %16, %struct.ccb_scsiio* %17, i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  store i32 0, i32* %10, align 4
  %24 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %25 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.atio_descr*
  store %struct.atio_descr* %28, %struct.atio_descr** %9, align 8
  %29 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %30 = icmp eq %struct.targ_cdb_handlers* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %33 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %36 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %31, %23
  %42 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @cdb_handlers, align 8
  store %struct.targ_cdb_handlers* %42, %struct.targ_cdb_handlers** %11, align 8
  br label %43

43:                                               ; preds = %61, %41
  %44 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** %11, align 8
  %45 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ILLEGAL_CDB, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %51 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** %11, align 8
  %56 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** %11, align 8
  %63 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %62, i32 1
  store %struct.targ_cdb_handlers* %63, %struct.targ_cdb_handlers** %11, align 8
  br label %43

64:                                               ; preds = %59, %43
  %65 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** %11, align 8
  store %struct.targ_cdb_handlers* %65, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  br label %66

66:                                               ; preds = %64, %31
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ATIO_WORK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %72 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %71, i32 0, i32 2
  %73 = load i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)*, i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %77 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %76, i32 0, i32 2
  %78 = load i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)*, i32 (%struct.ccb_accept_tio.2*, %struct.ccb_scsiio.3*, i32)** %77, align 8
  %79 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %80 = bitcast %struct.ccb_accept_tio* %79 to %struct.ccb_accept_tio.2*
  %81 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %82 = bitcast %struct.ccb_scsiio* %81 to %struct.ccb_scsiio.3*
  %83 = load i32, i32* %7, align 4
  %84 = call i32 %78(%struct.ccb_accept_tio.2* %80, %struct.ccb_scsiio.3* %82, i32 %83)
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %87 = bitcast %struct.ccb_scsiio* %86 to %union.ccb*
  %88 = call i32 @free_ccb(%union.ccb* %87)
  br label %89

89:                                               ; preds = %85, %75
  store i32 1, i32* %4, align 4
  br label %242

90:                                               ; preds = %66
  %91 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %92 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ILLEGAL_CDB, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ATIO_WORK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %102 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = call i32 (...) @abort() #3
  unreachable

108:                                              ; preds = %96
  %109 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %110 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  %115 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %116 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %117 = call i32 @tcmd_illegal_req(%struct.ccb_accept_tio* %115, %struct.ccb_scsiio* %116)
  %118 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %119 = bitcast %struct.ccb_scsiio* %118 to %union.ccb*
  %120 = call i32 @send_ccb(%union.ccb* %119, i32 1)
  store i32 0, i32* %4, align 4
  br label %242

121:                                              ; preds = %90
  %122 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %123 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call %struct.initiator_state* @tcmd_get_istate(i32 %124)
  store %struct.initiator_state* %125, %struct.initiator_state** %8, align 8
  %126 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %127 = icmp eq %struct.initiator_state* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %130 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %131 = call i32 @tcmd_illegal_req(%struct.ccb_accept_tio* %129, %struct.ccb_scsiio* %130)
  %132 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %133 = bitcast %struct.ccb_scsiio* %132 to %union.ccb*
  %134 = call i32 @send_ccb(%union.ccb* %133, i32 1)
  store i32 0, i32* %4, align 4
  br label %242

135:                                              ; preds = %121
  %136 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %137 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %184

140:                                              ; preds = %135
  %141 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %142 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %184

145:                                              ; preds = %140
  %146 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %147 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @INQUIRY, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %145
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %155 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %158 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %159 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %160 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @UA_POWER_ON, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 2
  %166 = call i32 @tcmd_sense(i32 %156, %struct.ccb_scsiio* %157, i32 %158, i32 41, i32 %165)
  %167 = load i64, i64* @CA_UNIT_ATTN, align 8
  %168 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %169 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* @debug, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %153
  %173 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %174 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %177 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @cdb_debug(i64* %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %172, %153
  %181 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %182 = bitcast %struct.ccb_scsiio* %181 to %union.ccb*
  %183 = call i32 @send_ccb(%union.ccb* %182, i32 1)
  store i32 0, i32* %4, align 4
  br label %242

184:                                              ; preds = %145, %140, %135
  %185 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %186 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %189 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %191 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %194 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* @CA_NONE, align 8
  %196 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %197 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %199 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @CA_UNIT_ATTN, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %184
  %204 = load i64, i64* @UA_NONE, align 8
  %205 = load %struct.initiator_state*, %struct.initiator_state** %8, align 8
  %206 = getelementptr inbounds %struct.initiator_state, %struct.initiator_state* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %203, %184
  %208 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %209 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @ILLEGAL_CDB, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %240

213:                                              ; preds = %207
  %214 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %215 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %214, i32 0, i32 1
  %216 = load i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)*, i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)** %215, align 8
  %217 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %5, align 8
  %218 = bitcast %struct.ccb_accept_tio* %217 to %struct.ccb_accept_tio.0*
  %219 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %220 = bitcast %struct.ccb_scsiio* %219 to %struct.ccb_scsiio.1*
  %221 = call i32 %216(%struct.ccb_accept_tio.0* %218, %struct.ccb_scsiio.1* %220)
  store i32 %221, i32* %10, align 4
  %222 = load %struct.targ_cdb_handlers*, %struct.targ_cdb_handlers** @tcmd_handle.last_cmd, align 8
  %223 = getelementptr inbounds %struct.targ_cdb_handlers, %struct.targ_cdb_handlers* %222, i32 0, i32 1
  %224 = load i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)*, i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)** %223, align 8
  %225 = icmp ne i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)* %224, bitcast (i32 (%struct.ccb_accept_tio*, %struct.ccb_scsiio*)* @tcmd_rdwr to i32 (%struct.ccb_accept_tio.0*, %struct.ccb_scsiio.1*)*)
  br i1 %225, label %226, label %239

226:                                              ; preds = %213
  %227 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %228 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %231 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 8
  %236 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %237 = bitcast %struct.ccb_scsiio* %236 to %union.ccb*
  %238 = call i32 @send_ccb(%union.ccb* %237, i32 1)
  br label %239

239:                                              ; preds = %226, %213
  br label %240

240:                                              ; preds = %239, %207
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %240, %180, %128, %108, %89
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i32 @warnx(i8*, i64, ...) #1

declare dso_local i32 @free_ccb(%union.ccb*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @tcmd_illegal_req(%struct.ccb_accept_tio*, %struct.ccb_scsiio*) #1

declare dso_local i32 @send_ccb(%union.ccb*, i32) #1

declare dso_local %struct.initiator_state* @tcmd_get_istate(i32) #1

declare dso_local i32 @tcmd_sense(i32, %struct.ccb_scsiio*, i32, i32, i32) #1

declare dso_local i32 @cdb_debug(i64*, i8*, i32) #1

declare dso_local i32 @tcmd_rdwr(%struct.ccb_accept_tio*, %struct.ccb_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
