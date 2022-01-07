; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_search_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_search_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i64, i8*, i32 }

@SEARCH_MSG = common dso_local global i32 0, align 4
@S_EMPTY = common dso_local global i32 0, align 4
@SEARCH_PARSE = common dso_local global i32 0, align 4
@S_NOPREV = common dso_local global i32 0, align 4
@SC_RE_SEARCH = common dso_local global i32 0, align 4
@RE_C_SEARCH = common dso_local global i32 0, align 4
@RE_C_SILENT = common dso_local global i32 0, align 4
@SEARCH_SET = common dso_local global i32 0, align 4
@SEARCH_TAG = common dso_local global i32 0, align 4
@RE_C_TAG = common dso_local global i32 0, align 4
@SEARCH_CSCOPE = common dso_local global i32 0, align 4
@RE_C_CSCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64*, i64, i64**, i32)* @search_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_init(%struct.TYPE_7__* %0, i8* %1, i64* %2, i64 %3, i64** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %40

22:                                               ; preds = %6
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = call i64 @db_last(%struct.TYPE_7__* %23, i64* %14)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %235

27:                                               ; preds = %22
  %28 = load i64, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @SEARCH_MSG, align 4
  %32 = call i64 @LF_ISSET(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i32, i32* @S_EMPTY, align 4
  %37 = call i32 @search_msg(%struct.TYPE_7__* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  store i32 1, i32* %7, align 4
  br label %235

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %6
  %41 = load i32, i32* @SEARCH_PARSE, align 4
  %42 = call i64 @LF_ISSET(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %185

44:                                               ; preds = %40
  %45 = load i64*, i64** %10, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %75

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64**, i64*** %12, align 8
  %53 = icmp ne i64** %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64**, i64*** %12, align 8
  store i64* %56, i64** %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  br label %75

59:                                               ; preds = %48
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %59
  %68 = load i64**, i64*** %12, align 8
  %69 = icmp ne i64** %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64**, i64*** %12, align 8
  store i64* %72, i64** %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %58, %47
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = icmp eq i64* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = load i32, i32* @S_NOPREV, align 4
  %83 = call i32 @search_msg(%struct.TYPE_7__* %81, i32 %82)
  store i32 1, i32* %7, align 4
  br label %235

84:                                               ; preds = %75
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = load i32, i32* @SC_RE_SEARCH, align 4
  %87 = call i32 @F_ISSET(%struct.TYPE_7__* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i32, i32* @RE_C_SEARCH, align 4
  %100 = load i32, i32* @SEARCH_MSG, align 4
  %101 = call i64 @LF_ISSET(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %106

104:                                              ; preds = %89
  %105 = load i32, i32* @RE_C_SILENT, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 0, %103 ], [ %105, %104 ]
  %108 = or i32 %99, %107
  %109 = call i64 @re_compile(%struct.TYPE_7__* %90, i64* %93, i64 %96, i64** null, i64* null, i32* %98, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %235

112:                                              ; preds = %106, %84
  %113 = load i32, i32* @SEARCH_SET, align 4
  %114 = call i64 @LF_ISSET(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  store i32 0, i32* %7, align 4
  br label %235

121:                                              ; preds = %59
  %122 = load i64*, i64** %10, align 8
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %10, align 8
  store i64* %126, i64** %17, align 8
  store i64* %126, i64** %16, align 8
  br label %127

127:                                              ; preds = %166, %121
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %11, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %127
  %132 = load i64*, i64** %16, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131, %127
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64*, i64** %16, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %16, align 8
  br label %144

144:                                              ; preds = %141, %138
  br label %172

145:                                              ; preds = %131
  %146 = load i64, i64* %11, align 8
  %147 = icmp ugt i64 %146, 1
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load i64*, i64** %16, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 92
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i64*, i64** %16, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load i64*, i64** %16, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %16, align 8
  %163 = load i64, i64* %11, align 8
  %164 = add i64 %163, -1
  store i64 %164, i64* %11, align 8
  br label %165

165:                                              ; preds = %160, %153, %148, %145
  br label %166

166:                                              ; preds = %165
  %167 = load i64*, i64** %16, align 8
  %168 = getelementptr inbounds i64, i64* %167, i32 1
  store i64* %168, i64** %16, align 8
  %169 = load i64, i64* %167, align 8
  %170 = load i64*, i64** %17, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 1
  store i64* %171, i64** %17, align 8
  store i64 %169, i64* %170, align 8
  br label %127

172:                                              ; preds = %144
  %173 = load i64**, i64*** %12, align 8
  %174 = icmp ne i64** %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64*, i64** %16, align 8
  %177 = load i64**, i64*** %12, align 8
  store i64* %176, i64** %177, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i64*, i64** %17, align 8
  %180 = load i64*, i64** %10, align 8
  %181 = ptrtoint i64* %179 to i64
  %182 = ptrtoint i64* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 8
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %178, %40
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = load i64*, i64** %10, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  %195 = load i32, i32* @RE_C_SEARCH, align 4
  %196 = load i32, i32* @SEARCH_MSG, align 4
  %197 = call i64 @LF_ISSET(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %185
  br label %202

200:                                              ; preds = %185
  %201 = load i32, i32* @RE_C_SILENT, align 4
  br label %202

202:                                              ; preds = %200, %199
  %203 = phi i32 [ 0, %199 ], [ %201, %200 ]
  %204 = or i32 %195, %203
  %205 = load i32, i32* @SEARCH_TAG, align 4
  %206 = call i64 @LF_ISSET(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @RE_C_TAG, align 4
  br label %211

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %208
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ]
  %213 = or i32 %204, %212
  %214 = load i32, i32* @SEARCH_CSCOPE, align 4
  %215 = call i64 @LF_ISSET(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* @RE_C_CSCOPE, align 4
  br label %220

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = or i32 %213, %221
  %223 = call i64 @re_compile(%struct.TYPE_7__* %186, i64* %187, i64 %188, i64** %190, i64* %192, i32* %194, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 1, i32* %7, align 4
  br label %235

226:                                              ; preds = %220
  %227 = load i32, i32* @SEARCH_SET, align 4
  %228 = call i64 @LF_ISSET(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load i8*, i8** %9, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %230, %226
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %234, %225, %120, %111, %80, %38, %26
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i64 @db_last(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @search_msg(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @re_compile(%struct.TYPE_7__*, i64*, i64, i64**, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
