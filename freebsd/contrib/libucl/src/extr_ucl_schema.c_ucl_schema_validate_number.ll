; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.ucl_schema_error = type { i32 }

@UCL_FLOAT = common dso_local global i64 0, align 8
@UCL_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"multipleOf\00", align 1
@UCL_SCHEMA_INVALID_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"multipleOf must be greater than zero\00", align 1
@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"number %.4f is not multiple of %.4f, remainder is %.7f\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exclusiveMaximum\00", align 1
@UCL_BOOLEAN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"number is too big: %.3f, maximum is: %.3f\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"exclusiveMinimum\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"number is too small: %.3f, minimum is: %.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.ucl_schema_error*)* @ucl_schema_validate_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_number(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.ucl_schema_error* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.ucl_schema_error*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %6, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store double 0x3C9CD2B297D889BC, double* %14, align 8
  br label %15

15:                                               ; preds = %177, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call %struct.TYPE_12__* @ucl_object_iterate(%struct.TYPE_12__* %19, i32** %9, i32 1)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %7, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %178

24:                                               ; preds = %22
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UCL_FLOAT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UCL_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = call i32 @ucl_object_key(%struct.TYPE_12__* %37)
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = call double @ucl_object_todouble(%struct.TYPE_12__* %42)
  store double %43, double* %12, align 8
  %44 = load double, double* %12, align 8
  %45 = fcmp ole double %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %48 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_12__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %47, i32 %48, %struct.TYPE_12__* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %178

51:                                               ; preds = %41
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call double @ucl_object_todouble(%struct.TYPE_12__* %52)
  store double %53, double* %13, align 8
  %54 = load double, double* %13, align 8
  %55 = load double, double* %12, align 8
  %56 = call i32 @remainder(double %54, double %55)
  %57 = call double @fabs(i32 %56)
  %58 = fcmp ogt double %57, 0x3C9CD2B297D889BC
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %61 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = load double, double* %13, align 8
  %64 = load double, double* %12, align 8
  %65 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_12__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %60, i32 %61, %struct.TYPE_12__* %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), double %63, double %64)
  store i32 0, i32* %10, align 4
  br label %178

66:                                               ; preds = %51
  br label %177

67:                                               ; preds = %36, %30
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UCL_FLOAT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @UCL_INT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %73, %67
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = call i32 @ucl_object_key(%struct.TYPE_12__* %80)
  %82 = call i64 @strcmp(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = call double @ucl_object_todouble(%struct.TYPE_12__* %85)
  store double %86, double* %12, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call %struct.TYPE_12__* @ucl_object_lookup(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %8, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UCL_BOOLEAN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = call i32 @ucl_object_toboolean(%struct.TYPE_12__* %98)
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %97, %91, %84
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = call double @ucl_object_todouble(%struct.TYPE_12__* %101)
  store double %102, double* %13, align 8
  %103 = load double, double* %13, align 8
  %104 = load double, double* %12, align 8
  %105 = fcmp ogt double %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load double, double* %13, align 8
  %111 = load double, double* %12, align 8
  %112 = fcmp oge double %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109, %100
  %114 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %115 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = load double, double* %13, align 8
  %118 = load double, double* %12, align 8
  %119 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_12__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %114, i32 %115, %struct.TYPE_12__* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), double %117, double %118)
  store i32 0, i32* %10, align 4
  br label %178

120:                                              ; preds = %109, %106
  br label %176

121:                                              ; preds = %79, %73
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UCL_FLOAT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @UCL_INT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %175

133:                                              ; preds = %127, %121
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = call i32 @ucl_object_key(%struct.TYPE_12__* %134)
  %136 = call i64 @strcmp(i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %133
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = call double @ucl_object_todouble(%struct.TYPE_12__* %139)
  store double %140, double* %12, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = call %struct.TYPE_12__* @ucl_object_lookup(%struct.TYPE_12__* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %8, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = icmp ne %struct.TYPE_12__* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @UCL_BOOLEAN, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = call i32 @ucl_object_toboolean(%struct.TYPE_12__* %152)
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %151, %145, %138
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = call double @ucl_object_todouble(%struct.TYPE_12__* %155)
  store double %156, double* %13, align 8
  %157 = load double, double* %13, align 8
  %158 = load double, double* %12, align 8
  %159 = fcmp olt double %157, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load double, double* %13, align 8
  %165 = load double, double* %12, align 8
  %166 = fcmp ole double %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %163, %154
  %168 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %169 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = load double, double* %13, align 8
  %172 = load double, double* %12, align 8
  %173 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_12__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %168, i32 %169, %struct.TYPE_12__* %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), double %171, double %172)
  store i32 0, i32* %10, align 4
  br label %178

174:                                              ; preds = %163, %160
  br label %175

175:                                              ; preds = %174, %133, %127
  br label %176

176:                                              ; preds = %175, %120
  br label %177

177:                                              ; preds = %176, %66
  br label %15

178:                                              ; preds = %167, %113, %59, %46, %22
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_12__* @ucl_object_iterate(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_12__*) #1

declare dso_local double @ucl_object_todouble(%struct.TYPE_12__*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_12__*, i8*, ...) #1

declare dso_local double @fabs(i32) #1

declare dso_local i32 @remainder(double, double) #1

declare dso_local %struct.TYPE_12__* @ucl_object_lookup(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ucl_object_toboolean(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
