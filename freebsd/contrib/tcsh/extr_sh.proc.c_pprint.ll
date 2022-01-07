; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i64, i64, i32, i32, i32, %struct.process*, %struct.TYPE_6__*, i32****, i32****, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PPTIME = common dso_local global i32 0, align 4
@PTIME = common dso_local global i32 0, align 4
@haderr = common dso_local global i32 0, align 4
@JOBLIST = common dso_local global i32 0, align 4
@PALLSTATES = common dso_local global i32 0, align 4
@linp = common dso_local global i64 0, align 8
@linbuf = common dso_local global i64 0, align 8
@FANCY = common dso_local global i32 0, align 4
@REASON = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%d]%s %c \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pcurrent = common dso_local global %struct.process* null, align 8
@pprevious = common dso_local global %struct.process* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@AREASON = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%-30s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Running \00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@PPOU = common dso_local global i32 0, align 4
@mesg = common dso_local global %struct.TYPE_8__* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"Exit %-25d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"BUG: status=%-9o\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@PDIAG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@PDUMPED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@AMPERSAND = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@JOBDIR = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.TYPE_9__* null, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c" (wd: \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@lru = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@zru = common dso_local global i32 0, align 4
@SHELLDIR = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"(wd now: \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, i32)* @pprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pprint(%struct.process* %0, i32 %1) #0 {
  %3 = alloca %struct.process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.process*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %15

15:                                               ; preds = %23, %2
  %16 = load %struct.process*, %struct.process** %3, align 8
  %17 = getelementptr inbounds %struct.process, %struct.process* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.process*, %struct.process** %3, align 8
  %20 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.process*, %struct.process** %3, align 8
  %25 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 5
  %26 = load %struct.process*, %struct.process** %25, align 8
  store %struct.process* %26, %struct.process** %3, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.process*, %struct.process** %3, align 8
  %29 = load %struct.process*, %struct.process** %3, align 8
  %30 = getelementptr inbounds %struct.process, %struct.process* %29, i32 0, i32 5
  %31 = load %struct.process*, %struct.process** %30, align 8
  %32 = icmp eq %struct.process* %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.process*, %struct.process** %3, align 8
  %35 = getelementptr inbounds %struct.process, %struct.process* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PPTIME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* @PPTIME, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.process*, %struct.process** %3, align 8
  %44 = getelementptr inbounds %struct.process, %struct.process* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @PTIME, align 4
  %48 = load %struct.process*, %struct.process** %3, align 8
  %49 = getelementptr inbounds %struct.process, %struct.process* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %40, %33, %27
  %53 = load %struct.process*, %struct.process** %3, align 8
  store %struct.process* %53, %struct.process** %7, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %54 = load i32, i32* @haderr, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @JOBLIST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @haderr, align 4
  br label %61

61:                                               ; preds = %463, %52
  %62 = load %struct.process*, %struct.process** %7, align 8
  %63 = load %struct.process*, %struct.process** %3, align 8
  %64 = icmp ne %struct.process* %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load %struct.process*, %struct.process** %3, align 8
  %67 = getelementptr inbounds %struct.process, %struct.process* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.process*, %struct.process** %3, align 8
  %72 = getelementptr inbounds %struct.process, %struct.process* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PALLSTATES, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %61
  %79 = load i64, i64* @linp, align 8
  %80 = load i64, i64* @linbuf, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FANCY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.process*, %struct.process** %3, align 8
  %93 = getelementptr inbounds %struct.process, %struct.process* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %91, %87
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @REASON, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97, %91
  %103 = call i32 @xputchar(i8 signext 32)
  br label %297

104:                                              ; preds = %97, %82, %78, %61
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i64, i64* @linp, align 8
  %109 = load i64, i64* @linbuf, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @xputchar(i8 signext 10)
  br label %113

