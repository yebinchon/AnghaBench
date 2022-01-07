; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_sanitize.c_sanitize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_sanitize.c_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, i64, i32* }
%struct.cmd = type { i32 }
%struct.nvme_controller_data = type { i32, i32 }
%struct.nvme_pt_command = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.nvme_sanitize_status_page = type { i32, i32 }

@opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Sanitize Action is not specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"exitfailure\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Incorrect Sanitize Action value\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Incorrect Overwrite Pass Count value\0A\00", align 1
@NVME_CTRLR_DATA_SANICAP_BES_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_SANICAP_BES_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"controller does not support Block Erase\00", align 1
@NVME_CTRLR_DATA_SANICAP_OWS_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_SANICAP_OWS_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"controller does not support Overwrite\00", align 1
@NVME_CTRLR_DATA_SANICAP_CES_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_SANICAP_CES_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"controller does not support Crypto Erase\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"can't sanitize one of namespaces, specify controller\00", align 1
@NVME_OPC_SANITIZE = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"sanitize request failed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"sanitize request returned error\00", align 1
@NVME_LOG_SANITIZE_STATUS = common dso_local global i32 0, align 4
@NVME_GLOBAL_NAMESPACE_TAG = common dso_local global i32 0, align 4
@NVME_SS_PAGE_SSTAT_STATUS_SHIFT = common dso_local global i32 0, align 4
@NVME_SS_PAGE_SSTAT_STATUS_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"Never sanitized\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Sanitize completed\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Sanitize in progress: %u%% (%u/65535)\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Sanitize failed\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Sanitize completed with deallocation\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Sanitize status unknown\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"                       \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_controller_data, align 4
  %8 = alloca %struct.nvme_pt_command, align 8
  %9 = alloca %struct.nvme_sanitize_status_page, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = load %struct.cmd*, %struct.cmd** %4, align 8
  %18 = call i64 @arg_parse(i32 %15, i8** %16, %struct.cmd* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  ret void

21:                                               ; preds = %3
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 6), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = load %struct.cmd*, %struct.cmd** %4, align 8
  %33 = call i32 @arg_help(i32 %30, i8** %31, %struct.cmd* %32)
  br label %34

34:                                               ; preds = %27, %24
  br label %66

35:                                               ; preds = %21
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %37 = call i64 @strcmp(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %65

40:                                               ; preds = %35
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %42 = call i64 @strcmp(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 2, i32* %12, align 4
  br label %64

45:                                               ; preds = %40
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %47 = call i64 @strcmp(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 3, i32* %12, align 4
  br label %63

50:                                               ; preds = %45
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %52 = call i64 @strcmp(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 4, i32* %12, align 4
  br label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* %5, align 4
  %59 = load i8**, i8*** %6, align 8
  %60 = load %struct.cmd*, %struct.cmd** %4, align 8
  %61 = call i32 @arg_help(i32 %58, i8** %59, %struct.cmd* %60)
  br label %62

62:                                               ; preds = %55, %54
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %71 = icmp sgt i32 %70, 16
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* %5, align 4
  %76 = load i8**, i8*** %6, align 8
  %77 = load %struct.cmd*, %struct.cmd** %4, align 8
  %78 = call i32 @arg_help(i32 %75, i8** %76, %struct.cmd* %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 8
  %81 = call i32 @open_dev(i8* %80, i32* %13, i32 1, i32 1)
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @get_nsid(i32 %82, i8** %10, i64* %11)
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @close(i32 %87)
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @open_dev(i8* %89, i32* %13, i32 1, i32 1)
  br label %91

91:                                               ; preds = %86, %79
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 6), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %186

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @read_controller_data(i32 %98, %struct.nvme_controller_data* %7)
  %100 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_BES_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_BES_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107, %97
  %113 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_OWS_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_OWS_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120, %112
  %126 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_CES_SHIFT, align 4
  %129 = ashr i32 %127, %128
  %130 = load i32, i32* @NVME_CTRLR_DATA_SANICAP_CES_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133, %125
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141, %138
  %148 = call i32 @memset(%struct.nvme_pt_command* %8, i32 0, i32 32)
  %149 = load i32, i32* @NVME_OPC_SANITIZE, align 4
  %150 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 2), align 8
  %153 = shl i32 %152, 9
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 3), align 4
  %155 = shl i32 %154, 8
  %156 = or i32 %153, %155
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %158 = and i32 %157, 15
  %159 = shl i32 %158, 4
  %160 = or i32 %156, %159
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 4), align 8
  %162 = shl i32 %161, 3
  %163 = or i32 %160, %162
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %163, %164
  %166 = call i8* @htole32(i32 %165)
  %167 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 5), align 4
  %170 = call i8* @htole32(i32 %169)
  %171 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %175 = call i64 @ioctl(i32 %173, i32 %174, %struct.nvme_pt_command* %8)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %147
  %178 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %147
  %180 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 0
  %181 = call i64 @nvme_completion_is_error(i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %179
  br label %186

186:                                              ; preds = %217, %185, %96
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @NVME_LOG_SANITIZE_STATUS, align 4
  %189 = load i32, i32* @NVME_GLOBAL_NAMESPACE_TAG, align 4
  %190 = call i32 @read_logpage(i32 %187, i32 %188, i32 %189, i32 0, i32 0, i32 0, %struct.nvme_sanitize_status_page* %9, i32 8)
  %191 = getelementptr inbounds %struct.nvme_sanitize_status_page, %struct.nvme_sanitize_status_page* %9, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NVME_SS_PAGE_SSTAT_STATUS_SHIFT, align 4
  %194 = ashr i32 %192, %193
  %195 = load i32, i32* @NVME_SS_PAGE_SSTAT_STATUS_MASK, align 4
  %196 = and i32 %194, %195
  switch i32 %196, label %224 [
    i32 128, label %197
    i32 132, label %199
    i32 129, label %201
    i32 130, label %220
    i32 131, label %222
  ]

197:                                              ; preds = %186
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %226

199:                                              ; preds = %186
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %226

201:                                              ; preds = %186
  %202 = getelementptr inbounds %struct.nvme_sanitize_status_page, %struct.nvme_sanitize_status_page* %9, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 100
  %205 = add nsw i32 %204, 32768
  %206 = sdiv i32 %205, 65536
  %207 = getelementptr inbounds %struct.nvme_sanitize_status_page, %struct.nvme_sanitize_status_page* %9, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %206, i32 %208)
  %210 = load i32, i32* @stdout, align 4
  %211 = call i32 @fflush(i32 %210)
  %212 = load i32, i32* %14, align 4
  %213 = icmp slt i32 %212, 16
  br i1 %213, label %214, label %217

214:                                              ; preds = %201
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %214, %201
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @sleep(i32 %218)
  br label %186

220:                                              ; preds = %186
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %226

222:                                              ; preds = %186
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  br label %226

224:                                              ; preds = %186
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %222, %220, %199, %197
  %227 = load i32, i32* %14, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %226
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @close(i32 %233)
  %235 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @open_dev(i8*, i32*, i32, i32) #1

declare dso_local i32 @get_nsid(i32, i8**, i64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @read_logpage(i32, i32, i32, i32, i32, i32, %struct.nvme_sanitize_status_page*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
