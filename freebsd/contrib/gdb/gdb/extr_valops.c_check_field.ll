; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_check_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_check_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_MEMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"not implemented: member type in check_field\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Internal error: `this' is not an aggregate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_field(%struct.value* %0, i8* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.value*, %struct.value** %3, align 8
  %7 = call i32 @COERCE_ARRAY(%struct.value* %6)
  %8 = load %struct.value*, %struct.value** %3, align 8
  %9 = call %struct.type* @VALUE_TYPE(%struct.value* %8)
  store %struct.type* %9, %struct.type** %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = call i32 @CHECK_TYPEDEF(%struct.type* %11)
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_PTR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.type*, %struct.type** %5, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_REF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %26

23:                                               ; preds = %17, %10
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %24)
  store %struct.type* %25, %struct.type** %5, align 8
  br label %10

26:                                               ; preds = %22
  %27 = load %struct.type*, %struct.type** %5, align 8
  %28 = call i64 @TYPE_CODE(%struct.type* %27)
  %29 = load i64, i64* @TYPE_CODE_MEMBER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.type*, %struct.type** %5, align 8
  %35 = call i64 @TYPE_CODE(%struct.type* %34)
  %36 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = call i64 @TYPE_CODE(%struct.type* %39)
  %41 = load i64, i64* @TYPE_CODE_UNION, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38, %33
  %46 = load %struct.type*, %struct.type** %5, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @check_field_in(%struct.type* %46, i8* %47)
  ret i32 %48
}

declare dso_local i32 @COERCE_ARRAY(%struct.value*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @check_field_in(%struct.type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
