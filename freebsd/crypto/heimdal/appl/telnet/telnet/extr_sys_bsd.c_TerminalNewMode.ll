; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalNewMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalNewMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32*, i32, i32, i32 }

@TerminalNewMode.prevmode = internal global i32 0, align 4
@MODE_FORCE = common dso_local global i32 0, align 4
@globalmode = common dso_local global i32 0, align 4
@SYNCHing = common dso_local global i32 0, align 4
@flushout = common dso_local global i32 0, align 4
@tin = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@new_tc = common dso_local global %struct.termios zeroinitializer, align 8
@MODE_ECHO = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@crlf = common dso_local global i64 0, align 8
@ICRNL = common dso_local global i32 0, align 4
@MODE_FLOW = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@restartany = common dso_local global i64 0, align 8
@IXANY = common dso_local global i32 0, align 4
@MODE_TRAPSIG = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@localchars = common dso_local global i32 0, align 4
@MODE_EDIT = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@MODE_SOFT_TAB = common dso_local global i32 0, align 4
@MODE_LIT_ECHO = common dso_local global i32 0, align 4
@MODE_INBIN = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@MODE_OUTBIN = common dso_local global i32 0, align 4
@MODE_OUT8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@old_tc = common dso_local global %struct.termios zeroinitializer, align 8
@rlogin = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@escape = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@tout = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@NOKERNINFO = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@TABDLY = common dso_local global i32 0, align 4
@VDSUSP = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@ayt = common dso_local global i32 0, align 4
@ayt_status = common dso_local global i32 0, align 4
@susp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TerminalNewMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MODE_FORCE, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* @globalmode, align 4
  %12 = load i32, i32* @TerminalNewMode.prevmode, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %343

16:                                               ; preds = %1
  %17 = load i32, i32* @SYNCHing, align 4
  %18 = load i32, i32* @flushout, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ttyflush(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %23, %16
  %27 = load i32, i32* @tin, align 4
  %28 = call i32 @tcgetattr(i32 %27, %struct.termios* %3)
  br label %29

29:                                               ; preds = %43, %26
  %30 = load i32, i32* @tin, align 4
  %31 = load i32, i32* @TCSADRAIN, align 4
  %32 = call i64 @tcsetattr(i32 %30, i32 %31, %struct.termios* %3)
  %33 = load i32, i32* @SYNCHing, align 4
  %34 = load i32, i32* @flushout, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ttyflush(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ true, %37 ], [ %42, %40 ]
  br i1 %44, label %29, label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* @TerminalNewMode.prevmode, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @MODE_FORCE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* @TerminalNewMode.prevmode, align 4
  %52 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 bitcast (%struct.termios* @new_tc to i8*), i64 32, i1 false)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @MODE_ECHO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %46
  %58 = load i32, i32* @ECHO, align 4
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @ONLCR, align 4
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @crlf, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @ICRNL, align 4
  %70 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %68, %57
  br label %85

74:                                               ; preds = %46
  %75 = load i32, i32* @ECHO, align 4
  %76 = xor i32 %75, -1
  %77 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @ONLCR, align 4
  %81 = xor i32 %80, -1
  %82 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %81
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %74, %73
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @MODE_FLOW, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* @IXOFF, align 4
  %92 = load i32, i32* @IXON, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 8
  br label %134

98:                                               ; preds = %85
  %99 = load i64, i64* @restartany, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* @IXOFF, align 4
  %103 = load i32, i32* @IXON, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 8
  br label %133

108:                                              ; preds = %98
  %109 = load i64, i64* @restartany, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* @IXOFF, align 4
  %113 = load i32, i32* @IXON, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IXANY, align 4
  %116 = or i32 %114, %115
  %117 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  br label %132

120:                                              ; preds = %108
  %121 = load i32, i32* @IXOFF, align 4
  %122 = load i32, i32* @IXON, align 4
  %123 = or i32 %121, %122
  %124 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @IXANY, align 4
  %128 = xor i32 %127, -1
  %129 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %128
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %120, %111
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %90
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* @MODE_TRAPSIG, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @ISIG, align 4
  %141 = xor i32 %140, -1
  %142 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %141
  store i32 %144, i32* %142, align 4
  store i32 0, i32* @localchars, align 4
  br label %150

145:                                              ; preds = %134
  %146 = load i32, i32* @ISIG, align 4
  %147 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  store i32 1, i32* @localchars, align 4
  br label %150

150:                                              ; preds = %145, %139
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @MODE_EDIT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* @ICANON, align 4
  %157 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %179

160:                                              ; preds = %150
  %161 = load i32, i32* @ICANON, align 4
  %162 = xor i32 %161, -1
  %163 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @ICRNL, align 4
  %167 = xor i32 %166, -1
  %168 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @VMIN, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 1, i32* %174, align 4
  %175 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @VTIME, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %160, %155
  %180 = load i32, i32* %2, align 4
  %181 = load i32, i32* @MODE_EDIT, align 4
  %182 = load i32, i32* @MODE_TRAPSIG, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %179
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @MODE_SOFT_TAB, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %194

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %192
  %195 = load i32, i32* %2, align 4
  %196 = load i32, i32* @MODE_LIT_ECHO, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %201

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %199
  %202 = load i32, i32* %2, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %280

