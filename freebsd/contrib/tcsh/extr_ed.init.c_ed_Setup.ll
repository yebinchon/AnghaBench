; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_ed_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_ed_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.varent = type { i32* }

@ed_Setup.havesetup = internal global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@vdisable = common dso_local global i8 0, align 1
@STRinputmode = common dso_local global i32 0, align 4
@STRinsert = common dso_local global i32 0, align 4
@MODE_INSERT = common dso_local global i32 0, align 4
@inputmode = common dso_local global i32 0, align 4
@STRoverwrite = common dso_local global i32 0, align 4
@MODE_REPLACE = common dso_local global i32 0, align 4
@Hist_num = common dso_local global i64 0, align 8
@Expand = common dso_local global i64 0, align 8
@STRkillring = common dso_local global i32 0, align 4
@SHTTY = common dso_local global i32 0, align 4
@extty = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@tstty = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@edtty = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@T_Speed = common dso_local global i32 0, align 4
@T_Tabs = common dso_local global i64 0, align 8
@Tty_eight_bit = common dso_local global i32 0, align 4
@ttylist = common dso_local global %struct.TYPE_15__** null, align 8
@EX_IO = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@XTABS = common dso_local global i32 0, align 4
@M_LOCAL = common dso_local global i64 0, align 8
@ttychars = common dso_local global i8** null, align 8
@TS_IO = common dso_local global i64 0, align 8
@C_NCC = common dso_local global i32 0, align 4
@ED_IO = common dso_local global i64 0, align 8
@M_INPUT = common dso_local global i64 0, align 8
@M_LINED = common dso_local global i64 0, align 8
@M_OUTPUT = common dso_local global i64 0, align 8
@NTTYDISC = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@SIG_WINDOW = common dso_local global i32 0, align 4
@_PC_VDISABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@window_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ed_Setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.varent*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @ed_Setup.havesetup, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %261

8:                                                ; preds = %1
  %9 = load i64, i64* @_POSIX_VDISABLE, align 8
  %10 = trunc i64 %9 to i8
  store i8 %10, i8* @vdisable, align 1
  %11 = load i32, i32* @STRinputmode, align 4
  %12 = call %struct.varent* @adrof(i32 %11)
  store %struct.varent* %12, %struct.varent** %4, align 8
  %13 = icmp ne %struct.varent* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.varent*, %struct.varent** %4, align 8
  %16 = getelementptr inbounds %struct.varent, %struct.varent* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.varent*, %struct.varent** %4, align 8
  %21 = getelementptr inbounds %struct.varent, %struct.varent* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STRinsert, align 4
  %25 = call i32 @Strcmp(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @MODE_INSERT, align 4
  store i32 %28, i32* @inputmode, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.varent*, %struct.varent** %4, align 8
  %31 = getelementptr inbounds %struct.varent, %struct.varent* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STRoverwrite, align 4
  %35 = call i32 @Strcmp(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @MODE_REPLACE, align 4
  store i32 %38, i32* @inputmode, align 4
  br label %39

39:                                               ; preds = %37, %29
  br label %40

40:                                               ; preds = %39, %27
  br label %43

41:                                               ; preds = %14, %8
  %42 = load i32, i32* @MODE_INSERT, align 4
  store i32 %42, i32* @inputmode, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = call i32 (...) @ed_InitMaps()
  store i64 0, i64* @Hist_num, align 8
  store i64 0, i64* @Expand, align 8
  %45 = load i32, i32* @STRkillring, align 4
  %46 = call i32 @varval(i32 %45)
  %47 = call i32 @getn(i32 %46)
  %48 = call i32 @SetKillRing(i32 %47)
  %49 = load i32, i32* @SHTTY, align 4
  %50 = call i32 @tty_getty(i32 %49, %struct.TYPE_16__* @extty)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %261

53:                                               ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_16__* @edtty to i8*), i8* align 4 bitcast (%struct.TYPE_16__* @extty to i8*), i64 28, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_16__* @tstty to i8*), i8* align 4 bitcast (%struct.TYPE_16__* @edtty to i8*), i64 28, i1 false)
  %54 = call i32 @tty_getspeed(%struct.TYPE_16__* @extty)
  store i32 %54, i32* @T_Speed, align 4
  %55 = call i64 @tty_gettabs(%struct.TYPE_16__* @extty)
  store i64 %55, i64* @T_Tabs, align 8
  %56 = call i32 @tty_geteightbit(%struct.TYPE_16__* @extty)
  store i32 %56, i32* @Tty_eight_bit, align 4
  %57 = load i64, i64* @T_Tabs, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %61 = load i64, i64* @EX_IO, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %60, i64 %61
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load i64, i64* @M_CONTROL, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XTABS, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %74 = load i64, i64* @EX_IO, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %73, i64 %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i64, i64* @M_CONTROL, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  br label %107

