; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_BOOL = common dso_local global i64 0, align 8
@builtin_type_int = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Argument to negate operation not a number.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_neg(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %6 = load %struct.value*, %struct.value** %3, align 8
  %7 = call %struct.type* @VALUE_TYPE(%struct.value* %6)
  store %struct.type* %7, %struct.type** %5, align 8
  %8 = load %struct.value*, %struct.value** %3, align 8
  %9 = call i32 @COERCE_REF(%struct.value* %8)
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = call i32 @COERCE_ENUM(%struct.value* %10)
  %12 = load %struct.value*, %struct.value** %3, align 8
  %13 = call %struct.type* @VALUE_TYPE(%struct.value* %12)
  %14 = call %struct.type* @check_typedef(%struct.type* %13)
  store %struct.type* %14, %struct.type** %4, align 8
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_FLT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = load %struct.value*, %struct.value** %3, align 8
  %22 = call i32 @value_as_double(%struct.value* %21)
  %23 = sub nsw i32 0, %22
  %24 = call %struct.value* @value_from_double(%struct.type* %20, i32 %23)
  store %struct.value* %24, %struct.value** %2, align 8
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30, %25
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = call i64 @TYPE_LENGTH(%struct.type* %36)
  %38 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %39 = call i64 @TYPE_LENGTH(%struct.type* %38)
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %42, %struct.type** %5, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = load %struct.value*, %struct.value** %3, align 8
  %46 = call i32 @value_as_long(%struct.value* %45)
  %47 = sub nsw i32 0, %46
  %48 = call %struct.value* @value_from_longest(%struct.type* %44, i32 %47)
  store %struct.value* %48, %struct.value** %2, align 8
  br label %51

49:                                               ; preds = %30
  %50 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.value* null, %struct.value** %2, align 8
  br label %51

51:                                               ; preds = %49, %43, %19
  %52 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %52
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @COERCE_REF(%struct.value*) #1

declare dso_local i32 @COERCE_ENUM(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_from_double(%struct.type*, i32) #1

declare dso_local i32 @value_as_double(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
