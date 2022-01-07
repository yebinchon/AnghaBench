; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64*, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)* }
%struct.TYPE_23__ = type { i64*, i32 }
%struct.TYPE_20__ = type { i64, i64, i64* }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@DBG_NOCACHE = common dso_local global i32 0, align 4
@SC_TINPUT = common dso_local global i32 0, align 4
@_texth = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@DBG_FATAL = common dso_local global i32 0, align 4
@SC_CONV_ERROR = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"324|Conversion error on line %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_get(%struct.TYPE_21__* %0, i64 %1, i32 %2, i64** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64** %3, i64*** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %149

23:                                               ; preds = %5
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %14, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = load i32, i32* @EXM_NOFILEYET, align 4
  %31 = call i32 @ex_emsg(%struct.TYPE_21__* %29, i32* null, i32 %30)
  br label %160

32:                                               ; preds = %23
  %33 = load i32, i32* @DBG_NOCACHE, align 4
  %34 = call i64 @LF_ISSET(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %135

37:                                               ; preds = %32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = load i32, i32* @SC_TINPUT, align 4
  %40 = call i64 @F_ISSET(%struct.TYPE_21__* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %108

42:                                               ; preds = %37
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_20__* @TAILQ_FIRST(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %16, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @_texth, align 4
  %53 = call i64 @TAILQ_LAST(i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_20__*
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %42
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_20__* @TAILQ_FIRST(i32 %67)
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %15, align 8
  br label %69

69:                                               ; preds = %76, %64
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %78 = load i32, i32* @q, align 4
  %79 = call %struct.TYPE_20__* @TAILQ_NEXT(%struct.TYPE_20__* %77, i32 %78)
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %15, align 8
  br label %69

80:                                               ; preds = %69
  %81 = load i64*, i64** %11, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %11, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i64**, i64*** %10, align 8
  %90 = icmp ne i64** %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i64**, i64*** %10, align 8
  store i64* %94, i64** %95, align 8
  br label %96

96:                                               ; preds = %91, %88
  store i32 0, i32* %6, align 4
  br label %242

97:                                               ; preds = %60, %42
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %16, align 8
  %104 = sub nsw i64 %102, %103
  %105 = load i64, i64* %8, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %101, %97
  br label %108

108:                                              ; preds = %107, %37
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %108
  %115 = load i64*, i64** %11, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %11, align 8
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i64**, i64*** %10, align 8
  %124 = icmp ne i64** %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i64**, i64*** %10, align 8
  store i64* %128, i64** %129, align 8
  br label %130

130:                                              ; preds = %125, %122
  store i32 0, i32* %6, align 4
  br label %242

131:                                              ; preds = %108
  %132 = load i64, i64* @OOBLNO, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %36
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i64* %8, i64** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i32 8, i32* %137, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)** %141, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %144, align 8
  %146 = call i32 %142(%struct.TYPE_24__* %145, %struct.TYPE_23__* %13, %struct.TYPE_23__* %12, i32 0)
  switch i32 %146, label %171 [
    i32 -1, label %147
    i32 1, label %148
  ]

147:                                              ; preds = %135
  br label %154

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %22
  %150 = load i32, i32* @DBG_FATAL, align 4
  %151 = call i64 @LF_ISSET(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %147
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @db_err(%struct.TYPE_21__* %155, i64 %156)
  br label %158

158:                                              ; preds = %154, %149
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %194, %159, %28
  %161 = load i64*, i64** %11, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i64*, i64** %11, align 8
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i64**, i64*** %10, align 8
  %167 = icmp ne i64** %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i64**, i64*** %10, align 8
  store i64* null, i64** %169, align 8
  br label %170

170:                                              ; preds = %168, %165
  store i32 1, i32* %6, align 4
  br label %242

171:                                              ; preds = %135
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i64*, i64** %18, align 8
  %178 = load i64, i64* %19, align 8
  %179 = call i64 @FILE2INT(%struct.TYPE_21__* %172, i64* %174, i32 %176, i64* %177, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %171
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = load i32, i32* @SC_CONV_ERROR, align 4
  %184 = call i64 @F_ISSET(%struct.TYPE_21__* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = load i32, i32* @SC_CONV_ERROR, align 4
  %189 = call i32 @F_SET(%struct.TYPE_21__* %187, i32 %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = load i32, i32* @M_ERR, align 4
  %192 = load i64, i64* %8, align 8
  %193 = call i32 @msgq(%struct.TYPE_21__* %190, i32 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %186, %181
  br label %160

195:                                              ; preds = %171
  %196 = load i64*, i64** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = icmp ne i64* %196, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i64, i64* %19, align 8
  %209 = call i32 @BINC_GOTOW(%struct.TYPE_21__* %201, i64* %204, i32 %207, i64 %208)
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 2
  %212 = load i64*, i64** %211, align 8
  %213 = load i64*, i64** %18, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i32 @MEMCPY(i64* %212, i64* %213, i64 %214)
  br label %221

216:                                              ; preds = %195
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 2
  store i64* %218, i64** %220, align 8
  br label %221

221:                                              ; preds = %216, %200
  %222 = load i64, i64* %8, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load i64, i64* %19, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  %228 = load i64*, i64** %11, align 8
  %229 = icmp ne i64* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load i64, i64* %19, align 8
  %232 = load i64*, i64** %11, align 8
  store i64 %231, i64* %232, align 8
  br label %233

233:                                              ; preds = %230, %221
  %234 = load i64**, i64*** %10, align 8
  %235 = icmp ne i64** %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = load i64**, i64*** %10, align 8
  store i64* %239, i64** %240, align 8
  br label %241

241:                                              ; preds = %236, %233
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %241, %170, %130, %96
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i32 @ex_emsg(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @TAILQ_FIRST(i32) #1

declare dso_local i64 @TAILQ_LAST(i32, i32) #1

declare dso_local %struct.TYPE_20__* @TAILQ_NEXT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @db_err(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @FILE2INT(%struct.TYPE_21__*, i64*, i32, i64*, i64) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_21__*, i32, i8*, i64) #1

declare dso_local i32 @BINC_GOTOW(%struct.TYPE_21__*, i64*, i32, i64) #1

declare dso_local i32 @MEMCPY(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