113:                                              ; preds = %111, %107, %104
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @NUMBER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %113
  %119 = load %struct.process*, %struct.process** %3, align 8
  %120 = load %struct.process*, %struct.process** %7, align 8
  %121 = icmp eq %struct.process* %119, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %118
  %126 = load %struct.process*, %struct.process** %3, align 8
  %127 = getelementptr inbounds %struct.process, %struct.process* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.process*, %struct.process** %3, align 8
  %130 = getelementptr inbounds %struct.process, %struct.process* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 10
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.process*, %struct.process** %3, align 8
  %136 = load %struct.process*, %struct.process** @pcurrent, align 8
  %137 = icmp eq %struct.process* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %145

139:                                              ; preds = %125
  %140 = load %struct.process*, %struct.process** %3, align 8
  %141 = load %struct.process*, %struct.process** @pprevious, align 8
  %142 = icmp eq %struct.process* %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 45, i32 32
  br label %145

145:                                              ; preds = %139, %138
  %146 = phi i32 [ 43, %138 ], [ %144, %139 ]
  %147 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %128, i8* %134, i32 %146)
  br label %150

148:                                              ; preds = %118
  %149 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %145
  br label %151

151:                                              ; preds = %150, %113
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @FANCY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.process*, %struct.process** %3, align 8
  %158 = getelementptr inbounds %struct.process, %struct.process* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @REASON, align 4
  %164 = load i32, i32* @AREASON, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %296

168:                                              ; preds = %161
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @NAME, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %175

174:                                              ; preds = %168
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %175

