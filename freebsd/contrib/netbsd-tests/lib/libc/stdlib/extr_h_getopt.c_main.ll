; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_h_getopt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_h_getopt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"load:\00", align 1
@WS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"missing optstring at line %ld\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"optstring = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"args:\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"missing args at line %ld\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"argv[%d] = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"result:\00", align 1
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"missing result at line %ld\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"result: without args:\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"result = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"`:' found as argument char\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"!%c,\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%c,\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%c=%s,\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"`%s' != `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [100 x i8*], align 16
  %14 = alloca [100 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %15, align 4
  br label %18

18:                                               ; preds = %249, %2
  %19 = load i32, i32* @stdin, align 4
  %20 = call i8* @fparseln(i32 %19, i64* %6, i64* %7, i32* null, i32 0)
  store i8* %20, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %252

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = load i32, i32* @WS, align 4
  %36 = call i8* @strtok(i8* %34, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i64, i64* @debug, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %249

52:                                               ; preds = %22
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %137

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %15, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %15, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i32, i32* @WS, align 4
  %80 = call i8* @strtok(i8* %78, i32 %79)
  store i32 0, i32* %15, align 4
  %81 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 0
  store i8* %80, i8** %81, align 16
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i64, i64* %7, align 8
  %89 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strdup(i8* %94)
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %97
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %107, %90
  %100 = load i32, i32* @WS, align 4
  %101 = call i8* @strtok(i8* null, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %104
  store i8* %101, i8** %105, align 8
  %106 = icmp ne i8* %101, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @strdup(i8* %111)
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %114
  store i8* %112, i8** %115, align 8
  br label %99

116:                                              ; preds = %99
  %117 = load i64, i64* @debug, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  store i32 0, i32* %17, align 4
  store i32 0, i32* %17, align 4
  br label %120

120:                                              ; preds = %132, %119
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* @stderr, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %126, i8* %130)
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %120

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %116
  br label %248

137:                                              ; preds = %52
  %138 = load i8*, i8** %8, align 8
  %139 = call i64 @strncmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %247

141:                                              ; preds = %137
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %142, align 16
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @free(i8* %146)
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 8
  %151 = load i32, i32* @WS, align 4
  %152 = call i8* @strtok(i8* %150, i32 %151)
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i64, i64* %7, align 8
  %157 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %156)
  br label %158

158:                                              ; preds = %155, %148
  %159 = load i8*, i8** %11, align 8
  %160 = call i8* @strdup(i8* %159)
  store i8* %160, i8** %11, align 8
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i64, i64* @debug, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %168, %165
  br label %173

173:                                              ; preds = %211, %189, %172
  %174 = load i32, i32* %15, align 4
  %175 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 0
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @getopt(i32 %174, i8** %175, i8* %176)
  store i32 %177, i32* %16, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %215

179:                                              ; preds = %173
  %180 = load i32, i32* %16, align 4
  %181 = icmp eq i32 %180, 58
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %179
  %185 = load i8*, i8** %10, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i8* @strchr(i8* %185, i32 %186)
  store i8* %187, i8** %9, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %191 = load i32, i32* %16, align 4
  %192 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %190, i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %194 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %195 = call i32 @strcat(i8* %193, i8* %194)
  br label %173

196:                                              ; preds = %184
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 58
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %204 = load i32, i32* %16, align 4
  %205 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %203, i32 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %204)
  br label %211

206:                                              ; preds = %196
  %207 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %208 = load i32, i32* %16, align 4
  %209 = load i8*, i8** @optarg, align 8
  %210 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %207, i32 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %208, i8* %209)
  br label %211

211:                                              ; preds = %206, %202
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %213 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %214 = call i32 @strcat(i8* %212, i8* %213)
  br label %173

215:                                              ; preds = %173
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %217 = call i64 @strlen(i8* %216)
  store i64 %217, i64* %6, align 8
  %218 = load i64, i64* %6, align 8
  %219 = icmp ugt i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i64, i64* %6, align 8
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %222
  store i8 124, i8* %223, align 1
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %224
  store i8 0, i8* %225, align 1
  br label %229

226:                                              ; preds = %215
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8 124, i8* %227, align 16
  %228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 1
  store i8 0, i8* %228, align 1
  br label %229

229:                                              ; preds = %226, %220
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @optind, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %230, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %233)
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %236 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %237 = call i32 @strcat(i8* %235, i8* %236)
  %238 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %239 = load i8*, i8** %11, align 8
  %240 = call i64 @strcmp(i8* %238, i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %229
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %244 = load i8*, i8** %11, align 8
  %245 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %243, i8* %244)
  br label %246

246:                                              ; preds = %242, %229
  br label %247

247:                                              ; preds = %246, %137
  br label %248

248:                                              ; preds = %247, %136
  br label %249

249:                                              ; preds = %248, %51
  %250 = load i8*, i8** %8, align 8
  %251 = call i32 @free(i8* %250)
  br label %18

252:                                              ; preds = %18
  ret i32 0
}

declare dso_local i8* @fparseln(i32, i64*, i64*, i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
