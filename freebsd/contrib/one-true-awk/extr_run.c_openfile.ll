; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_openfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"null file name in print or getline\00", align 1
@nfiles = common dso_local global i32 0, align 4
@files = common dso_local global %struct.files* null, align 8
@APPEND = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@FFLUSH = common dso_local global i32 0, align 4
@FOPEN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot grow files for %s and %d files\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@LE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"illegal redirection %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @openfile(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.files*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %84, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @nfiles, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = load %struct.files*, %struct.files** @files, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.files, %struct.files* %25, i64 %27
  %29 = getelementptr inbounds %struct.files, %struct.files* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.files*, %struct.files** @files, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.files, %struct.files* %34, i64 %36
  %38 = getelementptr inbounds %struct.files, %struct.files* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %33, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.files*, %struct.files** @files, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.files, %struct.files* %44, i64 %46
  %48 = getelementptr inbounds %struct.files, %struct.files* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %43, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @APPEND, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.files*, %struct.files** @files, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.files, %struct.files* %56, i64 %58
  %60 = getelementptr inbounds %struct.files, %struct.files* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55, %42
  %65 = load %struct.files*, %struct.files** @files, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.files, %struct.files* %65, i64 %67
  %69 = getelementptr inbounds %struct.files, %struct.files* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %3, align 8
  br label %220

71:                                               ; preds = %55, %51
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @FFLUSH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.files*, %struct.files** @files, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.files, %struct.files* %76, i64 %78
  %80 = getelementptr inbounds %struct.files, %struct.files* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %3, align 8
  br label %220

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %32, %24
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %20

87:                                               ; preds = %20
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @FFLUSH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32* null, i32** %3, align 8
  br label %220

92:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @nfiles, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.files*, %struct.files** @files, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.files, %struct.files* %98, i64 %100
  %102 = getelementptr inbounds %struct.files, %struct.files* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %110

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %93

110:                                              ; preds = %105, %93
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @nfiles, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load i32, i32* @nfiles, align 4
  %116 = load i32, i32* @FOPEN_MAX, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %11, align 4
  %118 = load %struct.files*, %struct.files** @files, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 24
  %122 = trunc i64 %121 to i32
  %123 = call %struct.files* @realloc(%struct.files* %118, i32 %122)
  store %struct.files* %123, %struct.files** %10, align 8
  %124 = load %struct.files*, %struct.files** %10, align 8
  %125 = icmp eq %struct.files* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %114
  %131 = load %struct.files*, %struct.files** %10, align 8
  %132 = load i32, i32* @nfiles, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.files, %struct.files* %131, i64 %133
  %135 = load i32, i32* @FOPEN_MAX, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 24
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memset(%struct.files* %134, i32 0, i32 %138)
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* @nfiles, align 4
  %141 = load %struct.files*, %struct.files** %10, align 8
  store %struct.files* %141, %struct.files** @files, align 8
  br label %142

142:                                              ; preds = %130, %110
  %143 = load i32, i32* @stdout, align 4
  %144 = call i32 @fflush(i32 %143)
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @GT, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i8*, i8** %6, align 8
  %151 = call i32* @fopen(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %151, i32** %9, align 8
  br label %195

152:                                              ; preds = %142
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @APPEND, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i8*, i8** %6, align 8
  %158 = call i32* @fopen(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %158, i32** %9, align 8
  %159 = load i32, i32* @GT, align 4
  store i32 %159, i32* %8, align 4
  br label %194

160:                                              ; preds = %152
  %161 = load i32, i32* %4, align 4
  %162 = icmp eq i32 %161, 124
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %6, align 8
  %165 = call i32* @popen(i8* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %165, i32** %9, align 8
  br label %193

166:                                              ; preds = %160
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @LE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i8*, i8** %6, align 8
  %172 = call i32* @popen(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %172, i32** %9, align 8
  br label %192

173:                                              ; preds = %166
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @LT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load i8*, i8** %6, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32*, i32** @stdin, align 8
  br label %186

183:                                              ; preds = %177
  %184 = load i8*, i8** %6, align 8
  %185 = call i32* @fopen(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %181
  %187 = phi i32* [ %182, %181 ], [ %185, %183 ]
  store i32* %187, i32** %9, align 8
  br label %191

188:                                              ; preds = %173
  %189 = load i32, i32* %4, align 4
  %190 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %188, %186
  br label %192

192:                                              ; preds = %191, %170
  br label %193

193:                                              ; preds = %192, %163
  br label %194

194:                                              ; preds = %193, %156
  br label %195

195:                                              ; preds = %194, %149
  %196 = load i32*, i32** %9, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  %199 = load i8*, i8** %6, align 8
  %200 = call i8* @tostring(i8* %199)
  %201 = load %struct.files*, %struct.files** @files, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.files, %struct.files* %201, i64 %203
  %205 = getelementptr inbounds %struct.files, %struct.files* %204, i32 0, i32 0
  store i8* %200, i8** %205, align 8
  %206 = load i32*, i32** %9, align 8
  %207 = load %struct.files*, %struct.files** @files, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.files, %struct.files* %207, i64 %209
  %211 = getelementptr inbounds %struct.files, %struct.files* %210, i32 0, i32 2
  store i32* %206, i32** %211, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.files*, %struct.files** @files, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.files, %struct.files* %213, i64 %215
  %217 = getelementptr inbounds %struct.files, %struct.files* %216, i32 0, i32 1
  store i32 %212, i32* %217, align 8
  br label %218

218:                                              ; preds = %198, %195
  %219 = load i32*, i32** %9, align 8
  store i32* %219, i32** %3, align 8
  br label %220

220:                                              ; preds = %218, %91, %75, %64
  %221 = load i32*, i32** %3, align 8
  ret i32* %221
}

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.files* @realloc(%struct.files*, i32) #1

declare dso_local i32 @memset(%struct.files*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i8* @tostring(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
