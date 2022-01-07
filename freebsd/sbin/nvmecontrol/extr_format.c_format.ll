; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_format.c_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_format.c_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i32, i32, i64 }
%struct.cmd = type { i32 }
%struct.nvme_controller_data = type { i32, i32 }
%struct.nvme_namespace_data = type { i32, i32, i32 }
%struct.nvme_pt_command = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SES_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Only one of -E, -C or -s may be specified\0A\00", align 1
@SES_USER = common dso_local global i32 0, align 4
@SES_CRYPTO = common dso_local global i32 0, align 4
@NVME_GLOBAL_NAMESPACE_TAG = common dso_local global i64 0, align 8
@NVME_CTRLR_DATA_OACS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_OACS_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"controller does not support format\00", align 1
@NVME_CTRLR_DATA_FNA_CRYPTO_ERASE_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_FNA_CRYPTO_ERASE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"controller does not support cryptographic erase\00", align 1
@NVME_CTRLR_DATA_FNA_FORMAT_ALL_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_FNA_FORMAT_ALL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"controller does not support per-NS format\00", align 1
@NVME_CTRLR_DATA_FNA_ERASE_ALL_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_FNA_ERASE_ALL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"controller does not support per-NS erase\00", align 1
@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"LBA format is out of range\00", align 1
@NVME_NS_DATA_FLBAS_EXTENDED_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_EXTENDED_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_MD_START_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_MD_START_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_PIT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_PIT_MASK = common dso_local global i32 0, align 4
@NVME_OPC_FORMAT_NVM = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"format request failed\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"format request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_controller_data, align 4
  %8 = alloca %struct.nvme_namespace_data, align 4
  %9 = alloca %struct.nvme_pt_command, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load %struct.cmd*, %struct.cmd** %4, align 8
  %22 = call i64 @arg_parse(i32 %19, i8** %20, %struct.cmd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  ret void

25:                                               ; preds = %3
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  %31 = load i32, i32* @SES_NONE, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = load %struct.cmd*, %struct.cmd** %4, align 8
  %42 = call i32 @arg_help(i32 %39, i8** %40, %struct.cmd* %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 2), align 8
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 3), align 8
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 4), align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 5), align 8
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 6), align 4
  store i32 %48, i32* %16, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @SES_USER, align 4
  store i32 %52, i32* %17, align 4
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @SES_CRYPTO, align 4
  store i32 %57, i32* %17, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @open_dev(i8* %62, i32* %18, i32 1, i32 1)
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @get_nsid(i32 %64, i8** %10, i64* %12)
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @NVME_GLOBAL_NAMESPACE_TAG, align 8
  store i64 %69, i64* %12, align 8
  br label %75

70:                                               ; preds = %61
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @open_dev(i8* %73, i32* %18, i32 1, i32 1)
  br label %75

75:                                               ; preds = %70, %68
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @read_controller_data(i32 %78, %struct.nvme_controller_data* %7)
  %80 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NVME_CTRLR_DATA_OACS_FORMAT_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* @NVME_CTRLR_DATA_OACS_FORMAT_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %75
  %90 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NVME_CTRLR_DATA_FNA_CRYPTO_ERASE_SHIFT, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32, i32* @NVME_CTRLR_DATA_FNA_CRYPTO_ERASE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @SES_CRYPTO, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97, %89
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @NVME_GLOBAL_NAMESPACE_TAG, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %186

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NVME_CTRLR_DATA_FNA_FORMAT_ALL_SHIFT, align 4
  %111 = ashr i32 %109, %110
  %112 = load i32, i32* @NVME_CTRLR_DATA_FNA_FORMAT_ALL_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @SES_NONE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115, %107
  %122 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NVME_CTRLR_DATA_FNA_ERASE_ALL_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = load i32, i32* @NVME_CTRLR_DATA_FNA_ERASE_ALL_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @SES_NONE, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129, %121
  %136 = load i32, i32* %18, align 4
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @read_namespace_data(i32 %136, i64 %137, %struct.nvme_namespace_data* %8)
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 4
  %147 = and i32 %145, %146
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %141, %135
  %149 = load i32, i32* %13, align 4
  %150 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %149, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NVME_NS_DATA_FLBAS_EXTENDED_SHIFT, align 4
  %162 = ashr i32 %160, %161
  %163 = load i32, i32* @NVME_NS_DATA_FLBAS_EXTENDED_MASK, align 4
  %164 = and i32 %162, %163
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %158, %155
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_SHIFT, align 4
  %172 = ashr i32 %170, %171
  %173 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_MASK, align 4
  %174 = and i32 %172, %173
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %168, %165
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @NVME_NS_DATA_DPS_PIT_SHIFT, align 4
  %182 = ashr i32 %180, %181
  %183 = load i32, i32* @NVME_NS_DATA_DPS_PIT_MASK, align 4
  %184 = and i32 %182, %183
  store i32 %184, i32* %16, align 4
  br label %185

185:                                              ; preds = %178, %175
  br label %203

186:                                              ; preds = %103
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 0, i32* %13, align 4
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32 0, i32* %14, align 4
  br label %194

194:                                              ; preds = %193, %190
  %195 = load i32, i32* %15, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 0, i32* %16, align 4
  br label %202

202:                                              ; preds = %201, %198
  br label %203

203:                                              ; preds = %202, %185
  %204 = call i32 @memset(%struct.nvme_pt_command* %9, i32 0, i32 32)
  %205 = load i32, i32* @NVME_OPC_FORMAT_NVM, align 4
  %206 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load i64, i64* %12, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i8* @htole32(i32 %209)
  %211 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %17, align 4
  %214 = shl i32 %213, 9
  %215 = load i32, i32* %16, align 4
  %216 = shl i32 %215, 8
  %217 = add nsw i32 %214, %216
  %218 = load i32, i32* %15, align 4
  %219 = shl i32 %218, 5
  %220 = add nsw i32 %217, %219
  %221 = load i32, i32* %14, align 4
  %222 = shl i32 %221, 4
  %223 = add nsw i32 %220, %222
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i8* @htole32(i32 %225)
  %227 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %231 = call i64 @ioctl(i32 %229, i32 %230, %struct.nvme_pt_command* %9)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %203
  %234 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %203
  %236 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 0
  %237 = call i64 @nvme_completion_is_error(i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %241

241:                                              ; preds = %239, %235
  %242 = load i32, i32* %18, align 4
  %243 = call i32 @close(i32 %242)
  %244 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i8*, i32*, i32, i32) #1

declare dso_local i32 @get_nsid(i32, i8**, i64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @read_namespace_data(i32, i64, %struct.nvme_namespace_data*) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

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
