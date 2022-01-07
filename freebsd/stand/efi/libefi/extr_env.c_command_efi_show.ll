; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i8*, i32*)* }

@ZERO_GUID = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@opterr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ag:lv:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"uuid %s could not be parsed\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Variable %s is longer than %zu characters\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"-a isn't compatible with -g or -v\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"-a doesn't take any args\0A\00", align 1
@CMD_WARN = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Too many args: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Can't allocate memory to get variables\0A\00", align 1
@RS = common dso_local global %struct.TYPE_2__* null, align 8
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_efi_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_efi_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @ZERO_GUID, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @ZERO_GUID, align 4
  store i32 %22, i32* %15, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @opterr, align 4
  br label %23

23:                                               ; preds = %61, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %59 [
    i32 97, label %30
    i32 103, label %31
    i32 108, label %40
    i32 118, label %41
  ]

30:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %61

31:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @efi_name_to_guid(i8* %32, i32* %15)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @CMD_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %303

39:                                               ; preds = %31
  br label %61

40:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %61

41:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %45 = call i32 @nitems(i8* %44)
  %46 = icmp uge i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i8*, i8** @optarg, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %50 = call i32 @nitems(i8* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50)
  %52 = load i32, i32* @CMD_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %303

53:                                               ; preds = %41
  %54 = load i8*, i8** @optarg, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %57 = call i32 @nitems(i8* %56)
  %58 = call i32 @cpy8to16(i8* %54, i8* %55, i32 %57)
  br label %61

59:                                               ; preds = %28
  %60 = load i32, i32* @CMD_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %303

61:                                               ; preds = %53, %40, %39, %30
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %69
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @CMD_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %303

78:                                               ; preds = %72, %66
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* @optind, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @CMD_ERROR, align 4
  store i32 %87, i32* %3, align 4
  br label %303

88:                                               ; preds = %81, %78
  %89 = load i32, i32* @optind, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @optind, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8** %95, i8*** %5, align 8
  %96 = call i32 (...) @pager_open()
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @efi_print_var(i8* %103, i32* %15, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @CMD_WARN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @CMD_OK, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %102
  %112 = call i32 (...) @pager_close()
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %303

114:                                              ; preds = %99, %88
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %178

117:                                              ; preds = %114
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** @optarg, align 8
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %124 = call i32 @nitems(i8* %123)
  %125 = icmp uge i32 %122, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i8*, i8** @optarg, align 8
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %129 = call i32 @nitems(i8* %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %127, i32 %129)
  %131 = call i32 (...) @pager_close()
  %132 = load i32, i32* @CMD_ERROR, align 4
  store i32 %132, i32* %3, align 4
  br label %303

133:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %148, %133
  %135 = load i32, i32* %12, align 4
  %136 = load i8*, i8** @optarg, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i8*, i8** @optarg, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %146
  store i8 %144, i8* %147, align 1
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %134

151:                                              ; preds = %134
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** @optarg, align 8
  %158 = load i8*, i8** @optarg, align 8
  %159 = call i32 @efi_name_to_guid(i8* %158, i32* %15)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load i8*, i8** @optarg, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  %164 = call i32 (...) @pager_close()
  %165 = load i32, i32* @CMD_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %303

166:                                              ; preds = %151
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @efi_print_var(i8* %167, i32* %15, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @CMD_WARN, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* @CMD_OK, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %173, %166
  %176 = call i32 (...) @pager_close()
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %3, align 4
  br label %303

178:                                              ; preds = %114
  %179 = load i32, i32* %4, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  %184 = call i32 (...) @pager_close()
  %185 = load i32, i32* @CMD_ERROR, align 4
  store i32 %185, i32* %3, align 4
  br label %303

186:                                              ; preds = %178
  store i32 1024, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i8* @malloc(i32 %187)
  store i8* %188, i8** %16, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %193 = call i32 (...) @pager_close()
  %194 = load i32, i32* @CMD_ERROR, align 4
  store i32 %194, i32* %3, align 4
  br label %303

195:                                              ; preds = %186
  %196 = load i8*, i8** %16, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  store i8 0, i8* %197, align 1
  br label %198

198:                                              ; preds = %195, %218, %249, %272, %295, %297
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %20, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RS, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64 (i32*, i8*, i32*)*, i64 (i32*, i8*, i32*)** %201, align 8
  %203 = load i8*, i8** %16, align 8
  %204 = call i64 %202(i32* %20, i8* %203, i32* %14)
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %198
  %209 = load i32, i32* %20, align 4
  store i32 %209, i32* %19, align 4
  %210 = load i8*, i8** %16, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i8* @realloc(i8* %210, i32 %211)
  store i8* %212, i8** %17, align 8
  %213 = load i8*, i8** %17, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %217 = load i32, i32* @CMD_ERROR, align 4
  store i32 %217, i32* %11, align 4
  br label %298

218:                                              ; preds = %208
  %219 = load i8*, i8** %17, align 8
  store i8* %219, i8** %16, align 8
  br label %198

220:                                              ; preds = %198
  %221 = load i64, i64* %13, align 8
  %222 = load i64, i64* @EFI_NOT_FOUND, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* @CMD_OK, align 4
  store i32 %225, i32* %11, align 4
  br label %298

226:                                              ; preds = %220
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* @EFI_SUCCESS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32, i32* @CMD_ERROR, align 4
  store i32 %231, i32* %11, align 4
  br label %298

232:                                              ; preds = %226
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i8*, i8** %16, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @efi_print_var(i8* %236, i32* %14, i32 %237)
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @CMD_OK, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @CMD_WARN, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* @CMD_OK, align 4
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %246, %242
  br label %298

249:                                              ; preds = %235
  br label %198

250:                                              ; preds = %232
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %250
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %255 = load i8*, i8** %16, align 8
  %256 = call i64 @wcscmp(i8* %254, i8* %255)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %253
  %259 = load i8*, i8** %16, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @efi_print_var(i8* %259, i32* %14, i32 %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* @CMD_OK, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %258
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @CMD_WARN, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* @CMD_OK, align 4
  store i32 %270, i32* %11, align 4
  br label %271

271:                                              ; preds = %269, %265
  br label %298

272:                                              ; preds = %258
  br label %198

273:                                              ; preds = %253
  br label %274

274:                                              ; preds = %273, %250
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %297

277:                                              ; preds = %274
  %278 = call i32 @uuid_equal(i32* %14, i32* %15, i32* null)
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %277
  %282 = load i8*, i8** %16, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @efi_print_var(i8* %282, i32* %14, i32 %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @CMD_OK, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %281
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* @CMD_WARN, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @CMD_OK, align 4
  store i32 %293, i32* %11, align 4
  br label %294

294:                                              ; preds = %292, %288
  br label %298

295:                                              ; preds = %281
  br label %198

296:                                              ; preds = %277
  br label %297

297:                                              ; preds = %296, %274
  br label %198

298:                                              ; preds = %294, %271, %248, %230, %224, %215
  %299 = load i8*, i8** %16, align 8
  %300 = call i32 @free(i8* %299)
  %301 = call i32 (...) @pager_close()
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %298, %191, %181, %175, %161, %126, %111, %85, %75, %59, %47, %35
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @efi_name_to_guid(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nitems(i8*) #1

declare dso_local i32 @cpy8to16(i8*, i8*, i32) #1

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @efi_print_var(i8*, i32*, i32) #1

declare dso_local i32 @pager_close(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i64 @wcscmp(i8*, i8*) #1

declare dso_local i32 @uuid_equal(i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
