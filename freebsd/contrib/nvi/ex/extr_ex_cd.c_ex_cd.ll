; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_cd.c_ex_cd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_cd.c_ex_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.passwd = type { i8* }

@F_MODIFIED = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"120|File modified since last complete write; write or use ! to override\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"121|Unable to find home directory location\00", align 1
@O_CDPATH = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"122|New current directory: %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_cd(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @F_MODIFIED, align 4
  %18 = call i64 @F_ISSET(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @E_C_FORCE, align 4
  %25 = call i32 @FL_ISSET(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* @M_ERR, align 4
  %40 = call i32 @msgq(%struct.TYPE_12__* %38, i32 %39, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %254

41:                                               ; preds = %27, %20, %2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %94 [
    i32 0, label %45
    i32 1, label %74
  ]

45:                                               ; preds = %41
  %46 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = call i32 (...) @getuid()
  %50 = call %struct.passwd* @getpwuid(i32 %49)
  store %struct.passwd* %50, %struct.passwd** %6, align 8
  %51 = icmp eq %struct.passwd* %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = load %struct.passwd*, %struct.passwd** %6, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.passwd*, %struct.passwd** %6, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57, %52, %48
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i32, i32* @M_ERR, align 4
  %68 = call i32 @msgq(%struct.TYPE_12__* %66, i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %254

69:                                               ; preds = %57
  %70 = load %struct.passwd*, %struct.passwd** %6, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %69, %45
  br label %96

74:                                               ; preds = %41
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %78, i64 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @INT2CHAR(%struct.TYPE_12__* %75, i8* %82, i32 %90, i8* %91, i64 %92)
  br label %96

94:                                               ; preds = %41
  %95 = call i32 (...) @abort() #3
  unreachable

96:                                               ; preds = %74, %73
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @chdir(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %254

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %168, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %109, i64 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %168, label %118

118:                                              ; preds = %106
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 46
  br i1 %130, label %168, label %131

131:                                              ; preds = %123, %118
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %134, 2
  br i1 %135, label %136, label %169

136:                                              ; preds = %131
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 46
  br i1 %143, label %144, label %169

144:                                              ; preds = %136
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 46
  br i1 %151, label %152, label %169

152:                                              ; preds = %144
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160, %152, %123, %106, %101
  br label %249

169:                                              ; preds = %160, %144, %136, %131
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = load i32, i32* @O_CDPATH, align 4
  %172 = call i8* @O_STR(%struct.TYPE_12__* %170, i32 %171)
  store i8* %172, i8** %11, align 8
  store i8* %172, i8** %10, align 8
  br label %173

173:                                              ; preds = %245, %169
  %174 = load i8*, i8** %10, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 58
  br i1 %182, label %183, label %244

183:                                              ; preds = %178, %173
  %184 = load i8*, i8** %11, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = icmp ult i8* %184, %185
  br i1 %186, label %187, label %235

187:                                              ; preds = %183
  %188 = load i8*, i8** %10, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = icmp ne i64 %192, 1
  br i1 %193, label %199, label %194

194:                                              ; preds = %187
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 46
  br i1 %198, label %199, label %235

199:                                              ; preds = %194, %187
  %200 = load i8*, i8** %10, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  store i32 %202, i32* %8, align 4
  %203 = load i8*, i8** %10, align 8
  store i8 0, i8* %203, align 1
  %204 = load i8*, i8** %11, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = call i8* @join(i8* %204, i8* %205)
  store i8* %206, i8** %12, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %199
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = load i32, i32* @M_SYSERR, align 4
  %211 = call i32 @msgq(%struct.TYPE_12__* %209, i32 %210, i8* null)
  store i32 1, i32* %3, align 4
  br label %254

212:                                              ; preds = %199
  %213 = load i32, i32* %8, align 4
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %10, align 8
  store i8 %214, i8* %215, align 1
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 @chdir(i8* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %212
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @free(i8* %220)
  %222 = call i8* @getcwd(i32* null, i32 0)
  store i8* %222, i8** %12, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = load i32, i32* @M_INFO, align 4
  %227 = load i8*, i8** %12, align 8
  %228 = call i32 @msgq_str(%struct.TYPE_12__* %225, i32 %226, i8* %227, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @free(i8* %229)
  br label %231

231:                                              ; preds = %224, %219
  store i32 0, i32* %3, align 4
  br label %254

232:                                              ; preds = %212
  %233 = load i8*, i8** %12, align 8
  %234 = call i32 @free(i8* %233)
  br label %235

235:                                              ; preds = %232, %194, %183
  %236 = load i8*, i8** %10, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  store i8* %237, i8** %11, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %248

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %178
  br label %245

245:                                              ; preds = %244
  %246 = load i8*, i8** %10, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %10, align 8
  br label %173

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %248, %168
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %251 = load i32, i32* @M_SYSERR, align 4
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 @msgq_str(%struct.TYPE_12__* %250, i32 %251, i8* %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %254

254:                                              ; preds = %249, %231, %208, %100, %65, %37
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i64 @F_ISSET(i32, i32) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_12__*, i8*, i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @chdir(i8*) #1

declare dso_local i8* @O_STR(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i32 @msgq_str(%struct.TYPE_12__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
