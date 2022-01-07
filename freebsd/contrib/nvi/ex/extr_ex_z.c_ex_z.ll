; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_z.c_ex_z.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_z.c_ex_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@E_C_COUNT = common dso_local global i32 0, align 4
@O_WINDOW = common dso_local global i32 0, align 4
@ABSMARK1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"----------------------------------------\0A\00", align 1
@E_ADDR_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_z(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = call i32 @NEEDFILE(%struct.TYPE_20__* %11, %struct.TYPE_22__* %12)
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @E_C_COUNT, align 4
  %18 = call i32 @FL_ISSET(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = load i32, i32* @O_WINDOW, align 4
  %27 = call i32 @O_VAL(%struct.TYPE_20__* %25, i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %20
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FL_ISSET(i32 %36, i32 135)
  switch i32 %37, label %177 [
    i32 132, label %38
    i32 131, label %67
    i32 130, label %86
    i32 129, label %120
    i32 128, label %186
  ]

38:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sub nsw i32 %44, %46
  %48 = add nsw i32 %47, 1
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %198

67:                                               ; preds = %29
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 1, %76 ]
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %198

86:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ %96, %93 ], [ 1, %97 ]
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = load i32, i32* @ABSMARK1, align 4
  %119 = call i32 @mark_set(%struct.TYPE_20__* %117, i32 %118, %struct.TYPE_21__* %6, i32 1)
  br label %198

120:                                              ; preds = %29
  store i32 1, i32* %10, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sdiv i32 %122, 2
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %128, %129
  br label %132

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ %130, %127 ], [ 1, %131 ]
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = call i64 @ex_pr(%struct.TYPE_20__* %142, %struct.TYPE_22__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %233

147:                                              ; preds = %132
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = call i32 @ex_puts(%struct.TYPE_20__* %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %8, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  store i32 %150, i32* %156, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %159 = call i64 @ex_pr(%struct.TYPE_20__* %157, %struct.TYPE_22__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %233

162:                                              ; preds = %147
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = call i32 @ex_puts(%struct.TYPE_20__* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 4
  br label %198

177:                                              ; preds = %29
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = load i32, i32* @E_ADDR_DEF, align 4
  %180 = call i32 @F_ISSET(%struct.TYPE_22__* %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %29, %185
  store i32 1, i32* %10, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %191, %192
  %194 = sub nsw i32 %193, 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 4
  br label %198

198:                                              ; preds = %186, %162, %98, %77, %56
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %198
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %203 = call i64 @db_last(%struct.TYPE_20__* %202, i32* %9)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %3, align 4
  br label %233

206:                                              ; preds = %201
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %213, %206
  br label %219

219:                                              ; preds = %218, %198
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = call i64 @ex_pr(%struct.TYPE_20__* %220, %struct.TYPE_22__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 1, i32* %3, align 4
  br label %233

225:                                              ; preds = %219
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %228, %225
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %224, %205, %161, %146
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i32 @O_VAL(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @mark_set(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @ex_pr(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ex_puts(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @db_last(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
