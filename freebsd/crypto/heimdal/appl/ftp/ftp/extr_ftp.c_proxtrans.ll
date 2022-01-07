; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_proxtrans.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_proxtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@runique = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@type = common dso_local global i32 0, align 4
@unix_server = common dso_local global i64 0, align 8
@unix_proxy = common dso_local global i64 0, align 8
@TYPE_I = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i32 0, align 4
@curtype = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"proxy server does not support third party transfers.\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"No primary connection\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"PORT %s\00", align 1
@pasv = common dso_local global i32 0, align 4
@ptabort = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@abortpt = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@PRELIM = common dso_local global i64 0, align 8
@ptflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"local: %s remote: %s\0A\00", align 1
@SIG_IGN = common dso_local global i32* null, align 8
@proxy = common dso_local global i64 0, align 8
@cpend = common dso_local global i64 0, align 8
@ptabflg = common dso_local global i64 0, align 8
@cin = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"abort\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proxtrans(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load i64, i64* @runique, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* @type, align 4
  store i32 %23, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i64, i64* @unix_server, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* @unix_proxy, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @TYPE_I, align 4
  store i32 %32, i32* %9, align 4
  br label %35

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @TYPE_A, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* @curtype, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @changetype(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %40, %36
  %44 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i64, i64* @COMPLETE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %260

49:                                               ; preds = %43
  %50 = call i32 @pswitch(i32 0)
  %51 = load i32, i32* @connected, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 @pswitch(i32 1)
  store i32 -1, i32* @code, align 4
  br label %260

56:                                               ; preds = %49
  %57 = load i32, i32* @curtype, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @changetype(i32 %61, i32 1)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* @pasv, align 4
  %65 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @COMPLETE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @pswitch(i32 1)
  br label %260

70:                                               ; preds = %63
  %71 = load i32, i32* @ptabort, align 4
  %72 = call i64 @setjmp(i32 %71) #3
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %113

75:                                               ; preds = %70
  %76 = load i32, i32* @SIGINT, align 4
  %77 = load i32*, i32** @abortpt, align 8
  %78 = call i32* @signal(i32 %76, i32* %77)
  store i32* %78, i32** %7, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i64, i64* @PRELIM, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @SIGINT, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32* @signal(i32 %85, i32* %86)
  %88 = call i32 @pswitch(i32 1)
  br label %260

89:                                               ; preds = %75
  %90 = call i32 @sleep(i32 2)
  %91 = call i32 @pswitch(i32 1)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i64, i64* @PRELIM, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %113

100:                                              ; preds = %89
  %101 = load i64, i64* @ptflag, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* @ptflag, align 8
  %103 = call i32 @getreply(i32 0)
  %104 = call i32 @pswitch(i32 0)
  %105 = call i32 @getreply(i32 0)
  %106 = load i32, i32* @SIGINT, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = call i32* @signal(i32 %106, i32* %107)
  %109 = call i32 @pswitch(i32 1)
  store i64 0, i64* @ptflag, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %110, i8* %111)
  br label %260

113:                                              ; preds = %99, %74
  %114 = load i32, i32* @SIGINT, align 4
  %115 = load i32*, i32** @SIG_IGN, align 8
  %116 = call i32* @signal(i32 %114, i32* %115)
  store i64 0, i64* @ptflag, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i64, i64* @proxy, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @pswitch(i32 1)
  br label %135

125:                                              ; preds = %120, %113
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* @proxy, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @pswitch(i32 0)
  br label %134

134:                                              ; preds = %132, %129, %125
  br label %135

135:                                              ; preds = %134, %123
  %136 = load i64, i64* @cpend, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %167, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %167, label %141

141:                                              ; preds = %138
  %142 = load i8*, i8** %11, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %142, i8* %143)
  %145 = load i64, i64* @PRELIM, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = call i32 @pswitch(i32 0)
  %149 = load i64, i64* @cpend, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @abort_remote(i32* null)
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %141
  %155 = call i32 @pswitch(i32 1)
  %156 = load i64, i64* @ptabflg, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 -1, i32* @code, align 4
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i32*, i32** %7, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @SIGINT, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = call i32* @signal(i32 %163, i32* %164)
  br label %166

166:                                              ; preds = %162, %159
  br label %260

167:                                              ; preds = %138, %135
  %168 = load i64, i64* @cpend, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @abort_remote(i32* null)
  br label %172

172:                                              ; preds = %170, %167
  %173 = load i64, i64* @proxy, align 8
  %174 = icmp ne i64 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @pswitch(i32 %176)
  %178 = load i64, i64* @cpend, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %205, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %205, label %183

183:                                              ; preds = %180
  %184 = load i8*, i8** %11, align 8
  %185 = load i8*, i8** %5, align 8
  %186 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %184, i8* %185)
  %187 = load i64, i64* @PRELIM, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %183
  %190 = call i32 @pswitch(i32 0)
  %191 = load i64, i64* @cpend, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = call i32 @abort_remote(i32* null)
  br label %195

195:                                              ; preds = %193, %189
  %196 = call i32 @pswitch(i32 1)
  %197 = load i64, i64* @ptabflg, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 -1, i32* @code, align 4
  br label %200

200:                                              ; preds = %199, %195
  %201 = load i32, i32* @SIGINT, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = call i32* @signal(i32 %201, i32* %202)
  br label %260

204:                                              ; preds = %183
  br label %205

205:                                              ; preds = %204, %180, %172
  %206 = load i64, i64* @cpend, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = call i32 @abort_remote(i32* null)
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i64, i64* @proxy, align 8
  %212 = icmp ne i64 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i32 @pswitch(i32 %214)
  %216 = load i64, i64* @cpend, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %246

218:                                              ; preds = %210
  %219 = call i32 @FD_ZERO(i32* %12)
  %220 = load i32, i32* @cin, align 4
  %221 = call i64 @fileno(i32 %220)
  %222 = load i64, i64* @FD_SETSIZE, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %218
  %227 = load i32, i32* @cin, align 4
  %228 = call i64 @fileno(i32 %227)
  %229 = call i32 @FD_SET(i64 %228, i32* %12)
  %230 = call i32 @empty(i32* %12, i32 10)
  store i32 %230, i32* %10, align 4
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %226
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %232
  %238 = load i64, i64* @ptabflg, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 -1, i32* @code, align 4
  br label %241

241:                                              ; preds = %240, %237
  %242 = call i32 @lostpeer(i32 0)
  br label %243

243:                                              ; preds = %241, %226
  %244 = call i32 @getreply(i32 0)
  %245 = call i32 @getreply(i32 0)
  br label %246

246:                                              ; preds = %243, %210
  %247 = load i64, i64* @proxy, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call i32 @pswitch(i32 0)
  br label %251

251:                                              ; preds = %249, %246
  %252 = call i32 @pswitch(i32 1)
  %253 = load i64, i64* @ptabflg, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 -1, i32* @code, align 4
  br label %256

256:                                              ; preds = %255, %251
  %257 = load i32, i32* @SIGINT, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = call i32* @signal(i32 %257, i32* %258)
  br label %260

260:                                              ; preds = %256, %200, %166, %100, %84, %68, %53, %47
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @changetype(i32, i32) #1

declare dso_local i64 @command(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pswitch(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32* @signal(i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @getreply(i32) #1

declare dso_local i32 @abort_remote(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @fileno(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @empty(i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @lostpeer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
