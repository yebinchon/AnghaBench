; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_as_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_as_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@TYPE_CODE_METHOD = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_as_address(%struct.value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %4 = load %struct.value*, %struct.value** %3, align 8
  %5 = call i32 @VALUE_TYPE(%struct.value* %4)
  %6 = call i64 @TYPE_CODE(i32 %5)
  %7 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = call i32 @VALUE_TYPE(%struct.value* %10)
  %12 = call i64 @TYPE_CODE(i32 %11)
  %13 = load i64, i64* @TYPE_CODE_METHOD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load %struct.value*, %struct.value** %3, align 8
  %17 = call i32 @VALUE_ADDRESS(%struct.value* %16)
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %9
  %19 = load %struct.value*, %struct.value** %3, align 8
  %20 = call i32 @COERCE_ARRAY(%struct.value* %19)
  %21 = load %struct.value*, %struct.value** %3, align 8
  %22 = call i32 @VALUE_TYPE(%struct.value* %21)
  %23 = call i64 @TYPE_CODE(i32 %22)
  %24 = load i64, i64* @TYPE_CODE_PTR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.value*, %struct.value** %3, align 8
  %28 = call i32 @VALUE_TYPE(%struct.value* %27)
  %29 = call i64 @TYPE_CODE(i32 %28)
  %30 = load i64, i64* @TYPE_CODE_REF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = call i64 (...) @INTEGER_TO_ADDRESS_P()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.value*, %struct.value** %3, align 8
  %37 = call i32 @VALUE_TYPE(%struct.value* %36)
  %38 = load %struct.value*, %struct.value** %3, align 8
  %39 = call i32 @VALUE_CONTENTS(%struct.value* %38)
  %40 = call i32 @INTEGER_TO_ADDRESS(i32 %37, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %32, %26, %18
  %42 = load %struct.value*, %struct.value** %3, align 8
  %43 = call i32 @VALUE_TYPE(%struct.value* %42)
  %44 = load %struct.value*, %struct.value** %3, align 8
  %45 = call i32 @VALUE_CONTENTS(%struct.value* %44)
  %46 = call i32 @unpack_long(i32 %43, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %35, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @COERCE_ARRAY(%struct.value*) #1

declare dso_local i64 @INTEGER_TO_ADDRESS_P(...) #1

declare dso_local i32 @INTEGER_TO_ADDRESS(i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @unpack_long(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
