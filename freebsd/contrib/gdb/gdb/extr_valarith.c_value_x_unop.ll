; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_x_unop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_x_unop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Can't do that unary op on that type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"operator__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Invalid unary operation specified.\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"member function %s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_x_unop(%struct.value* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.value**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [13 x i8], align 1
  %12 = alloca [13 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.value*, %struct.value** %5, align 8
  %17 = call i32 @COERCE_REF(%struct.value* %16)
  %18 = load %struct.value*, %struct.value** %5, align 8
  %19 = call i32 @COERCE_ENUM(%struct.value* %18)
  %20 = load %struct.value*, %struct.value** %5, align 8
  %21 = call i32 @VALUE_TYPE(%struct.value* %20)
  %22 = call i32 @check_typedef(i32 %21)
  %23 = call i64 @TYPE_CODE(i32 %22)
  %24 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %3
  %29 = call i64 @alloca(i32 32)
  %30 = inttoptr i64 %29 to %struct.value**
  store %struct.value** %30, %struct.value*** %8, align 8
  %31 = load %struct.value*, %struct.value** %5, align 8
  %32 = call %struct.value* @value_addr(%struct.value* %31)
  %33 = load %struct.value**, %struct.value*** %8, align 8
  %34 = getelementptr inbounds %struct.value*, %struct.value** %33, i64 1
  store %struct.value* %32, %struct.value** %34, align 8
  %35 = load %struct.value**, %struct.value*** %8, align 8
  %36 = getelementptr inbounds %struct.value*, %struct.value** %35, i64 2
  store %struct.value* null, %struct.value** %36, align 8
  store i32 1, i32* %14, align 4
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %11, i64 0, i64 0
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = getelementptr inbounds [13 x i8], [13 x i8]* %11, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %9, align 8
  %41 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %10, align 8
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %86 [
    i32 128, label %46
    i32 129, label %49
    i32 130, label %52
    i32 131, label %63
    i32 133, label %74
    i32 135, label %77
    i32 132, label %80
    i32 134, label %83
  ]

46:                                               ; preds = %28
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %88

49:                                               ; preds = %28
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %88

52:                                               ; preds = %28
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @builtin_type_int, align 4
  %56 = call %struct.value* @value_from_longest(i32 %55, i32 0)
  %57 = load %struct.value**, %struct.value*** %8, align 8
  %58 = getelementptr inbounds %struct.value*, %struct.value** %57, i64 2
  store %struct.value* %56, %struct.value** %58, align 8
  %59 = load %struct.value**, %struct.value*** %8, align 8
  %60 = getelementptr inbounds %struct.value*, %struct.value** %59, i64 3
  store %struct.value* null, %struct.value** %60, align 8
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %88

63:                                               ; preds = %28
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @builtin_type_int, align 4
  %67 = call %struct.value* @value_from_longest(i32 %66, i32 0)
  %68 = load %struct.value**, %struct.value*** %8, align 8
  %69 = getelementptr inbounds %struct.value*, %struct.value** %68, i64 2
  store %struct.value* %67, %struct.value** %69, align 8
  %70 = load %struct.value**, %struct.value*** %8, align 8
  %71 = getelementptr inbounds %struct.value*, %struct.value** %70, i64 3
  store %struct.value* null, %struct.value** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %88

74:                                               ; preds = %28
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @strcpy(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %88

77:                                               ; preds = %28
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %88

80:                                               ; preds = %28
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strcpy(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %88

83:                                               ; preds = %28
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strcpy(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %88

86:                                               ; preds = %28
  %87 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83, %80, %77, %74, %63, %52, %49, %46
  %89 = load %struct.value**, %struct.value*** %8, align 8
  %90 = getelementptr inbounds %struct.value*, %struct.value** %89, i64 1
  %91 = getelementptr inbounds [13 x i8], [13 x i8]* %11, i64 0, i64 0
  %92 = call %struct.value* @value_struct_elt(%struct.value** %5, %struct.value** %90, i8* %91, i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %93 = load %struct.value**, %struct.value*** %8, align 8
  %94 = getelementptr inbounds %struct.value*, %struct.value** %93, i64 0
  store %struct.value* %92, %struct.value** %94, align 8
  %95 = load %struct.value**, %struct.value*** %8, align 8
  %96 = getelementptr inbounds %struct.value*, %struct.value** %95, i64 0
  %97 = load %struct.value*, %struct.value** %96, align 8
  %98 = icmp ne %struct.value* %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %88
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.value**, %struct.value*** %8, align 8
  %104 = getelementptr inbounds %struct.value*, %struct.value** %103, i64 0
  %105 = load %struct.value*, %struct.value** %104, align 8
  %106 = load %struct.value**, %struct.value*** %8, align 8
  %107 = getelementptr inbounds %struct.value*, %struct.value** %106, i64 1
  store %struct.value* %105, %struct.value** %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %14, align 4
  %110 = load %struct.value**, %struct.value*** %8, align 8
  %111 = getelementptr inbounds %struct.value*, %struct.value** %110, i32 1
  store %struct.value** %111, %struct.value*** %8, align 8
  br label %112

112:                                              ; preds = %102, %99
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.value**, %struct.value*** %8, align 8
  %118 = getelementptr inbounds %struct.value*, %struct.value** %117, i64 0
  %119 = load %struct.value*, %struct.value** %118, align 8
  %120 = call i32 @VALUE_TYPE(%struct.value* %119)
  %121 = call i32 @check_typedef(i32 %120)
  %122 = call %struct.type* @TYPE_TARGET_TYPE(i32 %121)
  store %struct.type* %122, %struct.type** %15, align 8
  %123 = load %struct.type*, %struct.type** %15, align 8
  %124 = load %struct.value*, %struct.value** %5, align 8
  %125 = call i32 @VALUE_LVAL(%struct.value* %124)
  %126 = call %struct.value* @value_zero(%struct.type* %123, i32 %125)
  store %struct.value* %126, %struct.value** %4, align 8
  br label %138

127:                                              ; preds = %112
  %128 = load %struct.value**, %struct.value*** %8, align 8
  %129 = getelementptr inbounds %struct.value*, %struct.value** %128, i64 0
  %130 = load %struct.value*, %struct.value** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.value**, %struct.value*** %8, align 8
  %133 = getelementptr inbounds %struct.value*, %struct.value** %132, i64 1
  %134 = call %struct.value* @call_function_by_hand(%struct.value* %130, i32 %131, %struct.value** %133)
  store %struct.value* %134, %struct.value** %4, align 8
  br label %138

135:                                              ; preds = %88
  %136 = getelementptr inbounds [13 x i8], [13 x i8]* %11, i64 0, i64 0
  %137 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %136)
  store %struct.value* null, %struct.value** %4, align 8
  br label %138

138:                                              ; preds = %135, %127, %116
  %139 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %139
}

declare dso_local i32 @COERCE_REF(%struct.value*) #1

declare dso_local i32 @COERCE_ENUM(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local %struct.value* @value_struct_elt(%struct.value**, %struct.value**, i8*, i32*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(i32) #1

declare dso_local %struct.value* @value_zero(%struct.type*, i32) #1

declare dso_local i32 @VALUE_LVAL(%struct.value*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
