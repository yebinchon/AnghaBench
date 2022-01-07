; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_print_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_print_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i64, %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i32, i32)*, i32 (i8, i32, i32)* }
%struct.TYPE_3__ = type { i32, i8*, i32, i64 }

@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@UCL_OBJECT_NEED_KEY_ESCAPE = common dso_local global i32 0, align 4
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@UCL_EMIT_YAML = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ucl_emitter_context*, %struct.TYPE_3__*, i32)* @ucl_emitter_print_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_emitter_print_key(i32 %0, %struct.ucl_emitter_context* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_emitter_context*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucl_emitter_functions*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ucl_emitter_context* %1, %struct.ucl_emitter_context** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %11 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 1
  %12 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  store %struct.ucl_emitter_functions* %12, %struct.ucl_emitter_functions** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %187

16:                                               ; preds = %4
  %17 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %18 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UCL_OBJECT_NEED_KEY_ESCAPE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %37 = call i32 @ucl_elt_string_write_json(i8* %32, i32 %35, %struct.ucl_emitter_context* %36)
  br label %52

38:                                               ; preds = %22
  %39 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %40 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %39, i32 0, i32 1
  %41 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %49 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %41(i8* %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %38, %29
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UCL_OBJECT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UCL_ARRAY, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %66 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %65, i32 0, i32 1
  %67 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %66, align 8
  %68 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %69 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %67(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %70)
  br label %80

72:                                               ; preds = %58, %52
  %73 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %74 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %73, i32 0, i32 2
  %75 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %74, align 8
  %76 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %77 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %75(i8 signext 32, i32 1, i32 %78)
  br label %80

80:                                               ; preds = %72, %64
  br label %187

81:                                               ; preds = %16
  %82 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %83 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UCL_EMIT_YAML, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %144

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @UCL_OBJECT_NEED_KEY_ESCAPE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %107 = call i32 @ucl_elt_string_write_json(i8* %102, i32 %105, %struct.ucl_emitter_context* %106)
  br label %136

108:                                              ; preds = %92, %87
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %115 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %114, i32 0, i32 1
  %116 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %124 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %116(i8* %119, i32 %122, i32 %125)
  br label %135

127:                                              ; preds = %108
  %128 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %129 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %128, i32 0, i32 1
  %130 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %129, align 8
  %131 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %132 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %130(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %133)
  br label %135

135:                                              ; preds = %127, %113
  br label %136

136:                                              ; preds = %135, %99
  %137 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %138 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %137, i32 0, i32 1
  %139 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %138, align 8
  %140 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %141 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %139(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %142)
  br label %186

144:                                              ; preds = %81
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %157 = call i32 @ucl_elt_string_write_json(i8* %152, i32 %155, %struct.ucl_emitter_context* %156)
  br label %166

158:                                              ; preds = %144
  %159 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %160 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %159, i32 0, i32 1
  %161 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %160, align 8
  %162 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %163 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 %161(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %164)
  br label %166

166:                                              ; preds = %158, %149
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %171 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %170, i32 0, i32 2
  %172 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %171, align 8
  %173 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %174 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %172(i8 signext 58, i32 1, i32 %175)
  br label %185

177:                                              ; preds = %166
  %178 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %179 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %178, i32 0, i32 1
  %180 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %179, align 8
  %181 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %182 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %180(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %183)
  br label %185

185:                                              ; preds = %177, %169
  br label %186

186:                                              ; preds = %185, %136
  br label %187

187:                                              ; preds = %15, %186, %80
  ret void
}

declare dso_local i32 @ucl_elt_string_write_json(i8*, i32, %struct.ucl_emitter_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
