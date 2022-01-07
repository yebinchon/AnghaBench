; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@builtin_type_long = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"First argument of `-' is a pointer and second argument is neither\0Aan integer nor a pointer of the same type.\00", align 1
@BINOP_SUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_sub(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %10 = load %struct.value*, %struct.value** %4, align 8
  %11 = call i32 @COERCE_NUMBER(%struct.value* %10)
  %12 = load %struct.value*, %struct.value** %5, align 8
  %13 = call i32 @COERCE_NUMBER(%struct.value* %12)
  %14 = load %struct.value*, %struct.value** %4, align 8
  %15 = call i32 @VALUE_TYPE(%struct.value* %14)
  %16 = call %struct.type* @check_typedef(i32 %15)
  store %struct.type* %16, %struct.type** %6, align 8
  %17 = load %struct.value*, %struct.value** %5, align 8
  %18 = call i32 @VALUE_TYPE(%struct.value* %17)
  %19 = call %struct.type* @check_typedef(i32 %18)
  store %struct.type* %19, %struct.type** %7, align 8
  %20 = load %struct.type*, %struct.type** %6, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_PTR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %2
  %25 = load %struct.type*, %struct.type** %7, align 8
  %26 = call i64 @TYPE_CODE(%struct.type* %25)
  %27 = load i64, i64* @TYPE_CODE_INT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.type*, %struct.type** %6, align 8
  %31 = call i32 @find_size_for_pointer_math(%struct.type* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.type*, %struct.type** %6, align 8
  %33 = load %struct.value*, %struct.value** %4, align 8
  %34 = call i64 @value_as_address(%struct.value* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.value*, %struct.value** %5, align 8
  %37 = call i32 @value_as_long(%struct.value* %36)
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %34, %39
  %41 = call %struct.value* @value_from_pointer(%struct.type* %32, i64 %40)
  store %struct.value* %41, %struct.value** %3, align 8
  br label %81

42:                                               ; preds = %24
  %43 = load %struct.type*, %struct.type** %7, align 8
  %44 = call i64 @TYPE_CODE(%struct.type* %43)
  %45 = load i64, i64* @TYPE_CODE_PTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load %struct.type*, %struct.type** %6, align 8
  %49 = call i32 @TYPE_TARGET_TYPE(%struct.type* %48)
  %50 = call %struct.type* @check_typedef(i32 %49)
  %51 = call i64 @TYPE_LENGTH(%struct.type* %50)
  %52 = load %struct.type*, %struct.type** %7, align 8
  %53 = call i32 @TYPE_TARGET_TYPE(%struct.type* %52)
  %54 = call %struct.type* @check_typedef(i32 %53)
  %55 = call i64 @TYPE_LENGTH(%struct.type* %54)
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load %struct.type*, %struct.type** %6, align 8
  %59 = call i32 @TYPE_TARGET_TYPE(%struct.type* %58)
  %60 = call %struct.type* @check_typedef(i32 %59)
  %61 = call i64 @TYPE_LENGTH(%struct.type* %60)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @builtin_type_long, align 4
  %64 = load %struct.value*, %struct.value** %4, align 8
  %65 = call i32 @value_as_long(%struct.value* %64)
  %66 = load %struct.value*, %struct.value** %5, align 8
  %67 = call i32 @value_as_long(%struct.value* %66)
  %68 = sub nsw i32 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %68, %69
  %71 = call %struct.value* @value_from_longest(i32 %63, i32 %70)
  store %struct.value* %71, %struct.value** %3, align 8
  br label %81

72:                                               ; preds = %47, %42
  %73 = call i32 @error(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %2
  %77 = load %struct.value*, %struct.value** %4, align 8
  %78 = load %struct.value*, %struct.value** %5, align 8
  %79 = load i32, i32* @BINOP_SUB, align 4
  %80 = call %struct.value* @value_binop(%struct.value* %77, %struct.value* %78, i32 %79)
  store %struct.value* %80, %struct.value** %3, align 8
  br label %81

81:                                               ; preds = %76, %57, %29
  %82 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %82
}

declare dso_local i32 @COERCE_NUMBER(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @find_size_for_pointer_math(%struct.type*) #1

declare dso_local %struct.value* @value_from_pointer(%struct.type*, i64) #1

declare dso_local i64 @value_as_address(%struct.value*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_binop(%struct.value*, %struct.value*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
