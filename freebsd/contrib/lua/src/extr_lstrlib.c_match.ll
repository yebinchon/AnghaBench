; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@CAP_POSITION = common dso_local global i32 0, align 4
@CAP_UNFINISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i8*, i8*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @luaL_error(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %3
  br label %22

22:                                               ; preds = %224, %205, %186, %154, %141, %91, %21
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %23, %26
  br i1 %27, label %28, label %231

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %160 [
    i32 40, label %32
    i32 41, label %53
    i32 36, label %59
    i32 128, label %78
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 41
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i32, i32* @CAP_POSITION, align 4
  %44 = call i8* @start_capture(%struct.TYPE_11__* %39, i8* %40, i8* %42, i32 %43)
  store i8* %44, i8** %5, align 8
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i32, i32* @CAP_UNFINISHED, align 4
  %51 = call i8* @start_capture(%struct.TYPE_11__* %46, i8* %47, i8* %49, i32 %50)
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %45, %38
  br label %230

53:                                               ; preds = %28
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i8* @end_capture(%struct.TYPE_11__* %54, i8* %55, i8* %57)
  store i8* %58, i8** %5, align 8
  br label %230

59:                                               ; preds = %28
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %161

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i8*, i8** %5, align 8
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ null, %75 ]
  store i8* %77, i8** %5, align 8
  br label %230

78:                                               ; preds = %28
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %158 [
    i32 98, label %83
    i32 102, label %95
    i32 48, label %144
    i32 49, label %144
    i32 50, label %144
    i32 51, label %144
    i32 52, label %144
    i32 53, label %144
    i32 54, label %144
    i32 55, label %144
    i32 56, label %144
    i32 57, label %144
  ]

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = call i8* @matchbalance(%struct.TYPE_11__* %84, i8* %85, i8* %87)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %6, align 8
  br label %22

94:                                               ; preds = %83
  br label %159

95:                                               ; preds = %78
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %6, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 91
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @luaL_error(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i8* @classend(%struct.TYPE_11__* %108, i8* %109)
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = icmp eq i8* %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %122

117:                                              ; preds = %107
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  br label %122

122:                                              ; preds = %117, %116
  %123 = phi i32 [ 0, %116 ], [ %121, %117 ]
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %8, align 1
  %125 = load i8, i8* %8, align 1
  %126 = call i32 @uchar(i8 signext %125)
  %127 = load i8*, i8** %6, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = call i32 @matchbracketclass(i32 %126, i8* %127, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %122
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @uchar(i8 signext %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  %139 = call i32 @matchbracketclass(i32 %135, i8* %136, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i8*, i8** %7, align 8
  store i8* %142, i8** %6, align 8
  br label %22

143:                                              ; preds = %132, %122
  store i8* null, i8** %5, align 8
  br label %159

144:                                              ; preds = %78, %78, %78, %78, %78, %78, %78, %78, %78, %78
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @uchar(i8 signext %149)
  %151 = call i8* @match_capture(%struct.TYPE_11__* %145, i8* %146, i32 %150)
  store i8* %151, i8** %5, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %6, align 8
  br label %22

157:                                              ; preds = %144
  br label %159

158:                                              ; preds = %78
  br label %161

159:                                              ; preds = %157, %143, %94
  br label %230

160:                                              ; preds = %28
  br label %161

161:                                              ; preds = %160, %158, %66
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i8* @classend(%struct.TYPE_11__* %162, i8* %163)
  store i8* %164, i8** %9, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @singlematch(%struct.TYPE_11__* %165, i8* %166, i8* %167, i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %191, label %171

171:                                              ; preds = %161
  %172 = load i8*, i8** %9, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 42
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %9, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 63
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 45
  br i1 %185, label %186, label %189

186:                                              ; preds = %181, %176, %171
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8* %188, i8** %6, align 8
  br label %22

189:                                              ; preds = %181
  store i8* null, i8** %5, align 8
  br label %190

190:                                              ; preds = %189
  br label %229

191:                                              ; preds = %161
  %192 = load i8*, i8** %9, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  switch i32 %194, label %224 [
    i32 63, label %195
    i32 43, label %209
    i32 42, label %212
    i32 45, label %218
  ]

195:                                              ; preds = %191
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8*, i8** %9, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = call i8* @match(%struct.TYPE_11__* %196, i8* %198, i8* %200)
  store i8* %201, i8** %10, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = load i8*, i8** %10, align 8
  store i8* %204, i8** %5, align 8
  br label %208

205:                                              ; preds = %195
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  store i8* %207, i8** %6, align 8
  br label %22

208:                                              ; preds = %203
  br label %228

209:                                              ; preds = %191
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %5, align 8
  br label %212

212:                                              ; preds = %191, %209
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i8* @max_expand(%struct.TYPE_11__* %213, i8* %214, i8* %215, i8* %216)
  store i8* %217, i8** %5, align 8
  br label %228

218:                                              ; preds = %191
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %220 = load i8*, i8** %5, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = call i8* @min_expand(%struct.TYPE_11__* %219, i8* %220, i8* %221, i8* %222)
  store i8* %223, i8** %5, align 8
  br label %228

224:                                              ; preds = %191
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %5, align 8
  %227 = load i8*, i8** %9, align 8
  store i8* %227, i8** %6, align 8
  br label %22

228:                                              ; preds = %218, %212, %208
  br label %229

229:                                              ; preds = %228, %190
  br label %230

230:                                              ; preds = %229, %159, %76, %53, %52
  br label %231

231:                                              ; preds = %230, %22
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load i8*, i8** %5, align 8
  ret i8* %236
}

declare dso_local i32 @luaL_error(i32, i8*) #1

declare dso_local i8* @start_capture(%struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i8* @end_capture(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i8* @matchbalance(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i8* @classend(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @matchbracketclass(i32, i8*, i8*) #1

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i8* @match_capture(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @singlematch(%struct.TYPE_11__*, i8*, i8*, i8*) #1

declare dso_local i8* @max_expand(%struct.TYPE_11__*, i8*, i8*, i8*) #1

declare dso_local i8* @min_expand(%struct.TYPE_11__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