83:                                               ; preds = %53
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %85 = load i64, i64* @EX_IO, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %84, i64 %85
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load i64, i64* @M_CONTROL, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %95 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %96 = load i64, i64* @EX_IO, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %95, i64 %96
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = load i64, i64* @M_CONTROL, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @XTABS, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 1, i32 4), align 4
  br label %107

107:                                              ; preds = %83, %59
  %108 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %109 = load i64, i64* @EX_IO, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %108, i64 %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i64, i64* @M_LOCAL, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 0), align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 0), align 4
  %119 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ttylist, align 8
  %120 = load i64, i64* @EX_IO, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %119, i64 %120
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load i64, i64* @M_LOCAL, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 0), align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @extty, i32 0, i32 0), align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %254

131:                                              ; preds = %107
  %132 = call i64 @tty_cooked_mode(%struct.TYPE_16__* @tstty)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %243

134:                                              ; preds = %131
  %135 = load i8**, i8*** @ttychars, align 8
  %136 = load i64, i64* @TS_IO, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @tty_getchar(%struct.TYPE_16__* @tstty, i8* %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %188, %134
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @C_NCC, align 4
  %143 = sub nsw i32 %142, 2
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %191

145:                                              ; preds = %140
  %146 = load i8**, i8*** @ttychars, align 8
  %147 = load i64, i64* @TS_IO, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @vdisable, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %145
  %159 = load i8**, i8*** @ttychars, align 8
  %160 = load i64, i64* @ED_IO, align 8
  %161 = getelementptr inbounds i8*, i8** %159, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @vdisable, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %158
  %172 = load i8**, i8*** @ttychars, align 8
  %173 = load i64, i64* @TS_IO, align 8
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load i8**, i8*** @ttychars, align 8
  %181 = load i64, i64* @ED_IO, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 %179, i8* %186, align 1
  br label %187

187:                                              ; preds = %171, %158, %145
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %140

191:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %239, %191
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @C_NCC, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %242

196:                                              ; preds = %192
  %197 = load i8**, i8*** @ttychars, align 8
  %198 = load i64, i64* @TS_IO, align 8
  %199 = getelementptr inbounds i8*, i8** %197, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8, i8* @vdisable, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp ne i32 %205, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %196
  %210 = load i8**, i8*** @ttychars, align 8
  %211 = load i64, i64* @EX_IO, align 8
  %212 = getelementptr inbounds i8*, i8** %210, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8, i8* @vdisable, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp ne i32 %218, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %209
  %223 = load i8**, i8*** @ttychars, align 8
  %224 = load i64, i64* @TS_IO, align 8
  %225 = getelementptr inbounds i8*, i8** %223, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = load i8**, i8*** @ttychars, align 8
  %232 = load i64, i64* @EX_IO, align 8
  %233 = getelementptr inbounds i8*, i8** %231, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  store i8 %230, i8* %237, align 1
  br label %238

238:                                              ; preds = %222, %209, %196
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %192

242:                                              ; preds = %192
  br label %243

243:                                              ; preds = %242, %131
  %244 = load i8**, i8*** @ttychars, align 8
  %245 = load i64, i64* @EX_IO, align 8
  %246 = getelementptr inbounds i8*, i8** %244, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @tty_setchar(%struct.TYPE_16__* @extty, i8* %247)
  %249 = load i32, i32* @SHTTY, align 4
  %250 = call i32 @tty_setty(i32 %249, %struct.TYPE_16__* @extty)
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  store i32 -1, i32* %2, align 4
  br label %261

253:                                              ; preds = %243
  br label %260

254:                                              ; preds = %107
  %255 = load i8**, i8*** @ttychars, align 8
  %256 = load i64, i64* @EX_IO, align 8
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @tty_setchar(%struct.TYPE_16__* @extty, i8* %258)
  br label %260

260:                                              ; preds = %254, %253
  store i32 1, i32* @ed_Setup.havesetup, align 4
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %252, %52, %7
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i32 @Strcmp(i32, i32) #1

declare dso_local i32 @ed_InitMaps(...) #1

declare dso_local i32 @SetKillRing(i32) #1

declare dso_local i32 @getn(i32) #1

declare dso_local i32 @varval(i32) #1

declare dso_local i32 @tty_getty(i32, %struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_getspeed(%struct.TYPE_16__*) #1

declare dso_local i64 @tty_gettabs(%struct.TYPE_16__*) #1

declare dso_local i32 @tty_geteightbit(%struct.TYPE_16__*) #1

declare dso_local i64 @tty_cooked_mode(%struct.TYPE_16__*) #1

declare dso_local i32 @tty_getchar(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @tty_setchar(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @tty_setty(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
