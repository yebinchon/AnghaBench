; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@action = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rescue\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"fno:p:q:R:S:s:t:u:v\00", align 1
@force = common dso_local global i32 0, align 4
@nagle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@optarg = common dso_local global i8* null, align 8
@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@G_GATE_FLAG_WRITEONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Invalid argument for '-o' option.\00", align 1
@errno = common dso_local global i32 0, align 4
@port = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"Invalid port.\00", align 1
@queue_size = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"Invalid queue_size.\00", align 1
@rcvbuf = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"Invalid rcvbuf.\00", align 1
@sndbuf = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"Invalid sndbuf.\00", align 1
@sectorsize = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"Invalid sectorsize.\00", align 1
@timeout = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"Invalid timeout.\00", align 1
@unit = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Invalid unit number.\00", align 1
@g_gate_verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@host = common dso_local global i8* null, align 8
@path = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"Required unit number.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @usage()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 132, i32* @action, align 4
  br label %44

18:                                               ; preds = %11
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 131, i32* @action, align 4
  br label %43

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 130, i32* @action, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 129, i32* @action, align 4
  br label %41

39:                                               ; preds = %32
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8** %48, i8*** %5, align 8
  br label %49

49:                                               ; preds = %237, %44
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = call i32 @getopt(i32 %50, i8** %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %238

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %235 [
    i32 102, label %58
    i32 110, label %64
    i32 111, label %73
    i32 112, label %104
    i32 113, label %124
    i32 82, label %141
    i32 83, label %161
    i32 115, label %181
    i32 116, label %198
    i32 117, label %215
    i32 118, label %227
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* @action, align 4
  %60 = icmp ne i32 %59, 131
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %58
  store i32 1, i32* @force, align 4
  br label %237

64:                                               ; preds = %56
  %65 = load i32, i32* @action, align 4
  %66 = icmp ne i32 %65, 132
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @action, align 4
  %69 = icmp ne i32 %68, 129
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67, %64
  store i32 0, i32* @nagle, align 4
  br label %237

73:                                               ; preds = %56
  %74 = load i32, i32* @action, align 4
  %75 = icmp ne i32 %74, 132
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @action, align 4
  %78 = icmp ne i32 %77, 129
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %76, %73
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @G_GATE_FLAG_READONLY, align 4
  store i32 %86, i32* @flags, align 4
  br label %103

87:                                               ; preds = %81
  %88 = load i8*, i8** @optarg, align 8
  %89 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @G_GATE_FLAG_WRITEONLY, align 4
  store i32 %92, i32* @flags, align 4
  br label %102

93:                                               ; preds = %87
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* @flags, align 4
  br label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = call i32 @errx(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %91
  br label %103

103:                                              ; preds = %102, %85
  br label %237

104:                                              ; preds = %56
  %105 = load i32, i32* @action, align 4
  %106 = icmp ne i32 %105, 132
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* @action, align 4
  %109 = icmp ne i32 %108, 129
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @usage()
  br label %112

112:                                              ; preds = %110, %107, %104
  store i32 0, i32* @errno, align 4
  %113 = load i8*, i8** @optarg, align 8
  %114 = call i8* @strtoul(i8* %113, i32* null, i32 10)
  store i8* %114, i8** @port, align 8
  %115 = load i8*, i8** @port, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @errno, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @EXIT_FAILURE, align 4
  %122 = call i32 @errx(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117, %112
  br label %237

124:                                              ; preds = %56
  %125 = load i32, i32* @action, align 4
  %126 = icmp ne i32 %125, 132
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (...) @usage()
  br label %129

129:                                              ; preds = %127, %124
  store i32 0, i32* @errno, align 4
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i8* @strtoul(i8* %130, i32* null, i32 10)
  store i8* %131, i8** @queue_size, align 8
  %132 = load i8*, i8** @queue_size, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @errno, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  %139 = call i32 @errx(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %134, %129
  br label %237

141:                                              ; preds = %56
  %142 = load i32, i32* @action, align 4
  %143 = icmp ne i32 %142, 132
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* @action, align 4
  %146 = icmp ne i32 %145, 129
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (...) @usage()
  br label %149

149:                                              ; preds = %147, %144, %141
  store i32 0, i32* @errno, align 4
  %150 = load i8*, i8** @optarg, align 8
  %151 = call i8* @strtoul(i8* %150, i32* null, i32 10)
  store i8* %151, i8** @rcvbuf, align 8
  %152 = load i8*, i8** @rcvbuf, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32, i32* @errno, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @EXIT_FAILURE, align 4
  %159 = call i32 @errx(i32 %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154, %149
  br label %237

161:                                              ; preds = %56
  %162 = load i32, i32* @action, align 4
  %163 = icmp ne i32 %162, 132
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* @action, align 4
  %166 = icmp ne i32 %165, 129
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (...) @usage()
  br label %169

169:                                              ; preds = %167, %164, %161
  store i32 0, i32* @errno, align 4
  %170 = load i8*, i8** @optarg, align 8
  %171 = call i8* @strtoul(i8* %170, i32* null, i32 10)
  store i8* %171, i8** @sndbuf, align 8
  %172 = load i8*, i8** @sndbuf, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i32, i32* @errno, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @EXIT_FAILURE, align 4
  %179 = call i32 @errx(i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174, %169
  br label %237

181:                                              ; preds = %56
  %182 = load i32, i32* @action, align 4
  %183 = icmp ne i32 %182, 132
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 (...) @usage()
  br label %186

186:                                              ; preds = %184, %181
  store i32 0, i32* @errno, align 4
  %187 = load i8*, i8** @optarg, align 8
  %188 = call i8* @strtoul(i8* %187, i32* null, i32 10)
  store i8* %188, i8** @sectorsize, align 8
  %189 = load i8*, i8** @sectorsize, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* @errno, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @EXIT_FAILURE, align 4
  %196 = call i32 @errx(i32 %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %191, %186
  br label %237

198:                                              ; preds = %56
  %199 = load i32, i32* @action, align 4
  %200 = icmp ne i32 %199, 132
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = call i32 (...) @usage()
  br label %203

203:                                              ; preds = %201, %198
  store i32 0, i32* @errno, align 4
  %204 = load i8*, i8** @optarg, align 8
  %205 = call i8* @strtoul(i8* %204, i32* null, i32 10)
  store i8* %205, i8** @timeout, align 8
  %206 = load i8*, i8** @timeout, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i32, i32* @errno, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* @EXIT_FAILURE, align 4
  %213 = call i32 @errx(i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %208, %203
  br label %237

215:                                              ; preds = %56
  store i32 0, i32* @errno, align 4
  %216 = load i8*, i8** @optarg, align 8
  %217 = call i32 @strtol(i8* %216, i32* null, i32 10)
  store i32 %217, i32* @unit, align 4
  %218 = load i32, i32* @unit, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* @errno, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @EXIT_FAILURE, align 4
  %225 = call i32 @errx(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %220, %215
  br label %237

227:                                              ; preds = %56
  %228 = load i32, i32* @action, align 4
  %229 = icmp eq i32 %228, 131
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call i32 (...) @usage()
  br label %232

232:                                              ; preds = %230, %227
  %233 = load i32, i32* @g_gate_verbose, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @g_gate_verbose, align 4
  br label %237

235:                                              ; preds = %56
  %236 = call i32 (...) @usage()
  br label %237

237:                                              ; preds = %235, %232, %226, %214, %197, %180, %160, %140, %123, %103, %72, %63
  br label %49

238:                                              ; preds = %55
  %239 = load i64, i64* @optind, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = sub nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %4, align 4
  %244 = load i64, i64* @optind, align 8
  %245 = load i8**, i8*** %5, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  store i8** %246, i8*** %5, align 8
  %247 = load i32, i32* @action, align 4
  switch i32 %247, label %301 [
    i32 132, label %248
    i32 131, label %263
    i32 130, label %275
    i32 129, label %279
    i32 128, label %300
  ]

248:                                              ; preds = %238
  %249 = load i32, i32* %4, align 4
  %250 = icmp ne i32 %249, 2
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = call i32 (...) @usage()
  br label %253

253:                                              ; preds = %251, %248
  %254 = call i32 (...) @g_gate_load_module()
  %255 = call i32 (...) @g_gate_open_device()
  %256 = load i8**, i8*** %5, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 0
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** @host, align 8
  %259 = load i8**, i8*** %5, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 1
  %261 = load i8*, i8** %260, align 8
  store i8* %261, i8** @path, align 8
  %262 = call i32 (...) @g_gatec_create()
  br label %303

263:                                              ; preds = %238
  %264 = load i32, i32* @unit, align 4
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32, i32* @stderr, align 4
  %268 = call i32 @fprintf(i32 %267, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %269 = call i32 (...) @usage()
  br label %270

270:                                              ; preds = %266, %263
  store i32 1, i32* @g_gate_verbose, align 4
  %271 = call i32 (...) @g_gate_open_device()
  %272 = load i32, i32* @unit, align 4
  %273 = load i32, i32* @force, align 4
  %274 = call i32 @g_gate_destroy(i32 %272, i32 %273)
  br label %303

275:                                              ; preds = %238
  %276 = load i32, i32* @unit, align 4
  %277 = load i32, i32* @g_gate_verbose, align 4
  %278 = call i32 @g_gate_list(i32 %276, i32 %277)
  br label %303

279:                                              ; preds = %238
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 2
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = call i32 (...) @usage()
  br label %284

284:                                              ; preds = %282, %279
  %285 = load i32, i32* @unit, align 4
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 @fprintf(i32 %288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %290 = call i32 (...) @usage()
  br label %291

291:                                              ; preds = %287, %284
  %292 = call i32 (...) @g_gate_open_device()
  %293 = load i8**, i8*** %5, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 0
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** @host, align 8
  %296 = load i8**, i8*** %5, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 1
  %298 = load i8*, i8** %297, align 8
  store i8* %298, i8** @path, align 8
  %299 = call i32 (...) @g_gatec_rescue()
  br label %303

300:                                              ; preds = %238
  br label %301

301:                                              ; preds = %238, %300
  %302 = call i32 (...) @usage()
  br label %303

303:                                              ; preds = %301, %291, %275, %270, %253
  %304 = call i32 (...) @g_gate_close_device()
  %305 = load i32, i32* @EXIT_SUCCESS, align 4
  %306 = call i32 @exit(i32 %305) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @g_gate_load_module(...) #1

declare dso_local i32 @g_gate_open_device(...) #1

declare dso_local i32 @g_gatec_create(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @g_gate_destroy(i32, i32) #1

declare dso_local i32 @g_gate_list(i32, i32) #1

declare dso_local i32 @g_gatec_rescue(...) #1

declare dso_local i32 @g_gate_close_device(...) #1

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
