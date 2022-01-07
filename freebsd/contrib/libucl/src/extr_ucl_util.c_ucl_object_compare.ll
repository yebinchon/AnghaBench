; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@vec1 = common dso_local global %struct.TYPE_19__* null, align 8
@vec2 = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_object_compare(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %3, align 4
  br label %197

26:                                               ; preds = %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %194 [
    i32 129, label %30
    i32 132, label %58
    i32 131, label %58
    i32 128, label %58
    i32 133, label %64
    i32 134, label %70
    i32 130, label %150
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = call i32 @ucl_object_tostring(%struct.TYPE_18__* %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = call i32 @ucl_object_tostring(%struct.TYPE_18__* %46)
  %48 = call i32 @strcmp(i32 %45, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %57

49:                                               ; preds = %38, %30
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %43
  br label %195

58:                                               ; preds = %26, %26, %26
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = call i32 @ucl_object_todouble(%struct.TYPE_18__* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = call i32 @ucl_object_todouble(%struct.TYPE_18__* %61)
  %63 = sub nsw i32 %60, %62
  store i32 %63, i32* %9, align 4
  br label %195

64:                                               ; preds = %26
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i32 @ucl_object_toboolean(%struct.TYPE_18__* %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = call i32 @ucl_object_toboolean(%struct.TYPE_18__* %67)
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %9, align 4
  br label %195

70:                                               ; preds = %26
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %70
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %141

83:                                               ; preds = %78
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vec1, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = call i32 @UCL_ARRAY_GET(%struct.TYPE_19__* %84, %struct.TYPE_18__* %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vec2, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = call i32 @UCL_ARRAY_GET(%struct.TYPE_19__* %87, %struct.TYPE_18__* %88)
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %137, %83
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vec1, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %140

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vec1, align 8
  %98 = load i32, i32* %10, align 4
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.TYPE_18__* @kv_A(i32 %100, i32 %98)
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %6, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vec2, align 8
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_18__* @kv_A(i32 %105, i32 %103)
  store %struct.TYPE_18__* %106, %struct.TYPE_18__** %7, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = icmp eq %struct.TYPE_18__* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = icmp ne %struct.TYPE_18__* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -1, i32* %3, align 4
  br label %197

113:                                              ; preds = %109, %96
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = icmp eq %struct.TYPE_18__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = icmp ne %struct.TYPE_18__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %197

120:                                              ; preds = %116, %113
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = icmp ne %struct.TYPE_18__* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %125 = icmp ne %struct.TYPE_18__* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %129 = call i32 @ucl_object_compare(%struct.TYPE_18__* %127, %struct.TYPE_18__* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %140

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %123, %120
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %90

140:                                              ; preds = %132, %90
  br label %149

141:                                              ; preds = %78, %70
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %144, %147
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %141, %140
  br label %195

150:                                              ; preds = %26
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %150
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %183, %163
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = call %struct.TYPE_18__* @ucl_object_iterate(%struct.TYPE_18__* %165, i32** %8, i32 1)
  store %struct.TYPE_18__* %166, %struct.TYPE_18__** %6, align 8
  %167 = icmp ne %struct.TYPE_18__* %166, null
  br i1 %167, label %168, label %184

168:                                              ; preds = %164
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = call i32 @ucl_object_key(%struct.TYPE_18__* %170)
  %172 = call %struct.TYPE_18__* @ucl_object_lookup(%struct.TYPE_18__* %169, i32 %171)
  store %struct.TYPE_18__* %172, %struct.TYPE_18__** %7, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = icmp eq %struct.TYPE_18__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 1, i32* %9, align 4
  br label %184

176:                                              ; preds = %168
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = call i32 @ucl_object_compare(%struct.TYPE_18__* %177, %struct.TYPE_18__* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %184

183:                                              ; preds = %176
  br label %164

184:                                              ; preds = %182, %175, %164
  br label %193

185:                                              ; preds = %158, %150
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %188, %191
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %185, %184
  br label %195

194:                                              ; preds = %26
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %193, %149, %64, %58, %57
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %119, %112, %18
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_18__*) #1

declare dso_local i32 @ucl_object_todouble(%struct.TYPE_18__*) #1

declare dso_local i32 @ucl_object_toboolean(%struct.TYPE_18__*) #1

declare dso_local i32 @UCL_ARRAY_GET(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @kv_A(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ucl_object_iterate(%struct.TYPE_18__*, i32**, i32) #1

declare dso_local %struct.TYPE_18__* @ucl_object_lookup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
