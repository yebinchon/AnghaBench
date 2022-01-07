; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_only_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_only_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.sbuf = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_data_desc = type { i32 }
%struct.scsi_print_sense_info = type { i8*, i32, %struct.scsi_inquiry_data*, i32*, %struct.sbuf* }
%struct.scsi_sense_data_fixed = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"SCSI sense: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Deferred error: \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" asc:%x,%x (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SSD_DESC_INFO = common dso_local global i32 0, align 4
@SSD_DESC_FRU = common dso_local global i32 0, align 4
@SSD_DESC_COMMAND = common dso_local global i32 0, align 4
@SSD_TYPE_DESC = common dso_local global i32 0, align 4
@scsi_print_desc_func = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"No sense data present\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Error code 0x%x\00", align 1
@SSD_ERRCODE_VALID = common dso_local global i32 0, align 4
@info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c" at block no. %d (decimal)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_only_sbuf(%struct.scsi_sense_data* %0, i32 %1, %struct.sbuf* %2, i8* %3, %struct.scsi_inquiry_data* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.scsi_sense_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.scsi_inquiry_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_sense_data_desc*, align 8
  %20 = alloca %struct.scsi_print_sense_info, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [3 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.scsi_sense_data_fixed*, align 8
  %27 = alloca i32, align 4
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sbuf* %2, %struct.sbuf** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.scsi_inquiry_data* %4, %struct.scsi_inquiry_data** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %28 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @sbuf_cat(%struct.sbuf* %28, i8* %29)
  %31 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %31, i32 %32, i32* %15, i32* %16, i32* %17, i32* %18, i32 1)
  %34 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %35 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %15, align 4
  switch i32 %36, label %183 [
    i32 130, label %37
    i32 128, label %37
    i32 131, label %40
    i32 129, label %40
    i32 -1, label %180
  ]

37:                                               ; preds = %7, %7
  %38 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %39 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %7, %7, %37
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %45 = call i32 @scsi_sense_desc(i32 %41, i32 %42, i32 %43, %struct.scsi_inquiry_data* %44, i8** %21, i8** %22)
  %46 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = call i32 @sbuf_cat(%struct.sbuf* %46, i8* %47)
  %49 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %22, align 8
  %53 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51, i8* %52)
  %54 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %57 = call i32 @scsi_get_block_info(%struct.scsi_sense_data* %54, i32 %55, %struct.scsi_inquiry_data* %56, i32* %25)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %40
  %60 = load i32, i32* %25, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @sbuf_cat(%struct.sbuf* %63, i8* %64)
  %66 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %67 = load i32, i32* %25, align 4
  %68 = call i32 @scsi_block_sbuf(%struct.sbuf* %66, i32 %67)
  %69 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %70 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

71:                                               ; preds = %59, %40
  %72 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %75 = call i32 @scsi_get_stream_info(%struct.scsi_sense_data* %72, i32 %73, %struct.scsi_inquiry_data* %74, i32* %25)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %25, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @sbuf_cat(%struct.sbuf* %81, i8* %82)
  %84 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %85 = load i32, i32* %25, align 4
  %86 = call i32 @scsi_stream_sbuf(%struct.sbuf* %84, i32 %85)
  %87 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %88 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %80, %77, %71
  br label %90

90:                                               ; preds = %89, %62
  %91 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @SSD_DESC_INFO, align 4
  %94 = call i32 @scsi_get_sense_info(%struct.scsi_sense_data* %91, i32 %92, i32 %93, i32* %24, i32* null)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @sbuf_cat(%struct.sbuf* %97, i8* %98)
  %100 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %104 = load i32, i32* %24, align 4
  %105 = call i32 @scsi_info_sbuf(%struct.sbuf* %100, i32* %101, i32 %102, %struct.scsi_inquiry_data* %103, i32 %104)
  %106 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %107 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @SSD_DESC_FRU, align 4
  %112 = call i32 @scsi_get_sense_info(%struct.scsi_sense_data* %109, i32 %110, i32 %111, i32* %24, i32* null)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @sbuf_cat(%struct.sbuf* %115, i8* %116)
  %118 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %119 = load i32, i32* %24, align 4
  %120 = call i32 @scsi_fru_sbuf(%struct.sbuf* %118, i32 %119)
  %121 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %122 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %114, %108
  %124 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @SSD_DESC_COMMAND, align 4
  %127 = call i32 @scsi_get_sense_info(%struct.scsi_sense_data* %124, i32 %125, i32 %126, i32* %24, i32* null)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @sbuf_cat(%struct.sbuf* %130, i8* %131)
  %133 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %137 = load i32, i32* %24, align 4
  %138 = call i32 @scsi_command_sbuf(%struct.sbuf* %133, i32* %134, i32 %135, %struct.scsi_inquiry_data* %136, i32 %137)
  %139 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %140 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %129, %123
  %142 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %145 = call i32 @scsi_get_sks(%struct.scsi_sense_data* %142, i32 %143, i32* %144)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @sbuf_cat(%struct.sbuf* %148, i8* %149)
  %151 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %152 = load i32, i32* %16, align 4
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %154 = call i32 @scsi_sks_sbuf(%struct.sbuf* %151, i32 %152, i32* %153)
  %155 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %156 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %147, %141
  %158 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %159 = call i32 @scsi_sense_type(%struct.scsi_sense_data* %158)
  %160 = load i32, i32* @SSD_TYPE_DESC, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %213

