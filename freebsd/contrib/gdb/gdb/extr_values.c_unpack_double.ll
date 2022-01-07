; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_unpack_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_unpack_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @unpack_double(%struct.type* %0, i8* %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @CHECK_TYPEDEF(%struct.type* %12)
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @TYPE_CODE(%struct.type* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.type*, %struct.type** %5, align 8
  %17 = call i32 @TYPE_LENGTH(%struct.type* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.type*, %struct.type** %5, align 8
  %19 = call i32 @TYPE_UNSIGNED(%struct.type* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TYPE_CODE_FLT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = call i32 @floatformat_from_type(%struct.type* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @floatformat_is_valid(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  store i32 1, i32* %30, align 4
  store double 0.000000e+00, double* %4, align 8
  br label %46

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.type*, %struct.type** %5, align 8
  %34 = call double @extract_typed_floating(i8* %32, %struct.type* %33)
  store double %34, double* %4, align 8
  br label %46

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call double @unpack_long(%struct.type* %39, i8* %40)
  store double %41, double* %4, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.type*, %struct.type** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call double @unpack_long(%struct.type* %43, i8* %44)
  store double %45, double* %4, align 8
  br label %46

46:                                               ; preds = %42, %38, %31, %29
  %47 = load double, double* %4, align 8
  ret double %47
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @floatformat_is_valid(i32, i8*) #1

declare dso_local i32 @floatformat_from_type(%struct.type*) #1

declare dso_local double @extract_typed_floating(i8*, %struct.type*) #1

declare dso_local double @unpack_long(%struct.type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
