; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_print_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_print_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"AuditMode\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BootOptionSupport\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"BootCurrent\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BootNext\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"DriverOrder\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Boot\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SysPrep\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"OsRecovery\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_WARN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"\09%S\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"ConIn\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ConInDev\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"ConOut\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ConOutDev\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ErrOut\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ErrOutDev\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"PlatformLang\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"PlatformLangCodes\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"LangCodes\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Lang\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"OsIndicationsSupported\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"0x%jx\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i32)* @efi_print_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_print_global(i64* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = call i64 @ucs2_to_utf8(i64* %17, i8** %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CMD_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %260

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %245

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %245

40:                                               ; preds = %31
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %44, %40
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %245

57:                                               ; preds = %48
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61, %57
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %11, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %82, %65
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %68

85:                                               ; preds = %68
  br label %245

86:                                               ; preds = %61
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %87, i32 4)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %91, i32 5)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %95, i32 7)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  %100 = call i64 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %99, i32 10)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %167

102:                                              ; preds = %98, %94, %90, %86
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32* %104, i32** %6, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %6, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = bitcast i32* %109 to i64*
  store i64* %110, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %119, %102
  %112 = load i64*, i64** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %111

122:                                              ; preds = %111
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  %128 = mul nsw i32 %127, 2
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i64*, i64** %13, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64* %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %129
  %136 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @CMD_WARN, align 4
  store i32 %139, i32* %8, align 4
  br label %245

140:                                              ; preds = %135
  %141 = load i32, i32* %12, align 4
  %142 = call i8* @malloc(i32 %141)
  store i8* %142, i8** %15, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %245

146:                                              ; preds = %140
  %147 = load i8*, i8** %15, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @memcpy(i8* %147, i32* %151, i32 %152)
  %154 = load i8*, i8** %15, align 8
  %155 = call i64* @efi_devpath_name(i8* %154)
  store i64* %155, i64** %13, align 8
  %156 = load i64*, i64** %13, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = load i64*, i64** %13, align 8
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64* %159)
  %161 = load i64*, i64** %13, align 8
  %162 = call i32 @efi_free_devpath_name(i64* %161)
  br label %163

163:                                              ; preds = %158, %146
  %164 = load i8*, i8** %15, align 8
  %165 = call i32 @free(i8* %164)
  br label %166

166:                                              ; preds = %163, %129
  br label %245

167:                                              ; preds = %98
  %168 = load i8*, i8** %9, align 8
  %169 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %191, label %171

171:                                              ; preds = %167
  %172 = load i8*, i8** %9, align 8
  %173 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %9, align 8
  %177 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = load i8*, i8** %9, align 8
  %181 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** %9, align 8
  %185 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %9, align 8
  %189 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %187, %183, %179, %175, %171, %167
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %193 = load i32*, i32** %6, align 8
  %194 = bitcast i32* %193 to i8*
  %195 = call i64* @efi_devpath_name(i8* %194)
  store i64* %195, i64** %16, align 8
  %196 = load i64*, i64** %16, align 8
  %197 = icmp ne i64* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load i64*, i64** %16, align 8
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64* %199)
  %201 = load i64*, i64** %16, align 8
  %202 = call i32 @efi_free_devpath_name(i64* %201)
  br label %203

203:                                              ; preds = %198, %191
  br label %245

204:                                              ; preds = %187
  %205 = load i8*, i8** %9, align 8
  %206 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %205)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %204
  %209 = load i8*, i8** %9, align 8
  %210 = call i64 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %208
  %213 = load i8*, i8** %9, align 8
  %214 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %212
  %217 = load i8*, i8** %9, align 8
  %218 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216, %212, %208, %204
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32* %222)
  br label %245

224:                                              ; preds = %216
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @strcmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8* %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 4
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  br label %240

236:                                              ; preds = %228
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %236, %232
  br label %245

241:                                              ; preds = %224
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @efi_print_other_value(i32* %242, i32 %243)
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %241, %240, %220, %203, %166, %145, %138, %85, %52, %35, %26
  %246 = load i32, i32* %8, align 4
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* @CMD_WARN, align 4
  store i32 %252, i32* %8, align 4
  br label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @CMD_OK, align 4
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %253, %251
  br label %256

256:                                              ; preds = %255, %245
  %257 = load i8*, i8** %9, align 8
  %258 = call i32 @free(i8* %257)
  %259 = load i32, i32* %8, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %256, %20
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i64 @ucs2_to_utf8(i64*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64* @efi_devpath_name(i8*) #1

declare dso_local i32 @efi_free_devpath_name(i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @efi_print_other_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