163:                                              ; preds = %157
  %164 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %165 = bitcast %struct.scsi_sense_data* %164 to %struct.scsi_sense_data_desc*
  store %struct.scsi_sense_data_desc* %165, %struct.scsi_sense_data_desc** %19, align 8
  %166 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %167 = getelementptr inbounds %struct.scsi_print_sense_info, %struct.scsi_print_sense_info* %20, i32 0, i32 4
  store %struct.sbuf* %166, %struct.sbuf** %167, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds %struct.scsi_print_sense_info, %struct.scsi_print_sense_info* %20, i32 0, i32 0
  store i8* %168, i8** %169, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = getelementptr inbounds %struct.scsi_print_sense_info, %struct.scsi_print_sense_info* %20, i32 0, i32 3
  store i32* %170, i32** %171, align 8
  %172 = load i32, i32* %14, align 4
  %173 = getelementptr inbounds %struct.scsi_print_sense_info, %struct.scsi_print_sense_info* %20, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %12, align 8
  %175 = getelementptr inbounds %struct.scsi_print_sense_info, %struct.scsi_print_sense_info* %20, i32 0, i32 2
  store %struct.scsi_inquiry_data* %174, %struct.scsi_inquiry_data** %175, align 8
  %176 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %19, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @scsi_print_desc_func, align 4
  %179 = call i32 @scsi_desc_iterate(%struct.scsi_sense_data_desc* %176, i32 %177, i32 %178, %struct.scsi_print_sense_info* %20)
  br label %213

180:                                              ; preds = %7
  %181 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %182 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %213

183:                                              ; preds = %7
  %184 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %185 = load i32, i32* %15, align 4
  %186 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %188 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SSD_ERRCODE_VALID, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %183
  %194 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %8, align 8
  %195 = bitcast %struct.scsi_sense_data* %194 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %195, %struct.scsi_sense_data_fixed** %26, align 8
  %196 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %26, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @info, align 4
  %199 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %196, i32 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %193
  %202 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %26, align 8
  %203 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @scsi_4btoul(i32 %204)
  store i32 %205, i32* %27, align 4
  %206 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %207 = load i32, i32* %27, align 4
  %208 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %201, %193
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %212 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %180, %163, %162
  ret void
}

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @scsi_sense_desc(i32, i32, i32, %struct.scsi_inquiry_data*, i8**, i8**) #1

declare dso_local i32 @scsi_get_block_info(%struct.scsi_sense_data*, i32, %struct.scsi_inquiry_data*, i32*) #1

declare dso_local i32 @scsi_block_sbuf(%struct.sbuf*, i32) #1

declare dso_local i32 @scsi_get_stream_info(%struct.scsi_sense_data*, i32, %struct.scsi_inquiry_data*, i32*) #1

declare dso_local i32 @scsi_stream_sbuf(%struct.sbuf*, i32) #1

declare dso_local i32 @scsi_get_sense_info(%struct.scsi_sense_data*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scsi_info_sbuf(%struct.sbuf*, i32*, i32, %struct.scsi_inquiry_data*, i32) #1

declare dso_local i32 @scsi_fru_sbuf(%struct.sbuf*, i32) #1

declare dso_local i32 @scsi_command_sbuf(%struct.sbuf*, i32*, i32, %struct.scsi_inquiry_data*, i32) #1

declare dso_local i32 @scsi_get_sks(%struct.scsi_sense_data*, i32, i32*) #1

declare dso_local i32 @scsi_sks_sbuf(%struct.sbuf*, i32, i32*) #1

declare dso_local i32 @scsi_sense_type(%struct.scsi_sense_data*) #1

declare dso_local i32 @scsi_desc_iterate(%struct.scsi_sense_data_desc*, i32, i32, %struct.scsi_print_sense_info*) #1

declare dso_local i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed*, i32, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
