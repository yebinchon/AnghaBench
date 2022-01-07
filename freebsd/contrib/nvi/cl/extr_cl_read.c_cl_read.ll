; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.termios, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.termios = type { i32, i32 }
%struct.timeval = type { i32 }

@CL_STDIN_TTY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@INP_EOF = common dso_local global i32 0, align 4
@INP_OK = common dso_local global i32 0, align 4
@INP_TIMEOUT = common dso_local global i32 0, align 4
@EC_QUOTED = common dso_local global i32 0, align 4
@EC_RAW = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@G_SCRWIN = common dso_local global i32 0, align 4
@SC_SCRIPT = common dso_local global i32 0, align 4
@INP_ERR = common dso_local global i32 0, align 4
@VEOF = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@INP_INTR = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@SC_EX = common dso_local global i32 0, align 4
@ONE_FOR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i8*, i64, i32*, %struct.timeval*)* @cl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_read(%struct.TYPE_14__* %0, i32 %1, i8* %2, i64 %3, i32* %4, %struct.timeval* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.termios, align 4
  %15 = alloca %struct.termios, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.timeval* %5, %struct.timeval** %13, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %17, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = call %struct.TYPE_14__* @CLP(%struct.TYPE_14__* %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %16, align 8
  store i32 0, i32* %22, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %29 = load i32, i32* @CL_STDIN_TTY, align 4
  %30 = call i64 @F_ISSET(%struct.TYPE_14__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @STDIN_FILENO, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @read(i32 %33, i8* %34, i64 %35)
  store i32 %36, i32* %21, align 4
  switch i32 %36, label %40 [
    i32 0, label %37
    i32 -1, label %39
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @INP_EOF, align 4
  store i32 %38, i32* %7, align 4
  br label %243

39:                                               ; preds = %32
  br label %187

40:                                               ; preds = %32
  %41 = load i32, i32* %21, align 4
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INP_OK, align 4
  store i32 %43, i32* %7, align 4
  br label %243

44:                                               ; preds = %6
  %45 = load %struct.timeval*, %struct.timeval** %13, align 8
  %46 = icmp ne %struct.timeval* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = call i32 @FD_ZERO(i32* %18)
  %49 = load i32, i32* @STDIN_FILENO, align 4
  %50 = call i32 @FD_SET(i32 %49, i32* %18)
  %51 = load i32, i32* @STDIN_FILENO, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.timeval*, %struct.timeval** %13, align 8
  %54 = call i32 @select(i32 %52, i32* %18, i32* null, i32* null, %struct.timeval* %53)
  switch i32 %54, label %58 [
    i32 0, label %55
    i32 -1, label %57
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* @INP_TIMEOUT, align 4
  store i32 %56, i32* %7, align 4
  br label %243

57:                                               ; preds = %47
  br label %187

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* @EC_QUOTED, align 4
  %62 = load i32, i32* @EC_RAW, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @LF_ISSET(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = load i32, i32* @STDIN_FILENO, align 4
  %68 = call i32 @tcgetattr(i32 %67, %struct.termios* %14)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %66
  store i32 1, i32* %22, align 4
  %71 = load i32, i32* @EC_QUOTED, align 4
  %72 = call i64 @LF_ISSET(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = bitcast %struct.termios* %15 to i8*
  %76 = bitcast %struct.termios* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  %77 = load i32, i32* @ISIG, align 4
  %78 = xor i32 %77, -1
  %79 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @IXON, align 4
  %83 = load i32, i32* @IXOFF, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %85
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @STDIN_FILENO, align 4
  %90 = load i32, i32* @TCSASOFT, align 4
  %91 = load i32, i32* @TCSADRAIN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @tcsetattr(i32 %89, i32 %92, %struct.termios* %15)
  br label %102

94:                                               ; preds = %70
  %95 = load i32, i32* @STDIN_FILENO, align 4
  %96 = load i32, i32* @TCSASOFT, align 4
  %97 = load i32, i32* @TCSADRAIN, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = call i32 @tcsetattr(i32 %95, i32 %98, %struct.termios* %100)
  br label %102

102:                                              ; preds = %94, %74
  br label %103

103:                                              ; preds = %102, %66, %60
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %105 = load i32, i32* @G_SCRWIN, align 4
  %106 = call i64 @F_ISSET(%struct.TYPE_14__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %159

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %157, %108
  %110 = call i32 @FD_ZERO(i32* %18)
  %111 = load i32, i32* @STDIN_FILENO, align 4
  %112 = call i32 @FD_SET(i32 %111, i32* %18)
  %113 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %113, i32* %20, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = load i32, i32* @SC_SCRIPT, align 4
  %116 = call i64 @F_ISSET(%struct.TYPE_14__* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %109
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @FD_SET(i32 %123, i32* %18)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %118
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %132, %118
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  %142 = call i32 @select(i32 %141, i32* %18, i32* null, i32* null, %struct.timeval* null)
  switch i32 %142, label %146 [
    i32 0, label %143
    i32 -1, label %145
  ]

143:                                              ; preds = %139
  %144 = call i32 (...) @abort() #4
  unreachable

145:                                              ; preds = %139
  br label %187

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* @STDIN_FILENO, align 4
  %149 = call i32 @FD_ISSET(i32 %148, i32* %18)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = call i64 @sscr_input(%struct.TYPE_14__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @INP_ERR, align 4
  store i32 %156, i32* %7, align 4
  br label %243

157:                                              ; preds = %151
  br label %109

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %103
  %160 = load i32, i32* @STDIN_FILENO, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = sub i64 %162, 1
  %164 = call i32 @read(i32 %160, i8* %161, i64 %163)
  store i32 %164, i32* %21, align 4
  switch i32 %164, label %199 [
    i32 0, label %165
    i32 -1, label %186
  ]

165:                                              ; preds = %159
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = icmp slt i32 %169, 50
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i64, i64* @VEOF, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  store i8 %178, i8* %180, align 1
  %181 = load i32*, i32** %12, align 8
  store i32 1, i32* %181, align 4
  %182 = load i32, i32* @INP_OK, align 4
  store i32 %182, i32* %19, align 4
  br label %185

183:                                              ; preds = %165
  %184 = load i32, i32* @INP_EOF, align 4
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %183, %171
  br label %232

186:                                              ; preds = %159
  br label %187

187:                                              ; preds = %186, %145, %57, %39
  %188 = load i32, i32* @errno, align 4
  %189 = load i32, i32* @EINTR, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @INP_INTR, align 4
  store i32 %192, i32* %19, align 4
  br label %198

193:                                              ; preds = %187
  %194 = load i32, i32* @INP_ERR, align 4
  store i32 %194, i32* %19, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %196 = load i32, i32* @M_SYSERR, align 4
  %197 = call i32 @msgq(%struct.TYPE_14__* %195, i32 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %198

198:                                              ; preds = %193, %191
  br label %232

199:                                              ; preds = %159
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %201 = load i32, i32* @SC_EX, align 4
  %202 = call i64 @F_ISSET(%struct.TYPE_14__* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %21, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 10
  br i1 %212, label %213, label %226

213:                                              ; preds = %204
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i64, i64* @VEOF, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %10, align 8
  %222 = load i32, i32* %21, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %21, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  store i8 %220, i8* %225, align 1
  br label %226

226:                                              ; preds = %213, %204, %199
  %227 = load i32, i32* %21, align 4
  %228 = load i32*, i32** %12, align 8
  store i32 %227, i32* %228, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = load i32, i32* @INP_OK, align 4
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %226, %198, %185
  %233 = load i32, i32* %22, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32, i32* @STDIN_FILENO, align 4
  %237 = load i32, i32* @TCSASOFT, align 4
  %238 = load i32, i32* @TCSADRAIN, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @tcsetattr(i32 %236, i32 %239, %struct.termios* %14)
  br label %241

241:                                              ; preds = %235, %232
  %242 = load i32, i32* %19, align 4
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %241, %155, %55, %40, %37
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local %struct.TYPE_14__* @CLP(%struct.TYPE_14__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @sscr_input(%struct.TYPE_14__*) #1

declare dso_local i32 @msgq(%struct.TYPE_14__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
