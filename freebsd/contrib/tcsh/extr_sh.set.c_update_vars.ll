; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_update_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_update_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32 }

@STRpath = common dso_local global i8* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_UNDVAR = common dso_local global i32 0, align 4
@STRnoclobber = common dso_local global i8* null, align 8
@no_clobber = common dso_local global i32 0, align 4
@STRhistchars = common dso_local global i8* null, align 8
@HIST = common dso_local global i8 0, align 1
@HISTSUB = common dso_local global i8 0, align 1
@STRpromptchars = common dso_local global i8* null, align 8
@PRCH = common dso_local global i8 0, align 1
@PRCHROOT = common dso_local global i8 0, align 1
@STRhistlit = common dso_local global i8* null, align 8
@HistLit = common dso_local global i32 0, align 4
@STRuser = common dso_local global i8* null, align 8
@STRKUSER = common dso_local global i32 0, align 4
@STRLOGNAME = common dso_local global i32 0, align 4
@STRgroup = common dso_local global i8* null, align 8
@STRKGROUP = common dso_local global i32 0, align 4
@STRwordchars = common dso_local global i8* null, align 8
@word_chars = common dso_local global i8* null, align 8
@STRloginsh = common dso_local global i8* null, align 8
@loginsh = common dso_local global i32 0, align 4
@STRanyerror = common dso_local global i8* null, align 8
@anyerror = common dso_local global i32 0, align 4
@STRsymlinks = common dso_local global i8* null, align 8
@STRignore = common dso_local global i8* null, align 8
@SYM_IGNORE = common dso_local global i64 0, align 8
@symlinks = common dso_local global i64 0, align 8
@STRexpand = common dso_local global i8* null, align 8
@SYM_EXPAND = common dso_local global i64 0, align 8
@STRchase = common dso_local global i8* null, align 8
@SYM_CHASE = common dso_local global i64 0, align 8
@STRterm = common dso_local global i8* null, align 8
@STRKTERM = common dso_local global i32 0, align 4
@GotTermCaps = common dso_local global i64 0, align 8
@noediting = common dso_local global i64 0, align 8
@STRnetwork = common dso_local global i32 0, align 4
@STRunknown = common dso_local global i32 0, align 4
@STRdumb = common dso_local global i32 0, align 4
@editing = common dso_local global i32 0, align 4
@STRedit = common dso_local global i8* null, align 8
@STRhome = common dso_local global i8* null, align 8
@xfree = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@STRKHOME = common dso_local global i32 0, align 4
@STRvimode = common dso_local global i8* null, align 8
@VImode = common dso_local global i32 0, align 4
@STRshlvl = common dso_local global i8* null, align 8
@STRKSHLVL = common dso_local global i32 0, align 4
@STRignoreeof = common dso_local global i8* null, align 8
@numeof = common dso_local global i32 0, align 4
@STRbackslash_quote = common dso_local global i8* null, align 8
@bslash_quote = common dso_local global i32 0, align 4
@STRcompat_expr = common dso_local global i8* null, align 8
@compat_expr = common dso_local global i32 0, align 4
@STRdirstack = common dso_local global i8* null, align 8
@STRrecognize_only_executables = common dso_local global i8* null, align 8
@STRkillring = common dso_local global i8* null, align 8
@STRhistory = common dso_local global i8* null, align 8
@STRwatch = common dso_local global i8* null, align 8
@STRimplicitcd = common dso_local global i8* null, align 8
@STRverbose = common dso_local global i8* null, align 8
@implicit_cd = common dso_local global i32 0, align 4
@STRcdtohome = common dso_local global i8* null, align 8
@cdtohome = common dso_local global i32 0, align 4
@CHECK_MBYTEVAR = common dso_local global i8* null, align 8
@STRTERMCAP = common dso_local global i32 0, align 4
@STRcatalog = common dso_local global i8* null, align 8
@STRcolor = common dso_local global i8* null, align 8
@STRfilec = common dso_local global i8* null, align 8
@STRnokanji = common dso_local global i8* null, align 8
@filec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vars(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.varent*, align 8
  %4 = alloca %struct.varent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** @STRpath, align 8
  %14 = call i64 @eq(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i8*, i8** @STRpath, align 8
  %18 = call %struct.varent* @adrof(i8* %17)
  store %struct.varent* %18, %struct.varent** %3, align 8
  %19 = load %struct.varent*, %struct.varent** %3, align 8
  %20 = icmp eq %struct.varent* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @ERR_NAME, align 4
  %23 = load i32, i32* @ERR_UNDVAR, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @stderror(i32 %24)
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.varent*, %struct.varent** %3, align 8
  %28 = getelementptr inbounds %struct.varent, %struct.varent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @exportpath(i32 %29)
  %31 = call i32 @dohash(i32* null, i32* null)
  br label %32

32:                                               ; preds = %26, %21
  br label %401

33:                                               ; preds = %1
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** @STRnoclobber, align 8
  %36 = call i64 @eq(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** @STRnoclobber, align 8
  %40 = call %struct.varent* @adrof(i8* %39)
  store %struct.varent* %40, %struct.varent** %4, align 8
  %41 = load %struct.varent*, %struct.varent** %4, align 8
  %42 = icmp eq %struct.varent* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @ERR_NAME, align 4
  %45 = load i32, i32* @ERR_UNDVAR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @stderror(i32 %46)
  br label %53

48:                                               ; preds = %38
  %49 = load %struct.varent*, %struct.varent** %4, align 8
  %50 = getelementptr inbounds %struct.varent, %struct.varent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_noclobber(i32 %51)
  store i32 %52, i32* @no_clobber, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %400

54:                                               ; preds = %33
  %55 = load i8*, i8** %2, align 8
  %56 = load i8*, i8** @STRhistchars, align 8
  %57 = call i64 @eq(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i8*, i8** %2, align 8
  %61 = call i8* @varval(i8* %60)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* @HIST, align 1
  %65 = load i8, i8* @HIST, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* @HISTSUB, align 1
  br label %72

70:                                               ; preds = %59
  %71 = load i8, i8* @HIST, align 1
  store i8 %71, i8* @HISTSUB, align 1
  br label %72

72:                                               ; preds = %70, %67
  br label %399

73:                                               ; preds = %54
  %74 = load i8*, i8** %2, align 8
  %75 = load i8*, i8** @STRpromptchars, align 8
  %76 = call i64 @eq(i8* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load i8*, i8** %2, align 8
  %80 = call i8* @varval(i8* %79)
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  %83 = load i8, i8* %81, align 1
  store i8 %83, i8* @PRCH, align 1
  %84 = load i8, i8* @PRCH, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* @PRCHROOT, align 1
  br label %91

89:                                               ; preds = %78
  %90 = load i8, i8* @PRCH, align 1
  store i8 %90, i8* @PRCHROOT, align 1
  br label %91

91:                                               ; preds = %89, %86
  br label %398

92:                                               ; preds = %73
  %93 = load i8*, i8** %2, align 8
  %94 = load i8*, i8** @STRhistlit, align 8
  %95 = call i64 @eq(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* @HistLit, align 4
  br label %397

98:                                               ; preds = %92
  %99 = load i8*, i8** %2, align 8
  %100 = load i8*, i8** @STRuser, align 8
  %101 = call i64 @eq(i8* %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32, i32* @STRKUSER, align 4
  %105 = load i8*, i8** %2, align 8
  %106 = call i8* @varval(i8* %105)
  %107 = call i32 @tsetenv(i32 %104, i8* %106)
  %108 = load i32, i32* @STRLOGNAME, align 4
  %109 = load i8*, i8** %2, align 8
  %110 = call i8* @varval(i8* %109)
  %111 = call i32 @tsetenv(i32 %108, i8* %110)
  br label %396

112:                                              ; preds = %98
  %113 = load i8*, i8** %2, align 8
  %114 = load i8*, i8** @STRgroup, align 8
  %115 = call i64 @eq(i8* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @STRKGROUP, align 4
  %119 = load i8*, i8** %2, align 8
  %120 = call i8* @varval(i8* %119)
  %121 = call i32 @tsetenv(i32 %118, i8* %120)
  br label %395

122:                                              ; preds = %112
  %123 = load i8*, i8** %2, align 8
  %124 = load i8*, i8** @STRwordchars, align 8
  %125 = call i64 @eq(i8* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %2, align 8
  %129 = call i8* @varval(i8* %128)
  store i8* %129, i8** @word_chars, align 8
  br label %394

130:                                              ; preds = %122
  %131 = load i8*, i8** %2, align 8
  %132 = load i8*, i8** @STRloginsh, align 8
  %133 = call i64 @eq(i8* %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* @loginsh, align 4
  br label %393

136:                                              ; preds = %130
  %137 = load i8*, i8** %2, align 8
  %138 = load i8*, i8** @STRanyerror, align 8
  %139 = call i64 @eq(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 1, i32* @anyerror, align 4
  br label %392

142:                                              ; preds = %136
  %143 = load i8*, i8** %2, align 8
  %144 = load i8*, i8** @STRsymlinks, align 8
  %145 = call i64 @eq(i8* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %142
  %148 = load i8*, i8** %2, align 8
  %149 = call i8* @varval(i8* %148)
  store i8* %149, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i8*, i8** @STRignore, align 8
  %152 = call i64 @eq(i8* %150, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i64, i64* @SYM_IGNORE, align 8
  store i64 %155, i64* @symlinks, align 8
  br label %173

156:                                              ; preds = %147
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** @STRexpand, align 8
  %159 = call i64 @eq(i8* %157, i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i64, i64* @SYM_EXPAND, align 8
  store i64 %162, i64* @symlinks, align 8
  br label %172

163:                                              ; preds = %156
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** @STRchase, align 8
  %166 = call i64 @eq(i8* %164, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i64, i64* @SYM_CHASE, align 8
  store i64 %169, i64* @symlinks, align 8
  br label %171

170:                                              ; preds = %163
  store i64 0, i64* @symlinks, align 8
  br label %171

171:                                              ; preds = %170, %168
  br label %172

172:                                              ; preds = %171, %161
  br label %173

173:                                              ; preds = %172, %154
  br label %391

174:                                              ; preds = %142
  %175 = load i8*, i8** %2, align 8
  %176 = load i8*, i8** @STRterm, align 8
  %177 = call i64 @eq(i8* %175, i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %174
  %180 = load i8*, i8** %2, align 8
  %181 = call i8* @varval(i8* %180)
  store i8* %181, i8** %8, align 8
  %182 = load i32, i32* @STRKTERM, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @tsetenv(i32 %182, i8* %183)
  store i64 0, i64* @GotTermCaps, align 8
  %185 = load i64, i64* @noediting, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %179
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* @STRnetwork, align 4
  %190 = call i64 @Strcmp(i8* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* @STRunknown, align 4
  %195 = call i64 @Strcmp(i8* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* @STRdumb, align 4
  %200 = call i64 @Strcmp(i8* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  store i32 1, i32* @editing, align 4
  store i64 0, i64* @noediting, align 8
  %203 = load i8*, i8** @STRedit, align 8
  %204 = call i32 @setNS(i8* %203)
  br label %205

205:                                              ; preds = %202, %197, %192, %187, %179
  %206 = call i32 (...) @ed_Init()
  br label %390

207:                                              ; preds = %174
  %208 = load i8*, i8** %2, align 8
  %209 = load i8*, i8** @STRhome, align 8
  %210 = call i64 @eq(i8* %208, i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %207
  %213 = load i8*, i8** %2, align 8
  %214 = call i8* @varval(i8* %213)
  %215 = call i8* @Strsave(i8* %214)
  store i8* %215, i8** %9, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = load i32, i32* @xfree, align 4
  %218 = call i32 @cleanup_push(i8* %216, i32 %217)
  %219 = load i8*, i8** %9, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = call i8* @dcanon(i8* %219, i8* %220)
  store i8* %221, i8** %10, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @cleanup_ignore(i8* %222)
  %224 = load i8*, i8** %9, align 8
  %225 = call i32 @cleanup_until(i8* %224)
  %226 = load i8*, i8** %10, align 8
  %227 = load i32, i32* @xfree, align 4
  %228 = call i32 @cleanup_push(i8* %226, i32 %227)
  %229 = load i8*, i8** %2, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i32, i32* @VAR_READWRITE, align 4
  %232 = call i32 @setcopy(i8* %229, i8* %230, i32 %231)
  %233 = load i32, i32* @STRKHOME, align 4
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 @tsetenv(i32 %233, i8* %234)
  %236 = call i32 (...) @dtilde()
  %237 = load i8*, i8** %10, align 8
  %238 = call i32 @cleanup_until(i8* %237)
  br label %389

239:                                              ; preds = %207
  %240 = load i8*, i8** %2, align 8
  %241 = load i8*, i8** @STRedit, align 8
  %242 = call i64 @eq(i8* %240, i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 1, i32* @editing, align 4
  store i64 0, i64* @noediting, align 8
  br label %388

245:                                              ; preds = %239
  %246 = load i8*, i8** %2, align 8
  %247 = load i8*, i8** @STRvimode, align 8
  %248 = call i64 @eq(i8* %246, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  store i32 1, i32* @VImode, align 4
  %251 = call i32 (...) @update_wordchars()
  br label %387

252:                                              ; preds = %245
  %253 = load i8*, i8** %2, align 8
  %254 = load i8*, i8** @STRshlvl, align 8
  %255 = call i64 @eq(i8* %253, i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i32, i32* @STRKSHLVL, align 4
  %259 = load i8*, i8** %2, align 8
  %260 = call i8* @varval(i8* %259)
  %261 = call i32 @tsetenv(i32 %258, i8* %260)
  br label %386

262:                                              ; preds = %252
  %263 = load i8*, i8** %2, align 8
  %264 = load i8*, i8** @STRignoreeof, align 8
  %265 = call i64 @eq(i8* %263, i8* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %302

267:                                              ; preds = %262
  store i32 0, i32* @numeof, align 4
  %268 = load i8*, i8** @STRignoreeof, align 8
  %269 = call i8* @varval(i8* %268)
  store i8* %269, i8** %11, align 8
  br label %270

270:                                              ; preds = %294, %267
  %271 = load i8*, i8** %11, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i8*, i8** %11, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 0
  br label %278

278:                                              ; preds = %273, %270
  %279 = phi i1 [ false, %270 ], [ %277, %273 ]
  br i1 %279, label %280, label %297

280:                                              ; preds = %278
  %281 = load i8*, i8** %11, align 8
  %282 = load i8, i8* %281, align 1
  %283 = call i32 @Isdigit(i8 signext %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  store i32 0, i32* @numeof, align 4
  br label %297

286:                                              ; preds = %280
  %287 = load i32, i32* @numeof, align 4
  %288 = mul nsw i32 %287, 10
  %289 = load i8*, i8** %11, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = add nsw i32 %288, %291
  %293 = sub nsw i32 %292, 48
  store i32 %293, i32* @numeof, align 4
  br label %294

294:                                              ; preds = %286
  %295 = load i8*, i8** %11, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %11, align 8
  br label %270

297:                                              ; preds = %285, %278
  %298 = load i32, i32* @numeof, align 4
  %299 = icmp sle i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 26, i32* @numeof, align 4
  br label %301

301:                                              ; preds = %300, %297
  br label %385

302:                                              ; preds = %262
  %303 = load i8*, i8** %2, align 8
  %304 = load i8*, i8** @STRbackslash_quote, align 8
  %305 = call i64 @eq(i8* %303, i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  store i32 1, i32* @bslash_quote, align 4
  br label %384

308:                                              ; preds = %302
  %309 = load i8*, i8** %2, align 8
  %310 = load i8*, i8** @STRcompat_expr, align 8
  %311 = call i64 @eq(i8* %309, i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  store i32 1, i32* @compat_expr, align 4
  br label %383

314:                                              ; preds = %308
  %315 = load i8*, i8** %2, align 8
  %316 = load i8*, i8** @STRdirstack, align 8
  %317 = call i64 @eq(i8* %315, i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = call i32 (...) @dsetstack()
  br label %382

321:                                              ; preds = %314
  %322 = load i8*, i8** %2, align 8
  %323 = load i8*, i8** @STRrecognize_only_executables, align 8
  %324 = call i64 @eq(i8* %322, i8* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = call i32 (...) @tw_cmd_free()
  br label %381

328:                                              ; preds = %321
  %329 = load i8*, i8** %2, align 8
  %330 = load i8*, i8** @STRkillring, align 8
  %331 = call i64 @eq(i8* %329, i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load i8*, i8** %2, align 8
  %335 = call i8* @varval(i8* %334)
  %336 = call i64 @getn(i8* %335)
  %337 = trunc i64 %336 to i32
  %338 = call i32 @SetKillRing(i32 %337)
  br label %380

339:                                              ; preds = %328
  %340 = load i8*, i8** %2, align 8
  %341 = load i8*, i8** @STRhistory, align 8
  %342 = call i64 @eq(i8* %340, i8* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %339
  %345 = load i8*, i8** %2, align 8
  %346 = call i8* @varval(i8* %345)
  %347 = call i64 @getn(i8* %346)
  %348 = trunc i64 %347 to i32
  %349 = call i32 @sethistory(i32 %348)
  br label %379

350:                                              ; preds = %339
  %351 = load i8*, i8** %2, align 8
  %352 = load i8*, i8** @STRwatch, align 8
  %353 = call i64 @eq(i8* %351, i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = call i32 (...) @resetwatch()
  br label %378

357:                                              ; preds = %350
  %358 = load i8*, i8** %2, align 8
  %359 = load i8*, i8** @STRimplicitcd, align 8
  %360 = call i64 @eq(i8* %358, i8* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %357
  %363 = load i8*, i8** %2, align 8
  %364 = call i8* @varval(i8* %363)
  %365 = load i8*, i8** @STRverbose, align 8
  %366 = call i64 @eq(i8* %364, i8* %365)
  %367 = icmp ne i64 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 2, i32 1
  store i32 %369, i32* @implicit_cd, align 4
  br label %377

370:                                              ; preds = %357
  %371 = load i8*, i8** %2, align 8
  %372 = load i8*, i8** @STRcdtohome, align 8
  %373 = call i64 @eq(i8* %371, i8* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  store i32 1, i32* @cdtohome, align 4
  br label %376

376:                                              ; preds = %375, %370
  br label %377

377:                                              ; preds = %376, %362
  br label %378

378:                                              ; preds = %377, %355
  br label %379

379:                                              ; preds = %378, %344
  br label %380

380:                                              ; preds = %379, %333
  br label %381

381:                                              ; preds = %380, %326
  br label %382

382:                                              ; preds = %381, %319
  br label %383

383:                                              ; preds = %382, %313
  br label %384

384:                                              ; preds = %383, %307
  br label %385

385:                                              ; preds = %384, %301
  br label %386

386:                                              ; preds = %385, %257
  br label %387

387:                                              ; preds = %386, %250
  br label %388

388:                                              ; preds = %387, %244
  br label %389

389:                                              ; preds = %388, %212
  br label %390

390:                                              ; preds = %389, %205
  br label %391

391:                                              ; preds = %390, %173
  br label %392

392:                                              ; preds = %391, %141
  br label %393

393:                                              ; preds = %392, %135
  br label %394

394:                                              ; preds = %393, %127
  br label %395

395:                                              ; preds = %394, %117
  br label %396

396:                                              ; preds = %395, %103
  br label %397

397:                                              ; preds = %396, %97
  br label %398

398:                                              ; preds = %397, %91
  br label %399

399:                                              ; preds = %398, %72
  br label %400

400:                                              ; preds = %399, %53
  br label %401

401:                                              ; preds = %400, %32
  ret void
}

declare dso_local i64 @eq(i8*, i8*) #1

declare dso_local %struct.varent* @adrof(i8*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @exportpath(i32) #1

declare dso_local i32 @dohash(i32*, i32*) #1

declare dso_local i32 @set_noclobber(i32) #1

declare dso_local i8* @varval(i8*) #1

declare dso_local i32 @tsetenv(i32, i8*) #1

declare dso_local i64 @Strcmp(i8*, i32) #1

declare dso_local i32 @setNS(i8*) #1

declare dso_local i32 @ed_Init(...) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i8* @dcanon(i8*, i8*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @setcopy(i8*, i8*, i32) #1

declare dso_local i32 @dtilde(...) #1

declare dso_local i32 @update_wordchars(...) #1

declare dso_local i32 @Isdigit(i8 signext) #1

declare dso_local i32 @dsetstack(...) #1

declare dso_local i32 @tw_cmd_free(...) #1

declare dso_local i32 @SetKillRing(i32) #1

declare dso_local i64 @getn(i8*) #1

declare dso_local i32 @sethistory(i32) #1

declare dso_local i32 @resetwatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
