; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_cast_into_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_cast_into_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_COMPLEX = common dso_local global i64 0, align 8
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@not_lval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot cast non-number to complex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.value*)* @cast_into_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @cast_into_complex(%struct.type* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %10)
  store %struct.type* %11, %struct.type** %6, align 8
  %12 = load %struct.value*, %struct.value** %5, align 8
  %13 = call %struct.type* @VALUE_TYPE(%struct.value* %12)
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_COMPLEX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load %struct.value*, %struct.value** %5, align 8
  %19 = call %struct.type* @VALUE_TYPE(%struct.value* %18)
  %20 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %19)
  store %struct.type* %20, %struct.type** %7, align 8
  %21 = load %struct.type*, %struct.type** %7, align 8
  %22 = call %struct.value* @allocate_value(%struct.type* %21)
  store %struct.value* %22, %struct.value** %8, align 8
  %23 = load %struct.type*, %struct.type** %7, align 8
  %24 = call %struct.value* @allocate_value(%struct.type* %23)
  store %struct.value* %24, %struct.value** %9, align 8
  %25 = load %struct.value*, %struct.value** %8, align 8
  %26 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %25)
  %27 = load %struct.value*, %struct.value** %5, align 8
  %28 = call i64 @VALUE_CONTENTS(%struct.value* %27)
  %29 = load %struct.type*, %struct.type** %7, align 8
  %30 = call i64 @TYPE_LENGTH(%struct.type* %29)
  %31 = call i32 @memcpy(i32 %26, i64 %28, i64 %30)
  %32 = load %struct.value*, %struct.value** %9, align 8
  %33 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %32)
  %34 = load %struct.value*, %struct.value** %5, align 8
  %35 = call i64 @VALUE_CONTENTS(%struct.value* %34)
  %36 = load %struct.type*, %struct.type** %7, align 8
  %37 = call i64 @TYPE_LENGTH(%struct.type* %36)
  %38 = add nsw i64 %35, %37
  %39 = load %struct.type*, %struct.type** %7, align 8
  %40 = call i64 @TYPE_LENGTH(%struct.type* %39)
  %41 = call i32 @memcpy(i32 %33, i64 %38, i64 %40)
  %42 = load %struct.value*, %struct.value** %8, align 8
  %43 = load %struct.value*, %struct.value** %9, align 8
  %44 = load %struct.type*, %struct.type** %4, align 8
  %45 = call %struct.value* @value_literal_complex(%struct.value* %42, %struct.value* %43, %struct.type* %44)
  store %struct.value* %45, %struct.value** %3, align 8
  br label %68

46:                                               ; preds = %2
  %47 = load %struct.value*, %struct.value** %5, align 8
  %48 = call %struct.type* @VALUE_TYPE(%struct.value* %47)
  %49 = call i64 @TYPE_CODE(%struct.type* %48)
  %50 = load i64, i64* @TYPE_CODE_FLT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.value*, %struct.value** %5, align 8
  %54 = call %struct.type* @VALUE_TYPE(%struct.value* %53)
  %55 = call i64 @TYPE_CODE(%struct.type* %54)
  %56 = load i64, i64* @TYPE_CODE_INT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %46
  %59 = load %struct.value*, %struct.value** %5, align 8
  %60 = load %struct.type*, %struct.type** %6, align 8
  %61 = load i32, i32* @not_lval, align 4
  %62 = call %struct.value* @value_zero(%struct.type* %60, i32 %61)
  %63 = load %struct.type*, %struct.type** %4, align 8
  %64 = call %struct.value* @value_literal_complex(%struct.value* %59, %struct.value* %62, %struct.type* %63)
  store %struct.value* %64, %struct.value** %3, align 8
  br label %68

65:                                               ; preds = %52
  %66 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %17, %58, %67
  %69 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %69
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.value* @value_literal_complex(%struct.value*, %struct.value*, %struct.type*) #1

declare dso_local %struct.value* @value_zero(%struct.type*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
