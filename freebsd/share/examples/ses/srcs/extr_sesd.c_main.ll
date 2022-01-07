; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_sesd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_sesd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.usage = internal global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [63 x i8] c"usage: %s [ -c ] [ -d ] [ -t pollinterval ] device [ device ]\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cdt:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@optind = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENCIOC_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: ENCIOC_INIT fails- %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sesd\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@ENCIOC_GETENCSTAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: ENCIOC_GETENCSTAT- %m\00", align 1
@ENCIOC_SETENCSTAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: ENCIOC_SETENCSTAT- %m\00", align 1
@ALLSTAT = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: Enclosure Status OK\00", align 1
@SES_ENCSTAT_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: Enclosure Has Information\00", align 1
@SES_ENCSTAT_NONCRITICAL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"%s: Enclosure Non-Critical\00", align 1
@SES_ENCSTAT_CRITICAL = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"%s: Enclosure Critical\00", align 1
@SES_ENCSTAT_UNRECOV = common dso_local global i32 0, align 4
@LOG_ALERT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"%s: Enclosure Unrecoverable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @main.usage, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %18, i8* %19, i8* %21)
  store i32 1, i32* %3, align 4
  br label %274

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 30, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %36 [
    i32 99, label %31
    i32 100, label %32
    i32 116, label %33
  ]

31:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %42

32:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** @main.usage, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %37, i8* %38, i8* %40)
  store i32 1, i32* %3, align 4
  br label %274

42:                                               ; preds = %33, %32, %31
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* %4, align 4
  %45 = call i32* @malloc(i32 %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %274

50:                                               ; preds = %43
  %51 = load i32, i32* @optind, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %61, %50
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %52

64:                                               ; preds = %52
  %65 = load i32, i32* @optind, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %105, %64
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @O_RDWR, align 4
  %77 = call i32 @open(i8* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @perror(i8* %85)
  store i32 1, i32* %3, align 4
  br label %274

87:                                               ; preds = %70
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ENCIOC_INIT, align 4
  %90 = call i64 @ioctl(i32 %88, i32 %89, i32* null)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @errno, align 4
  %100 = call i8* @strerror(i32 %99)
  %101 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %98, i8* %100)
  store i32 1, i32* %3, align 4
  br label %274

102:                                              ; preds = %87
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @close(i32 %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %66

108:                                              ; preds = %66
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = call i64 @daemon(i32 0, i32 0)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %274

116:                                              ; preds = %111
  %117 = load i32, i32* @LOG_CONS, align 4
  %118 = load i32, i32* @LOG_USER, align 4
  %119 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %118)
  br label %126

120:                                              ; preds = %108
  %121 = load i32, i32* @LOG_CONS, align 4
  %122 = load i32, i32* @LOG_PERROR, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @LOG_USER, align 4
  %125 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %116
  br label %127

127:                                              ; preds = %271, %126
  %128 = load i32, i32* @optind, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %268, %127
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %271

133:                                              ; preds = %129
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @O_RDWR, align 4
  %140 = call i32 @open(i8* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load i32, i32* @LOG_ERR, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @syslog(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  br label %268

151:                                              ; preds = %133
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @ENCIOC_GETENCSTAT, align 4
  %154 = call i64 @ioctl(i32 %152, i32 %153, i32* %12)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load i32, i32* @LOG_ERR, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @syslog(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @close(i32 %164)
  br label %268

166:                                              ; preds = %151
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  store i32 0, i32* %13, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @ENCIOC_SETENCSTAT, align 4
  %175 = call i64 @ioctl(i32 %173, i32 %174, i32* %13)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* @LOG_ERR, align 4
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @syslog(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %177, %172
  br label %186

186:                                              ; preds = %185, %169, %166
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @close(i32 %187)
  %189 = load i32, i32* %12, align 4
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %189, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %268

197:                                              ; preds = %186
  %198 = load i32, i32* %12, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @ALLSTAT, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %197
  %208 = load i32, i32* @LOG_NOTICE, align 4
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @syslog(i32 %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %213)
  br label %215

215:                                              ; preds = %207, %197
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load i32, i32* @LOG_NOTICE, align 4
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @syslog(i32 %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %226)
  br label %228

228:                                              ; preds = %220, %215
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = load i32, i32* @LOG_WARNING, align 4
  %235 = load i8**, i8*** %5, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @syslog(i32 %234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %233, %228
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load i32, i32* @LOG_CRIT, align 4
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @syslog(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %252)
  br label %254

254:                                              ; preds = %246, %241
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* @SES_ENCSTAT_UNRECOV, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load i32, i32* @LOG_ALERT, align 4
  %261 = load i8**, i8*** %5, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @syslog(i32 %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %259, %254
  br label %268

268:                                              ; preds = %267, %196, %156, %143
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %129

271:                                              ; preds = %129
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @sleep(i32 %272)
  br label %127

274:                                              ; preds = %114, %92, %80, %48, %36, %17
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
