; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intrupt = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@PF = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@tmode = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@ttyn = common dso_local global i32 0, align 4
@upper = common dso_local global i32 0, align 4
@lower = common dso_local global i32 0, align 4
@digit = common dso_local global i32 0, align 4
@crmod = common dso_local global i32 0, align 4
@name = common dso_local global i8* null, align 8
@PP = common dso_local global i64 0, align 8
@PPP_FRAME = common dso_local global i8 0, align 1
@PPP_STATION = common dso_local global i8 0, align 1
@PPP_ESCAPE = common dso_local global i8 0, align 1
@PPP_CONTROL = common dso_local global i8 0, align 1
@PPP_CONTROL_ESCAPED = common dso_local global i8 0, align 1
@PPP_LCP_HI = common dso_local global i8 0, align 1
@PPP_LCP_LOW = common dso_local global i8 0, align 1
@EOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ERASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@KILL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"                                     \0D\00", align 1
@IG = common dso_local global i64 0, align 8
@LC = common dso_local global i32 0, align 4
@UC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @intrupt, align 4
  %8 = call i64 @setjmp(i32 %7) #4
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @SIGINT, align 4
  %12 = load i32, i32* @SIG_IGN, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  store i32 0, i32* %1, align 4
  br label %280

14:                                               ; preds = %0
  %15 = load i32, i32* @SIGINT, align 4
  %16 = load i32, i32* @interrupt, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = call i32 @set_flags(i32 1)
  %19 = call i32 (...) @prompt()
  %20 = call i32 (...) @oflush()
  %21 = load i64, i64* @PF, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i64, i64* @PF, align 8
  %25 = call i32 @sleep(i64 %24)
  store i64 0, i64* @PF, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32, i32* @STDIN_FILENO, align 4
  %28 = load i32, i32* @TCSANOW, align 4
  %29 = call i64 @tcsetattr(i32 %27, i32 %28, i32* @tmode)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load i32, i32* @ttyn, align 4
  %34 = call i32 @syslog(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @exit(i32 1) #5
  unreachable

36:                                               ; preds = %26
  store i32 0, i32* @upper, align 4
  store i32 0, i32* @lower, align 4
  store i32 0, i32* @digit, align 4
  store i32 0, i32* @crmod, align 4
  %37 = load i8*, i8** @name, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %229, %228, %207, %185, %36
  %39 = call i32 (...) @oflush()
  %40 = load i32, i32* @STDIN_FILENO, align 4
  %41 = call i64 @read(i32 %40, i8* %4, i32 1)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @exit(i32 0) #5
  unreachable

45:                                               ; preds = %38
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 127
  store i32 %48, i32* %2, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %280

51:                                               ; preds = %45
  %52 = load i64, i64* @PP, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @PPP_FRAME, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %126

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @PPP_STATION, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 2, i32* %5, align 4
  br label %125

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @PPP_ESCAPE, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 3, i32* %5, align 4
  br label %124

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8, i8* %4, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @PPP_CONTROL, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8, i8* %4, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @PPP_CONTROL_ESCAPED, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %84
  store i32 4, i32* %5, align 4
  br label %123

100:                                              ; preds = %93, %90
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i8, i8* %4, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @PPP_LCP_HI, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 5, i32* %5, align 4
  br label %122

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i8, i8* %4, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @PPP_LCP_LOW, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 1, i32* %6, align 4
  br label %236

120:                                              ; preds = %113, %110
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %109
  br label %123

123:                                              ; preds = %122, %99
  br label %124

124:                                              ; preds = %123, %80
  br label %125

125:                                              ; preds = %124, %70
  br label %126

126:                                              ; preds = %125, %60
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @EOT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @CTRL(i8 zeroext 100)
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130, %126
  %135 = call i32 @exit(i32 0) #5
  unreachable

136:                                              ; preds = %130
  %137 = load i32, i32* %2, align 4
  %138 = icmp eq i32 %137, 13
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %2, align 4
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %3, align 8
  %144 = load i8*, i8** @name, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 7
  %146 = icmp uge i8* %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142, %139, %136
  %148 = call i32 @putf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %236

149:                                              ; preds = %142
  %150 = load i32, i32* %2, align 4
  %151 = call i64 @islower(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* @lower, align 4
  br label %219

154:                                              ; preds = %149
  %155 = load i32, i32* %2, align 4
  %156 = trunc i32 %155 to i8
  %157 = call i64 @isupper(i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 1, i32* @upper, align 4
  br label %218

160:                                              ; preds = %154
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* @ERASE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %2, align 4
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %2, align 4
  %169 = icmp eq i32 %168, 127
  br i1 %169, label %170, label %186

170:                                              ; preds = %167, %164, %160
  %171 = load i8*, i8** %3, align 8
  %172 = load i8*, i8** @name, align 8
  %173 = icmp ugt i8* %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i8*, i8** %3, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 -1
  store i8* %176, i8** %3, align 8
  %177 = call i32 @cfgetospeed(i32* @tmode)
  %178 = icmp sge i32 %177, 1200
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %184

181:                                              ; preds = %174
  %182 = load i8, i8* %4, align 1
  %183 = call i32 @putchr(i8 zeroext %182)
  br label %184

184:                                              ; preds = %181, %179
  br label %185

185:                                              ; preds = %184, %170
  br label %38

186:                                              ; preds = %167
  %187 = load i32, i32* %2, align 4
  %188 = load i32, i32* @KILL, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @CTRL(i8 zeroext 117)
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %190, %186
  %195 = call i32 @putchr(i8 zeroext 13)
  %196 = call i32 @cfgetospeed(i32* @tmode)
  %197 = icmp slt i32 %196, 1200
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 @putchr(i8 zeroext 10)
  br label %207

200:                                              ; preds = %194
  %201 = load i8*, i8** %3, align 8
  %202 = load i8*, i8** @name, align 8
  %203 = icmp ugt i8* %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %200
  br label %207

207:                                              ; preds = %206, %198
  %208 = call i32 (...) @prompt()
  store i32 0, i32* @upper, align 4
  store i32 0, i32* @lower, align 4
  store i32 0, i32* @digit, align 4
  %209 = load i8*, i8** @name, align 8
  store i8* %209, i8** %3, align 8
  br label %38

210:                                              ; preds = %190
  %211 = load i32, i32* %2, align 4
  %212 = call i64 @isdigit(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 1, i32* @digit, align 4
  br label %215

215:                                              ; preds = %214, %210
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %159
  br label %219

219:                                              ; preds = %218, %153
  %220 = load i64, i64* @IG, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32, i32* %2, align 4
  %224 = icmp sle i32 %223, 32
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %2, align 4
  %227 = icmp sgt i32 %226, 126
  br i1 %227, label %228, label %229

228:                                              ; preds = %225, %222
  br label %38

229:                                              ; preds = %225, %219
  %230 = load i32, i32* %2, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %3, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %3, align 8
  store i8 %231, i8* %232, align 1
  %234 = load i8, i8* %4, align 1
  %235 = call i32 @putchr(i8 zeroext %234)
  br label %38

236:                                              ; preds = %147, %119
  %237 = load i32, i32* @SIGINT, align 4
  %238 = load i32, i32* @SIG_IGN, align 4
  %239 = call i32 @signal(i32 %237, i32 %238)
  %240 = load i8*, i8** %3, align 8
  store i8 0, i8* %240, align 1
  %241 = load i32, i32* %2, align 4
  %242 = icmp eq i32 %241, 13
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i32 1, i32* @crmod, align 4
  br label %244

244:                                              ; preds = %243, %236
  %245 = load i32, i32* @upper, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* @lower, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* @LC, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250, %247, %244
  %254 = load i64, i64* @UC, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %277

256:                                              ; preds = %253, %250
  %257 = load i8*, i8** @name, align 8
  store i8* %257, i8** %3, align 8
  br label %258

258:                                              ; preds = %273, %256
  %259 = load i8*, i8** %3, align 8
  %260 = load i8, i8* %259, align 1
  %261 = icmp ne i8 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %258
  %263 = load i8*, i8** %3, align 8
  %264 = load i8, i8* %263, align 1
  %265 = call i64 @isupper(i8 signext %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load i8*, i8** %3, align 8
  %269 = load i8, i8* %268, align 1
  %270 = call signext i8 @tolower(i8 signext %269)
  %271 = load i8*, i8** %3, align 8
  store i8 %270, i8* %271, align 1
  br label %272

272:                                              ; preds = %267, %262
  br label %273

273:                                              ; preds = %272
  %274 = load i8*, i8** %3, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %3, align 8
  br label %258

276:                                              ; preds = %258
  br label %277

277:                                              ; preds = %276, %253
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 1, %278
  store i32 %279, i32* %1, align 4
  br label %280

280:                                              ; preds = %277, %50, %10
  %281 = load i32, i32* %1, align 4
  ret i32 %281
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @set_flags(i32) #2

declare dso_local i32 @prompt(...) #2

declare dso_local i32 @oflush(...) #2

declare dso_local i32 @sleep(i64) #2

declare dso_local i64 @tcsetattr(i32, i32, i32*) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @CTRL(i8 zeroext) #2

declare dso_local i32 @putf(i8*) #2

declare dso_local i64 @islower(i32) #2

declare dso_local i64 @isupper(i8 signext) #2

declare dso_local i32 @cfgetospeed(i32*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @putchr(i8 zeroext) #2

declare dso_local i64 @isdigit(i32) #2

declare dso_local signext i8 @tolower(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
