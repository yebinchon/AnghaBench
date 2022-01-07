; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_sexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_sexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_SECURE = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"289|Shell expansions not supported when the secure edit option is set\00", align 1
@O_SHELL = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"118|Error: execl: %s\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"119|I/O error: %s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"304|Shell expansion failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i64*)* @argv_sexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argv_sexp(i32* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @O_SECURE, align 4
  %25 = call i64 @O_ISSET(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @M_ERR, align 4
  %30 = call i32 @msgq(i32* %28, i32 %29, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %250

31:                                               ; preds = %4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @O_SHELL, align 4
  %34 = call i8* @O_STR(i32* %32, i32 %33)
  store i8* %34, i8** %20, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %19, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %20, align 8
  store i8* %39, i8** %19, align 8
  br label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %19, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %19, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %17, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  store i32* null, i32** %11, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 -1, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 -1, i32* %49, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %51 = call i64 @pipe(i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @M_SYSERR, align 4
  %56 = call i32 @msgq(i32* %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %250

57:                                               ; preds = %43
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @fdopen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %11, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @M_SYSERR, align 4
  %65 = call i32 @msgq(i32* %63, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %72

66:                                               ; preds = %57
  %67 = call i64 (...) @vfork()
  store i64 %67, i64* %12, align 8
  switch i64 %67, label %126 [
    i64 -1, label %68
    i64 0, label %96
  ]

68:                                               ; preds = %66
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @M_SYSERR, align 4
  %71 = call i32 @msgq(i32* %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @fclose(i32* %76)
  br label %87

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %75
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  store i32 1, i32* %5, align 4
  br label %250

96:                                               ; preds = %66
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @STDOUT_FILENO, align 4
  %100 = call i32 @dup2(i32 %98, i32 %99)
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* @STDERR_FILENO, align 4
  %108 = call i32 @close(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i32 @STRLEN(i8* %111)
  %113 = add nsw i32 %112, 1
  %114 = load i8*, i8** %21, align 8
  %115 = load i64, i64* %22, align 8
  %116 = call i32 @INT2CHAR(i32* %109, i8* %110, i32 %113, i8* %114, i64 %115)
  %117 = load i8*, i8** %20, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i8*, i8** %21, align 8
  %120 = call i32 @execl(i8* %117, i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* null)
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @M_SYSERR, align 4
  %123 = load i8*, i8** %20, align 8
  %124 = call i32 @msgq_str(i32* %121, i32 %122, i8* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %125 = call i32 @_exit(i32 127) #3
  unreachable

126:                                              ; preds = %66
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %17, align 8
  store i8* %131, i8** %18, align 8
  store i64 0, i64* %14, align 8
  %132 = load i32, i32* @EOF, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %158, %130
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @GETC(i32* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* @EOF, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = load i64, i64* %13, align 8
  %140 = icmp ult i64 %139, 5
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load i32*, i32** %6, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = load i64*, i64** %8, align 8
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = load i64, i64* %146, align 8
  %148 = mul i64 %147, 2
  %149 = call i32 @ADD_SPACE_GOTOW(i32* %142, i8* %143, i64 %145, i64 %148)
  %150 = load i8*, i8** %17, align 8
  %151 = load i64, i64* %14, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %18, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %14, align 8
  %156 = sub i64 %154, %155
  store i64 %156, i64* %13, align 8
  br label %157

157:                                              ; preds = %141, %138
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %15, align 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %18, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %18, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i64, i64* %13, align 8
  %164 = sub i64 %163, 1
  store i64 %164, i64* %13, align 8
  %165 = load i64, i64* %14, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %14, align 8
  br label %133

167:                                              ; preds = %133
  %168 = load i8*, i8** %18, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = icmp ugt i8* %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %167
  %172 = load i8*, i8** %18, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 -1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 10
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load i8*, i8** %18, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 -1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 13
  br i1 %182, label %183, label %188

183:                                              ; preds = %177, %171
  %184 = load i8*, i8** %18, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %18, align 8
  %186 = load i64, i64* %14, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %14, align 8
  br label %188

188:                                              ; preds = %183, %177, %167
  %189 = load i8*, i8** %18, align 8
  store i8 0, i8* %189, align 1
  %190 = load i64, i64* %14, align 8
  %191 = load i64*, i64** %9, align 8
  store i64 %190, i64* %191, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = load i8**, i8*** %7, align 8
  store i8* %192, i8** %193, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i64 @ferror(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %203

198:                                              ; preds = %188
  %199 = load i32*, i32** %11, align 8
  %200 = call i64 @fclose(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202, %197
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* @M_ERR, align 4
  %206 = load i8*, i8** %19, align 8
  %207 = call i32 @msgq_str(i32* %204, i32 %205, i8* %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %208

208:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  br label %210

209:                                              ; preds = %198
  store i32 2, i32* %10, align 4
  br label %210

210:                                              ; preds = %209, %208
  %211 = load i32*, i32** %6, align 8
  %212 = load i64, i64* %12, align 8
  %213 = load i8*, i8** %19, align 8
  %214 = call i64 @proc_wait(i32* %211, i64 %212, i8* %213, i32 1, i32 0)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i32 1, i32* %10, align 4
  br label %217

217:                                              ; preds = %216, %210
  %218 = load i8*, i8** %17, align 8
  store i8* %218, i8** %18, align 8
  br label %219

219:                                              ; preds = %229, %217
  %220 = load i64, i64* %14, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load i8*, i8** %18, align 8
  %224 = load i8, i8* %223, align 1
  %225 = call i32 @cmdskip(i8 signext %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  br label %234

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228
  %230 = load i8*, i8** %18, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %18, align 8
  %232 = load i64, i64* %14, align 8
  %233 = add i64 %232, -1
  store i64 %233, i64* %14, align 8
  br label %219

234:                                              ; preds = %227, %219
  %235 = load i64, i64* %14, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i32 1, i32* %10, align 4
  br label %238

238:                                              ; preds = %237, %234
  %239 = load i32, i32* %10, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* @M_ERR, align 4
  %244 = call i32 @msgq(i32* %242, i32 %243, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 0, i32 1
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %245, %95, %53, %27
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i64 @O_ISSET(i32*, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i8* @O_STR(i32*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @vfork(...) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @INT2CHAR(i32*, i8*, i32, i8*, i64) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msgq_str(i32*, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @GETC(i32*) #1

declare dso_local i32 @ADD_SPACE_GOTOW(i32*, i8*, i64, i64) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @proc_wait(i32*, i64, i8*, i32, i32) #1

declare dso_local i32 @cmdskip(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