175:                                              ; preds = %174, %173
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load %struct.process*, %struct.process** %3, align 8
  %181 = getelementptr inbounds %struct.process, %struct.process* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 (i8*, ...) @xprintf(i8* %186, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %298

188:                                              ; preds = %179
  %189 = load %struct.process*, %struct.process** %3, align 8
  %190 = getelementptr inbounds %struct.process, %struct.process* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %188
  br label %198

193:                                              ; preds = %175
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %5, align 4
  %195 = load %struct.process*, %struct.process** %3, align 8
  %196 = getelementptr inbounds %struct.process, %struct.process* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %193, %192
  %199 = load i32, i32* %5, align 4
  switch i32 %199, label %289 [
    i32 130, label %200
    i32 132, label %204
    i32 128, label %204
    i32 129, label %204
    i32 131, label %265
    i32 133, label %265
  ]

200:                                              ; preds = %198
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @CGETS(i32 17, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %203 = call i32 (i8*, ...) @xprintf(i8* %201, i32 %202)
  br label %295

204:                                              ; preds = %198, %198, %198
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @REASON, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @AREASON, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %263

214:                                              ; preds = %209
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @SIGINT, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %263

218:                                              ; preds = %214
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @SIGPIPE, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %229, label %222

222:                                              ; preds = %218
  %223 = load %struct.process*, %struct.process** %3, align 8
  %224 = getelementptr inbounds %struct.process, %struct.process* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @PPOU, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %263

229:                                              ; preds = %222, %218, %204
  store i32 0, i32* %14, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mesg, align 8
  %231 = load %struct.process*, %struct.process** %3, align 8
  %232 = getelementptr inbounds %struct.process, %struct.process* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 127
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  store i8* %240, i8** %13, align 8
  %241 = load i8*, i8** %13, align 8
  %242 = icmp eq i8* %241, null
  br i1 %242, label %243, label %253

243:                                              ; preds = %229
  %244 = call i32 @CGETS(i32 17, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %245 = load %struct.process*, %struct.process** %3, align 8
  %246 = getelementptr inbounds %struct.process, %struct.process* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 127
  %249 = call i8* @xasprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %244, i32 %248)
  store i8* %249, i8** %13, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = load i32, i32* @xfree, align 4
  %252 = call i32 @cleanup_push(i8* %250, i32 %251)
  store i32 1, i32* %14, align 4
  br label %253

253:                                              ; preds = %243, %229
  %254 = load i8*, i8** %11, align 8
  %255 = load i8*, i8** %13, align 8
  %256 = call i32 (i8*, ...) @xprintf(i8* %254, i8* %255)
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i8*, i8** %13, align 8
  %261 = call i32 @cleanup_until(i8* %260)
  br label %262

262:                                              ; preds = %259, %253
  br label %264

263:                                              ; preds = %222, %214, %209
  store i32 -1, i32* %6, align 4
  br label %264

264:                                              ; preds = %263, %262
  br label %295

265:                                              ; preds = %198, %198
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @REASON, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %288

270:                                              ; preds = %265
  %271 = load %struct.process*, %struct.process** %3, align 8
  %272 = getelementptr inbounds %struct.process, %struct.process* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = call i32 @CGETS(i32 17, i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.process*, %struct.process** %3, align 8
  %280 = getelementptr inbounds %struct.process, %struct.process* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i8*, ...) @xprintf(i8* %278, i32 %281)
  br label %287

283:                                              ; preds = %270
  %284 = load i8*, i8** %11, align 8
  %285 = call i32 @CGETS(i32 17, i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %286 = call i32 (i8*, ...) @xprintf(i8* %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %275
  br label %288

288:                                              ; preds = %287, %265
  br label %295

289:                                              ; preds = %198
  %290 = call i32 @CGETS(i32 17, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %291 = sext i32 %290 to i64
  %292 = inttoptr i64 %291 to i8*
  %293 = load i32, i32* %5, align 4
  %294 = call i32 (i8*, ...) @xprintf(i8* %292, i32 %293)
  br label %295

295:                                              ; preds = %289, %288, %264, %200
  br label %296

296:                                              ; preds = %295, %161
  br label %297

297:                                              ; preds = %296, %102
  br label %298

298:                                              ; preds = %297, %185
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @NAME, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %298
  %304 = load %struct.process*, %struct.process** %3, align 8
  %305 = getelementptr inbounds %struct.process, %struct.process* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 8
  %307 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %306)
  %308 = load %struct.process*, %struct.process** %3, align 8
  %309 = getelementptr inbounds %struct.process, %struct.process* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @PPOU, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %303
  %317 = load %struct.process*, %struct.process** %3, align 8
  %318 = getelementptr inbounds %struct.process, %struct.process* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @PDIAG, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %316
  br label %326

326:                                              ; preds = %325, %298
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* @REASON, align 4
  %329 = load i32, i32* @AREASON, align 4
  %330 = or i32 %328, %329
  %331 = and i32 %327, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %326
  %334 = load %struct.process*, %struct.process** %3, align 8
  %335 = getelementptr inbounds %struct.process, %struct.process* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @PDUMPED, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = call i32 @CGETS(i32 17, i32 9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %342 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %340, %333, %326
  %344 = load %struct.process*, %struct.process** %7, align 8
  %345 = load %struct.process*, %struct.process** %3, align 8
  %346 = getelementptr inbounds %struct.process, %struct.process* %345, i32 0, i32 5
  %347 = load %struct.process*, %struct.process** %346, align 8
  %348 = icmp eq %struct.process* %344, %347
  br i1 %348, label %349, label %383

349:                                              ; preds = %343
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* @AMPERSAND, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %349
  %357 = load i32, i32* %4, align 4
  %358 = load i32, i32* @JOBDIR, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %356
  %362 = load %struct.process*, %struct.process** %7, align 8
  %363 = getelementptr inbounds %struct.process, %struct.process* %362, i32 0, i32 6
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dcwd, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @eq(i32 %366, i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %382, label %372

372:                                              ; preds = %361
  %373 = call i32 @CGETS(i32 17, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %374 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %373)
  %375 = load %struct.process*, %struct.process** %7, align 8
  %376 = getelementptr inbounds %struct.process, %struct.process* %375, i32 0, i32 6
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @dtildepr(i32 %379)
  %381 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %382

382:                                              ; preds = %372, %361, %356
  br label %383

383:                                              ; preds = %382, %343
  %384 = load %struct.process*, %struct.process** %3, align 8
  %385 = getelementptr inbounds %struct.process, %struct.process* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @PPTIME, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %416

390:                                              ; preds = %383
  %391 = load i32, i32* %5, align 4
  %392 = and i32 %391, 130
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %416, label %394

394:                                              ; preds = %390
  %395 = load i64, i64* @linp, align 8
  %396 = load i64, i64* @linbuf, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %400

400:                                              ; preds = %398, %394
  %401 = load %struct.process*, %struct.process** %3, align 8
  %402 = getelementptr inbounds %struct.process, %struct.process* %401, i32 0, i32 10
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lru, i32 0, i32 3), align 4
  %404 = load %struct.process*, %struct.process** %3, align 8
  %405 = getelementptr inbounds %struct.process, %struct.process* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 8
  store i32 %406, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lru, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lru, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lru, i32 0, i32 0), align 8
  %407 = load %struct.process*, %struct.process** %3, align 8
  %408 = getelementptr inbounds %struct.process, %struct.process* %407, i32 0, i32 8
  %409 = load i32****, i32***** %408, align 8
  %410 = bitcast i32**** %409 to i32***
  %411 = load %struct.process*, %struct.process** %3, align 8
  %412 = getelementptr inbounds %struct.process, %struct.process* %411, i32 0, i32 7
  %413 = load i32****, i32***** %412, align 8
  %414 = bitcast i32**** %413 to i32***
  %415 = call i32 @prusage(i32* @zru, %struct.TYPE_7__* @lru, i32*** %410, i32*** %414)
  br label %416

416:                                              ; preds = %400, %390, %383
  %417 = load %struct.process*, %struct.process** %7, align 8
  %418 = load %struct.process*, %struct.process** %3, align 8
  %419 = getelementptr inbounds %struct.process, %struct.process* %418, i32 0, i32 5
  %420 = load %struct.process*, %struct.process** %419, align 8
  %421 = icmp eq %struct.process* %417, %420
  %422 = zext i1 %421 to i32
  store i32 %422, i32* %10, align 4
  %423 = load i32, i32* %10, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %456

425:                                              ; preds = %416
  %426 = load i64, i64* @linp, align 8
  %427 = load i64, i64* @linbuf, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = call i32 @xputchar(i8 signext 10)
  br label %431

431:                                              ; preds = %429, %425
  %432 = load i32, i32* %4, align 4
  %433 = load i32, i32* @SHELLDIR, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %455

436:                                              ; preds = %431
  %437 = load %struct.process*, %struct.process** %7, align 8
  %438 = getelementptr inbounds %struct.process, %struct.process* %437, i32 0, i32 6
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dcwd, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @eq(i32 %441, i32 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %455, label %447

447:                                              ; preds = %436
  %448 = call i32 @CGETS(i32 17, i32 11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %449 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %448)
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dcwd, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @dtildepr(i32 %452)
  %454 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %455

455:                                              ; preds = %447, %436, %431
  br label %456

456:                                              ; preds = %455, %416
  %457 = load %struct.process*, %struct.process** %3, align 8
  %458 = getelementptr inbounds %struct.process, %struct.process* %457, i32 0, i32 5
  %459 = load %struct.process*, %struct.process** %458, align 8
  store %struct.process* %459, %struct.process** %3, align 8
  %460 = load %struct.process*, %struct.process** %7, align 8
  %461 = icmp ne %struct.process* %459, %460
  %462 = zext i1 %461 to i32
  store i32 %462, i32* %10, align 4
  br label %463

463:                                              ; preds = %456
  %464 = load i32, i32* %10, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %61, label %466

466:                                              ; preds = %463
  %467 = load i32, i32* %8, align 4
  %468 = load i32, i32* @PTIME, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %485

471:                                              ; preds = %466
  %472 = load i32, i32* %8, align 4
  %473 = and i32 %472, 130
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %485

475:                                              ; preds = %471
  %476 = load i32, i32* %8, align 4
  %477 = load i32, i32* @NUMBER, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %482

482:                                              ; preds = %480, %475
  %483 = load %struct.process*, %struct.process** %7, align 8
  %484 = call i32 @ptprint(%struct.process* %483)
  br label %485

485:                                              ; preds = %482, %471, %466
  %486 = load i32, i32* %12, align 4
  store i32 %486, i32* @haderr, align 4
  %487 = load i32, i32* %8, align 4
  ret i32 %487
}

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i8* @xasprintf(i8*, i32, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @eq(i32, i32) #1

declare dso_local i32 @dtildepr(i32) #1

declare dso_local i32 @prusage(i32*, %struct.TYPE_7__*, i32***, i32***) #1

declare dso_local i32 @ptprint(%struct.process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
