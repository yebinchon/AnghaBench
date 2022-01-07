; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_error_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_error_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.asc_table_entry = type { i32 }
%struct.sense_key_table_entry = type { i32 }
%union.ccb = type { i32 }

@SS_RETRY = common dso_local global i32 0, align 4
@SSQ_DECREMENT_COUNT = common dso_local global i32 0, align 4
@SSQ_PRINT_SENSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SSD_DEFERRED_ERROR = common dso_local global i32 0, align 4
@SSD_DESC_DEFERRED_ERROR = common dso_local global i32 0, align 4
@SSD_KEY_RECOVERED_ERROR = common dso_local global i32 0, align 4
@SS_MASK = common dso_local global i32 0, align 4
@SSQ_MASK = common dso_local global i32 0, align 4
@SS_ERRMASK = common dso_local global i32 0, align 4
@SS_NOP = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SF_QUIET_IR = common dso_local global i32 0, align 4
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@SS_FAIL = common dso_local global i32 0, align 4
@SSQ_UA = common dso_local global i32 0, align 4
@SS_START = common dso_local global i32 0, align 4
@SF_NO_RECOVERY = common dso_local global i32 0, align 4
@SF_NO_RETRY = common dso_local global i32 0, align 4
@SF_PRINT_ALWAYS = common dso_local global i32 0, align 4
@SF_NO_PRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_error_action(%struct.ccb_scsiio* %0, %struct.scsi_inquiry_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asc_table_entry*, align 8
  %8 = alloca %struct.sense_key_table_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %4, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %15 = bitcast %struct.ccb_scsiio* %14 to %union.ccb*
  %16 = call i32 @scsi_extract_sense_ccb(%union.ccb* %15, i32* %9, i32* %10, i32* %11, i32* %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @SS_RETRY, align 4
  %20 = load i32, i32* @SSQ_DECREMENT_COUNT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @EIO, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %13, align 4
  br label %142

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SSD_DEFERRED_ERROR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SSD_DESC_DEFERRED_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @SS_RETRY, align 4
  %36 = load i32, i32* @SSQ_DECREMENT_COUNT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %13, align 4
  br label %141

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %45 = call i32 @fetchtableentries(i32 %41, i32 %42, i32 %43, %struct.scsi_inquiry_data* %44, %struct.sense_key_table_entry** %8, %struct.asc_table_entry** %7)
  %46 = load %struct.asc_table_entry*, %struct.asc_table_entry** %7, align 8
  %47 = icmp ne %struct.asc_table_entry* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %48
  %55 = load %struct.asc_table_entry*, %struct.asc_table_entry** %7, align 8
  %56 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  br label %72

58:                                               ; preds = %51, %40
  %59 = load %struct.sense_key_table_entry*, %struct.sense_key_table_entry** %8, align 8
  %60 = icmp ne %struct.sense_key_table_entry* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.sense_key_table_entry*, %struct.sense_key_table_entry** %8, align 8
  %63 = getelementptr inbounds %struct.sense_key_table_entry, %struct.sense_key_table_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  br label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @SS_RETRY, align 4
  %67 = load i32, i32* @SSQ_DECREMENT_COUNT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SSD_KEY_RECOVERED_ERROR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32, i32* @SS_MASK, align 4
  %78 = load i32, i32* @SSQ_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SS_ERRMASK, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @SS_NOP, align 4
  %86 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  br label %140

90:                                               ; preds = %72
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SF_QUIET_IR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %99, %94
  br label %139

105:                                              ; preds = %90
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SF_RETRY_UA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @SS_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @SS_FAIL, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load i32, i32* @SS_MASK, align 4
  %122 = load i32, i32* @SSQ_MASK, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* @SS_RETRY, align 4
  %128 = load i32, i32* @SSQ_DECREMENT_COUNT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %120, %114, %109
  %135 = load i32, i32* @SSQ_UA, align 4
  %136 = load i32, i32* %13, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %134, %105
  br label %139

139:                                              ; preds = %138, %104
  br label %140

140:                                              ; preds = %139, %76
  br label %141

141:                                              ; preds = %140, %34
  br label %142

142:                                              ; preds = %141, %18
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @SS_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @SS_START, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @SF_NO_RECOVERY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @SS_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* @SS_FAIL, align 4
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  br label %181

161:                                              ; preds = %148, %142
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @SS_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @SS_RETRY, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @SF_NO_RETRY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i32, i32* @SS_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %13, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* @SS_FAIL, align 4
  %178 = load i32, i32* %13, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %172, %167, %161
  br label %181

181:                                              ; preds = %180, %153
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @SF_PRINT_ALWAYS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %188 = load i32, i32* %13, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %13, align 4
  br label %201

190:                                              ; preds = %181
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @SF_NO_PRINT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32, i32* @SSQ_PRINT_SENSE, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %195, %190
  br label %201

201:                                              ; preds = %200, %186
  %202 = load i32, i32* %13, align 4
  ret i32 %202
}

declare dso_local i32 @scsi_extract_sense_ccb(%union.ccb*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fetchtableentries(i32, i32, i32, %struct.scsi_inquiry_data*, %struct.sense_key_table_entry**, %struct.asc_table_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
