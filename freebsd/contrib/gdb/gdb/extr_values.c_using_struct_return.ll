; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_using_struct_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_using_struct_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Function return type unknown.\00", align 1
@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @using_struct_return(%struct.type* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i32 @TYPE_CODE(%struct.type* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TYPE_CODE_ERROR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TYPE_CODE_VOID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

19:                                               ; preds = %14
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = call i32 @gdbarch_return_value_p(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TYPE_CODE_UNION, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = call i64 @RETURN_VALUE_ON_STACK(%struct.type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.type*, %struct.type** %4, align 8
  %42 = call i32 @USE_STRUCT_CONVENTION(i32 %40, %struct.type* %41)
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %51

44:                                               ; preds = %19
  %45 = load i32, i32* @current_gdbarch, align 4
  %46 = load %struct.type*, %struct.type** %4, align 8
  %47 = call i64 @gdbarch_return_value(i32 %45, %struct.type* %46, i32* null, i32* null, i32* null)
  %48 = load i64, i64* @RETURN_VALUE_STRUCT_CONVENTION, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %43, %39, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gdbarch_return_value_p(i32) #1

declare dso_local i64 @RETURN_VALUE_ON_STACK(%struct.type*) #1

declare dso_local i32 @USE_STRUCT_CONVENTION(i32, %struct.type*) #1

declare dso_local i64 @gdbarch_return_value(i32, %struct.type*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
