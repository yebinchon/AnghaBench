; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_function_in_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_function_in_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"\22%s\22 exists in this program but is not a function.\00", align 1
@builtin_type_char = common dso_local global %struct.type* null, align 8
@target_has_execution = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"evaluation of this expression requires the target program to be active\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"evaluation of this expression requires the program to have a function \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @find_function_in_inferior(i8* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.minimal_symbol*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @VAR_DOMAIN, align 4
  %10 = call %struct.symbol* @lookup_symbol(i8* %8, i32 0, i32 %9, i32 0, i32* null)
  store %struct.symbol* %10, %struct.symbol** %4, align 8
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = icmp ne %struct.symbol* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.symbol*, %struct.symbol** %4, align 8
  %15 = call i64 @SYMBOL_CLASS(%struct.symbol* %14)
  %16 = load i64, i64* @LOC_BLOCK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = call %struct.value* @value_of_variable(%struct.symbol* %22, i32* null)
  store %struct.value* %23, %struct.value** %2, align 8
  br label %51

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %25, i32* null, i32* null)
  store %struct.minimal_symbol* %26, %struct.minimal_symbol** %5, align 8
  %27 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %28 = icmp ne %struct.minimal_symbol* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.type*, %struct.type** @builtin_type_char, align 8
  %31 = call %struct.type* @lookup_pointer_type(%struct.type* %30)
  store %struct.type* %31, %struct.type** %6, align 8
  %32 = load %struct.type*, %struct.type** %6, align 8
  %33 = call %struct.type* @lookup_function_type(%struct.type* %32)
  store %struct.type* %33, %struct.type** %6, align 8
  %34 = load %struct.type*, %struct.type** %6, align 8
  %35 = call %struct.type* @lookup_pointer_type(%struct.type* %34)
  store %struct.type* %35, %struct.type** %6, align 8
  %36 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %37 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.type*, %struct.type** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.value* @value_from_pointer(%struct.type* %38, i32 %39)
  store %struct.value* %40, %struct.value** %2, align 8
  br label %51

41:                                               ; preds = %24
  %42 = load i32, i32* @target_has_execution, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %21, %29, %50
  %52 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %52
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @value_of_variable(%struct.symbol*, i32*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.type* @lookup_function_type(%struct.type*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local %struct.value* @value_from_pointer(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
