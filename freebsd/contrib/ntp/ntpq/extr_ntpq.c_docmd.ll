; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_docmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i64, i32* }
%struct.xcmd = type { i32*, i32 (%struct.parse.0*, i32*)* }
%struct.parse.0 = type opaque

@MAXARGS = common dso_local global i32 0, align 4
@docmd.i = internal global i32 0, align 4
@builtins = common dso_local global i32 0, align 4
@opcmds = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"***Command `%s' unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"***Command `%s' ambiguous\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"***Extra arg `%s' ignored\0A\00", align 1
@NO = common dso_local global i32 0, align 4
@OPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"***No file for redirect\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@current_output = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"***Error opening %s: \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32* null, align 8
@interactive = common dso_local global i64 0, align 8
@interrupt_buf = common dso_local global i32 0, align 4
@jump = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\0A >>> command aborted <<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @docmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.parse, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xcmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAXARGS, align 4
  %11 = add nsw i32 1, %10
  %12 = add nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @tokenize(i8* %16, i8** %15, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %248

21:                                               ; preds = %1
  %22 = getelementptr inbounds i8*, i8** %15, i64 0
  %23 = load i8*, i8** %22, align 16
  %24 = load i32, i32* @builtins, align 4
  %25 = load i32, i32* @opcmds, align 4
  %26 = call i32 @findcmd(i8* %23, i32 %24, i32 %25, %struct.xcmd** %7)
  store i32 %26, i32* @docmd.i, align 4
  %27 = load i32, i32* @docmd.i, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32*, i32** @stderr, align 8
  %31 = getelementptr inbounds i8*, i8** %15, i64 0
  %32 = load i8*, i8** %31, align 16
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 1, i32* %8, align 4
  br label %248

34:                                               ; preds = %21
  %35 = load i32, i32* @docmd.i, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** @stderr, align 8
  %39 = getelementptr inbounds i8*, i8** %15, i64 0
  %40 = load i8*, i8** %39, align 16
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 1, i32* %8, align 4
  br label %248

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @MAXARGS, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @docmd.i, align 4
  br label %46

46:                                               ; preds = %57, %43
  %47 = load i32, i32* @docmd.i, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32*, i32** @stderr, align 8
  %52 = load i32, i32* @docmd.i, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %15, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @docmd.i, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @docmd.i, align 4
  br label %46

60:                                               ; preds = %46
  %61 = getelementptr inbounds i8*, i8** %15, i64 0
  %62 = load i8*, i8** %61, align 16
  %63 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  store i64 0, i64* %64, align 8
  store i32 0, i32* @docmd.i, align 4
  br label %65

65:                                               ; preds = %148, %60
  %66 = load i32, i32* @docmd.i, align 4
  %67 = load i32, i32* @MAXARGS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %71 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @docmd.i, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NO, align 4
  %78 = icmp ne i32 %76, %77
  br label %79

79:                                               ; preds = %69, %65
  %80 = phi i1 [ false, %65 ], [ %78, %69 ]
  br i1 %80, label %81, label %151

81:                                               ; preds = %79
  %82 = load i32, i32* @docmd.i, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %88 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @docmd.i, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @OPT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %86
  %98 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %99 = load i32*, i32** @stderr, align 8
  %100 = call i32 @printusage(%struct.xcmd* %98, i32* %99)
  store i32 1, i32* %8, align 4
  br label %248

101:                                              ; preds = %86
  br label %151

102:                                              ; preds = %81
  %103 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %104 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @docmd.i, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @OPT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load i32, i32* @docmd.i, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %15, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 62
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %151

123:                                              ; preds = %113, %102
  %124 = load i32, i32* @docmd.i, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %15, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %130 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @docmd.i, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @docmd.i, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @getarg(i8* %128, i32 %135, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %123
  store i32 1, i32* %8, align 4
  br label %248

144:                                              ; preds = %123
  %145 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @docmd.i, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @docmd.i, align 4
  br label %65

151:                                              ; preds = %122, %101, %79
  %152 = load i32, i32* @docmd.i, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @docmd.i, align 4
  %154 = load i32, i32* @docmd.i, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %206

157:                                              ; preds = %151
  %158 = load i32, i32* @docmd.i, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %15, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 62
  br i1 %164, label %165, label %206

165:                                              ; preds = %157
  %166 = load i32, i32* @docmd.i, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %15, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load i32, i32* @docmd.i, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %15, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8* %179, i8** %9, align 8
  br label %195

180:                                              ; preds = %165
  %181 = load i32, i32* @docmd.i, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @docmd.i, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %15, i64 %188
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %9, align 8
  br label %194

191:                                              ; preds = %180
  %192 = load i32*, i32** @stderr, align 8
  %193 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %248

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %174
  %196 = load i8*, i8** %9, align 8
  %197 = call i32* @fopen(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %197, i32** @current_output, align 8
  %198 = load i32*, i32** @current_output, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i32*, i32** @stderr, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %202)
  %204 = call i32 @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %248

205:                                              ; preds = %195
  br label %208

206:                                              ; preds = %157, %151
  %207 = load i32*, i32** @stdout, align 8
  store i32* %207, i32** @current_output, align 8
  br label %208

208:                                              ; preds = %206, %205
  %209 = load i64, i64* @interactive, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %208
  %212 = load i32, i32* @interrupt_buf, align 4
  %213 = call i32 @SETJMP(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %211
  store i32 1, i32* @jump, align 4
  %216 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %217 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %216, i32 0, i32 1
  %218 = load i32 (%struct.parse.0*, i32*)*, i32 (%struct.parse.0*, i32*)** %217, align 8
  %219 = bitcast %struct.parse* %5 to %struct.parse.0*
  %220 = load i32*, i32** @current_output, align 8
  %221 = call i32 %218(%struct.parse.0* %219, i32* %220)
  store i32 0, i32* @jump, align 4
  br label %229

222:                                              ; preds = %211
  %223 = load i32*, i32** @current_output, align 8
  %224 = call i32 @fflush(i32* %223)
  %225 = load i32*, i32** @stderr, align 8
  %226 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %225)
  %227 = load i32*, i32** @stderr, align 8
  %228 = call i32 @fflush(i32* %227)
  br label %229

229:                                              ; preds = %222, %215
  br label %237

230:                                              ; preds = %208
  store i32 0, i32* @jump, align 4
  %231 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %232 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %231, i32 0, i32 1
  %233 = load i32 (%struct.parse.0*, i32*)*, i32 (%struct.parse.0*, i32*)** %232, align 8
  %234 = bitcast %struct.parse* %5 to %struct.parse.0*
  %235 = load i32*, i32** @current_output, align 8
  %236 = call i32 %233(%struct.parse.0* %234, i32* %235)
  br label %237

237:                                              ; preds = %230, %229
  %238 = load i32*, i32** @current_output, align 8
  %239 = icmp ne i32* null, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load i32*, i32** @stdout, align 8
  %242 = load i32*, i32** @current_output, align 8
  %243 = icmp ne i32* %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32*, i32** @current_output, align 8
  %246 = call i32 @fclose(i32* %245)
  store i32* null, i32** @current_output, align 8
  br label %247

247:                                              ; preds = %244, %240, %237
  store i32 0, i32* %8, align 4
  br label %248

248:                                              ; preds = %247, %200, %191, %143, %97, %37, %29, %20
  %249 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %8, align 4
  switch i32 %250, label %252 [
    i32 0, label %251
    i32 1, label %251
  ]

251:                                              ; preds = %248, %248
  ret void

252:                                              ; preds = %248
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tokenize(i8*, i8**, i32*) #2

declare dso_local i32 @findcmd(i8*, i32, i32, %struct.xcmd**) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @printusage(%struct.xcmd*, i32*) #2

declare dso_local i32 @getarg(i8*, i32, i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @SETJMP(i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