205:                                              ; preds = %201
  %206 = load i32, i32* %2, align 4
  %207 = load i32, i32* @MODE_INBIN, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @ISTRIP, align 4
  %212 = xor i32 %211, -1
  %213 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %212
  store i32 %215, i32* %213, align 8
  br label %221

216:                                              ; preds = %205
  %217 = load i32, i32* @ISTRIP, align 4
  %218 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %217
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %216, %210
  %222 = load i32, i32* %2, align 4
  %223 = load i32, i32* @MODE_OUTBIN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* %2, align 4
  %228 = load i32, i32* @MODE_OUT8, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %259

231:                                              ; preds = %226, %221
  %232 = load i32, i32* @CSIZE, align 4
  %233 = load i32, i32* @PARENB, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %235
  store i32 %238, i32* %236, align 8
  %239 = load i32, i32* @CS8, align 4
  %240 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %239
  store i32 %242, i32* %240, align 8
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* @MODE_OUTBIN, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %231
  %248 = load i32, i32* @OPOST, align 4
  %249 = xor i32 %248, -1
  %250 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, %249
  store i32 %252, i32* %250, align 8
  br label %258

253:                                              ; preds = %231
  %254 = load i32, i32* @OPOST, align 4
  %255 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %254
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %253, %247
  br label %279

259:                                              ; preds = %226
  %260 = load i32, i32* @CSIZE, align 4
  %261 = load i32, i32* @PARENB, align 4
  %262 = or i32 %260, %261
  %263 = xor i32 %262, -1
  %264 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, %263
  store i32 %266, i32* %264, align 8
  %267 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @old_tc, i32 0, i32 2), align 8
  %268 = load i32, i32* @CSIZE, align 4
  %269 = load i32, i32* @PARENB, align 4
  %270 = or i32 %268, %269
  %271 = and i32 %267, %270
  %272 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %271
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* @OPOST, align 4
  %276 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %275
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %259, %258
  store i32 1, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %204
  %281 = load i32, i32* %2, align 4
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %323

283:                                              ; preds = %280
  %284 = load i64, i64* @rlogin, align 8
  %285 = load i64, i64* @_POSIX_VDISABLE, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load i64, i64* @rlogin, align 8
  br label %291

289:                                              ; preds = %283
  %290 = load i64, i64* @escape, align 8
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i64 [ %288, %287 ], [ %290, %289 ]
  %293 = inttoptr i64 %292 to i8*
  store i8* %293, i8** %6, align 8
  %294 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* @VEOL, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to i8*
  %301 = load i8*, i8** %6, align 8
  %302 = icmp ne i8* %300, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %291
  %304 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i64, i64* @VEOL, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = inttoptr i64 %309 to i8*
  %311 = load i64, i64* @_POSIX_VDISABLE, align 8
  %312 = inttoptr i64 %311 to i8*
  %313 = icmp eq i8* %310, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %303
  %315 = load i8*, i8** %6, align 8
  %316 = ptrtoint i8* %315 to i32
  %317 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @VEOL, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32 %316, i32* %320, align 4
  br label %321

321:                                              ; preds = %314, %303
  br label %322

322:                                              ; preds = %321, %291
  br label %325

323:                                              ; preds = %280
  %324 = bitcast %struct.termios* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %324, i8* align 8 bitcast (%struct.termios* @old_tc to i8*), i64 32, i1 false)
  br label %325

325:                                              ; preds = %323, %322
  %326 = load i32, i32* @tin, align 4
  %327 = load i32, i32* @TCSADRAIN, align 4
  %328 = call i64 @tcsetattr(i32 %326, i32 %327, %struct.termios* %3)
  %329 = icmp slt i64 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = load i32, i32* @tin, align 4
  %332 = load i32, i32* @TCSANOW, align 4
  %333 = call i64 @tcsetattr(i32 %331, i32 %332, %struct.termios* %3)
  br label %334

334:                                              ; preds = %330, %325
  %335 = load i32, i32* @tin, align 4
  %336 = load i32, i32* @FIONBIO, align 4
  %337 = bitcast i32* %4 to i8*
  %338 = call i32 @ioctl(i32 %335, i32 %336, i8* %337)
  %339 = load i32, i32* @tout, align 4
  %340 = load i32, i32* @FIONBIO, align 4
  %341 = bitcast i32* %4 to i8*
  %342 = call i32 @ioctl(i32 %339, i32 %340, i8* %341)
  br label %343

343:                                              ; preds = %334, %15
  ret void
}

declare dso_local i32 @ttyflush(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
