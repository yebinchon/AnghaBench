; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_filter.c_ex_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_filter.c_ex_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_28__ = type { i64 }

@O_SHELL = common dso_local global i32 0, align 4
@FILTER_READ = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"execl: %s\00", align 1
@FILTER_RBANG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@L_ADDED = common dso_local global i64 0, align 8
@F_MULTILOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@FILTER_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"parent-writer\00", align 1
@FILTER_BANG = common dso_local global i32 0, align 4
@CUT_LINEMODE = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_filter(%struct.TYPE_27__* %0, i32* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, %struct.TYPE_28__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [2 x i32], align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %23, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %29 = bitcast %struct.TYPE_28__* %27 to i8*
  %30 = bitcast %struct.TYPE_28__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  store i64 1, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %7
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %40 = load i32, i32* @O_SHELL, align 4
  %41 = call i64 @opts_empty(%struct.TYPE_27__* %39, i32 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %413

44:                                               ; preds = %38
  store i32* null, i32** %17, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 -1, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32 -1, i32* %46, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 -1, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @FILTER_READ, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %54 = call i64 @pipe(i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %58 = load i32, i32* @M_SYSERR, align 4
  %59 = call i32 @msgq(%struct.TYPE_27__* %57, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %83

60:                                               ; preds = %52, %44
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %62 = call i64 @pipe(i32* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = load i32, i32* @M_SYSERR, align 4
  %67 = call i32 @msgq(%struct.TYPE_27__* %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %83

68:                                               ; preds = %60
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @fdopen(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %71, i32** %17, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = load i32, i32* @M_SYSERR, align 4
  %76 = call i32 @msgq(%struct.TYPE_27__* %74, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %83

77:                                               ; preds = %68
  %78 = call i64 (...) @vfork()
  store i64 %78, i64* %19, align 8
  switch i64 %78, label %197 [
    i64 -1, label %79
    i64 0, label %123
  ]

79:                                               ; preds = %77
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %81 = load i32, i32* @M_SYSERR, align 4
  %82 = call i32 @msgq(%struct.TYPE_27__* %80, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %73, %64, %56
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @close(i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32*, i32** %17, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %17, align 8
  %104 = call i32 @fclose(i32* %103)
  br label %114

105:                                              ; preds = %99
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %102
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @close(i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  store i32 1, i32* %8, align 4
  br label %413

123:                                              ; preds = %77
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @STDIN_FILENO, align 4
  %131 = call i32 @dup2(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @STDOUT_FILENO, align 4
  %136 = call i32 @dup2(i32 %134, i32 %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @STDERR_FILENO, align 4
  %140 = call i32 @dup2(i32 %138, i32 %139)
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @close(i32 %146)
  br label %148

148:                                              ; preds = %144, %132
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, -1
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @close(i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @close(i32 %158)
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @close(i32 %161)
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %164 = load i32, i32* @O_SHELL, align 4
  %165 = call i8* @O_STR(%struct.TYPE_27__* %163, i32 %164)
  %166 = call i8* @strrchr(i8* %165, i8 signext 47)
  store i8* %166, i8** %24, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %170 = load i32, i32* @O_SHELL, align 4
  %171 = call i8* @O_STR(%struct.TYPE_27__* %169, i32 %170)
  store i8* %171, i8** %24, align 8
  br label %175

172:                                              ; preds = %156
  %173 = load i8*, i8** %24, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %24, align 8
  br label %175

175:                                              ; preds = %172, %168
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = call i64 @STRLEN(i32* %178)
  %180 = add nsw i64 %179, 1
  %181 = load i8*, i8** %25, align 8
  %182 = load i64, i64* %26, align 8
  %183 = call i32 @INT2CHAR(%struct.TYPE_27__* %176, i32* %177, i64 %180, i8* %181, i64 %182)
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %185 = load i32, i32* @O_SHELL, align 4
  %186 = call i8* @O_STR(%struct.TYPE_27__* %184, i32 %185)
  %187 = load i8*, i8** %24, align 8
  %188 = load i8*, i8** %25, align 8
  %189 = call i32 @execl(i8* %186, i8* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %188, i8* null)
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = load i32, i32* @M_SYSERR, align 4
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %193 = load i32, i32* @O_SHELL, align 4
  %194 = call i8* @O_STR(%struct.TYPE_27__* %192, i32 %193)
  %195 = call i32 @msgq_str(%struct.TYPE_27__* %190, i32 %191, i8* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %196 = call i32 @_exit(i32 127) #4
  unreachable

197:                                              ; preds = %77
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @close(i32 %203)
  br label %205

205:                                              ; preds = %201, %197
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @close(i32 %207)
  br label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @FILTER_RBANG, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* @FILTER_READ, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %263

217:                                              ; preds = %213, %209
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @FILTER_RBANG, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @close(i32 %223)
  br label %225

225:                                              ; preds = %221, %217
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %227 = load i32*, i32** %17, align 8
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %229 = call i64 @ex_readfp(%struct.TYPE_27__* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %227, %struct.TYPE_28__* %228, i64* %20, i32 1)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 1, i32* %23, align 4
  br label %232

232:                                              ; preds = %231, %225
  %233 = load i64, i64* %20, align 8
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @L_ADDED, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %233
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* @FILTER_READ, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %232
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i64, i64* %20, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  br label %261

255:                                              ; preds = %246
  %256 = load i64, i64* %20, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, %256
  store i64 %260, i64* %258, align 8
  br label %261

261:                                              ; preds = %255, %251
  br label %262

262:                                              ; preds = %261, %232
  br label %381

263:                                              ; preds = %213
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @F_MULTILOCK, align 4
  %268 = call i32 @F_SET(i32 %266, i32 %267)
  %269 = call i64 (...) @fork()
  store i64 %269, i64* %18, align 8
  switch i64 %269, label %297 [
    i64 -1, label %270
    i64 0, label %280
  ]

270:                                              ; preds = %263
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %272 = load i32, i32* @M_SYSERR, align 4
  %273 = call i32 @msgq(%struct.TYPE_27__* %271, i32 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @close(i32 %275)
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @close(i32 %278)
  store i32 1, i32* %23, align 4
  br label %375

280:                                              ; preds = %263
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @close(i32 %282)
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32* @fdopen(i32 %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %286, i32** %16, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = call i32 @_exit(i32 1) #4
  unreachable

290:                                              ; preds = %280
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %292 = load i32*, i32** %16, align 8
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %295 = call i32 @ex_writefp(%struct.TYPE_27__* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %292, %struct.TYPE_28__* %293, %struct.TYPE_28__* %294, i32* null, i32* null, i32 1)
  %296 = call i32 @_exit(i32 %295) #4
  unreachable

297:                                              ; preds = %263
  %298 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @close(i32 %299)
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* @FILTER_WRITE, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %297
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %306 = load i32*, i32** %17, align 8
  %307 = call i32 @filter_ldisplay(%struct.TYPE_27__* %305, i32* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i32 1, i32* %23, align 4
  br label %310

310:                                              ; preds = %309, %304
  br label %329

311:                                              ; preds = %297
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %313 = load i32*, i32** %17, align 8
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %315 = call i64 @ex_readfp(%struct.TYPE_27__* %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %313, %struct.TYPE_28__* %314, i64* %20, i32 1)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %311
  store i32 1, i32* %23, align 4
  br label %318

318:                                              ; preds = %317, %311
  %319 = load i64, i64* %20, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load i64, i64* @L_ADDED, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = add nsw i64 %326, %319
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %324, align 4
  br label %329

329:                                              ; preds = %318, %310
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %331 = load i64, i64* %18, align 8
  %332 = call i64 @proc_wait(%struct.TYPE_27__* %330, i64 %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 1)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  store i32 1, i32* %23, align 4
  br label %335

335:                                              ; preds = %334, %329
  %336 = load i32, i32* %23, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %356

338:                                              ; preds = %335
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* @FILTER_BANG, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %356

342:                                              ; preds = %338
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %346 = load i32, i32* @CUT_LINEMODE, align 4
  %347 = call i32 @cut(%struct.TYPE_27__* %343, i32* null, %struct.TYPE_28__* %344, %struct.TYPE_28__* %345, i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %342
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %353 = call i32 @del(%struct.TYPE_27__* %350, %struct.TYPE_28__* %351, %struct.TYPE_28__* %352, i32 1)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %349, %342
  store i32 1, i32* %23, align 4
  br label %375

356:                                              ; preds = %349, %338, %335
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp sgt i64 %359, 1
  br i1 %360, label %361, label %374

361:                                              ; preds = %356
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = call i32 @db_exist(%struct.TYPE_27__* %362, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %361
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = add nsw i64 %372, -1
  store i64 %373, i64* %371, align 8
  br label %374

374:                                              ; preds = %369, %361, %356
  br label %375

375:                                              ; preds = %374, %355, %270
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @F_MULTILOCK, align 4
  %380 = call i32 @F_CLR(i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %375, %262
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %383 = load i32*, i32** %14, align 8
  %384 = load i32*, i32** %14, align 8
  %385 = call i64 @STRLEN(i32* %384)
  %386 = add nsw i64 %385, 1
  %387 = load i8*, i8** %25, align 8
  %388 = load i64, i64* %26, align 8
  %389 = call i32 @INT2CHAR(%struct.TYPE_27__* %382, i32* %383, i64 %386, i8* %387, i64 %388)
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %391 = load i64, i64* %19, align 8
  %392 = load i8*, i8** %25, align 8
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* @FILTER_READ, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %401

396:                                              ; preds = %381
  %397 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %398 = load i32, i32* @SC_VI, align 4
  %399 = call i64 @F_ISSET(%struct.TYPE_27__* %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br label %401

401:                                              ; preds = %396, %381
  %402 = phi i1 [ false, %381 ], [ %400, %396 ]
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 1, i32 0
  %405 = call i64 @proc_wait(%struct.TYPE_27__* %390, i64 %391, i8* %392, i32 %404, i32 0)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %401
  %408 = load i32, i32* %23, align 4
  %409 = icmp ne i32 %408, 0
  br label %410

410:                                              ; preds = %407, %401
  %411 = phi i1 [ true, %401 ], [ %409, %407 ]
  %412 = zext i1 %411 to i32
  store i32 %412, i32* %8, align 4
  br label %413

413:                                              ; preds = %410, %122, %43
  %414 = load i32, i32* %8, align 4
  ret i32 %414
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @opts_empty(%struct.TYPE_27__*, i32, i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @msgq(%struct.TYPE_27__*, i32, i8*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i64 @vfork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @O_STR(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @INT2CHAR(%struct.TYPE_27__*, i32*, i64, i8*, i64) #2

declare dso_local i64 @STRLEN(i32*) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @msgq_str(%struct.TYPE_27__*, i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i64 @ex_readfp(%struct.TYPE_27__*, i8*, i32*, %struct.TYPE_28__*, i64*, i32) #2

declare dso_local i32 @F_SET(i32, i32) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @ex_writefp(%struct.TYPE_27__*, i8*, i32*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*, i32*, i32) #2

declare dso_local i32 @filter_ldisplay(%struct.TYPE_27__*, i32*) #2

declare dso_local i64 @proc_wait(%struct.TYPE_27__*, i64, i8*, i32, i32) #2

declare dso_local i32 @cut(%struct.TYPE_27__*, i32*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @del(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @db_exist(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @F_CLR(i32, i32) #2

declare dso_local i64 @F_ISSET(%struct.TYPE_27__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
