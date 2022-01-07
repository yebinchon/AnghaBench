; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@TYPE_CODE_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Second argument of 'IN' has wrong type\00", align 1
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_CHAR = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@TYPE_CODE_BOOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"First argument of 'IN' has wrong type\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"First argument of 'IN' not in range\00", align 1
@LA_BOOL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_in(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %8 = load %struct.value*, %struct.value** %4, align 8
  %9 = call i32 @VALUE_TYPE(%struct.value* %8)
  %10 = call %struct.type* @check_typedef(i32 %9)
  store %struct.type* %10, %struct.type** %6, align 8
  %11 = load %struct.value*, %struct.value** %3, align 8
  %12 = call i32 @VALUE_TYPE(%struct.value* %11)
  %13 = call %struct.type* @check_typedef(i32 %12)
  store %struct.type* %13, %struct.type** %7, align 8
  %14 = load %struct.type*, %struct.type** %7, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.type*, %struct.type** %7, align 8
  %20 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %19)
  store %struct.type* %20, %struct.type** %7, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_SET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.type*, %struct.type** %7, align 8
  %30 = call i64 @TYPE_CODE(%struct.type* %29)
  %31 = load i64, i64* @TYPE_CODE_INT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.type*, %struct.type** %7, align 8
  %35 = call i64 @TYPE_CODE(%struct.type* %34)
  %36 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.type*, %struct.type** %7, align 8
  %40 = call i64 @TYPE_CODE(%struct.type* %39)
  %41 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.type*, %struct.type** %7, align 8
  %45 = call i64 @TYPE_CODE(%struct.type* %44)
  %46 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43, %38, %33, %28
  %51 = load %struct.type*, %struct.type** %6, align 8
  %52 = load %struct.value*, %struct.value** %4, align 8
  %53 = call i32 @VALUE_CONTENTS(%struct.value* %52)
  %54 = load %struct.value*, %struct.value** %3, align 8
  %55 = call i32 @value_as_long(%struct.value* %54)
  %56 = call i32 @value_bit_index(%struct.type* %51, i32 %53, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* @LA_BOOL_TYPE, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.value* @value_from_longest(i32 %62, i32 %63)
  ret %struct.value* %64
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @value_bit_index(%struct.type*, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
