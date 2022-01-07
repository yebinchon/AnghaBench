; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_allocate_space_in_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_allocate_space_in_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@NAME_OF_MALLOC = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"No memory available to program now: you need to start the target first\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"No memory available to program: call to malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_allocate_space_in_inferior(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @NAME_OF_MALLOC, align 4
  %6 = call %struct.value* @find_function_in_inferior(i32 %5)
  store %struct.value* %6, %struct.value** %4, align 8
  %7 = load i32, i32* @builtin_type_int, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.value* @value_from_longest(i32 %7, i32 %8)
  store %struct.value* %9, %struct.value** %3, align 8
  %10 = load %struct.value*, %struct.value** %4, align 8
  %11 = call %struct.value* @call_function_by_hand(%struct.value* %10, i32 1, %struct.value** %3)
  store %struct.value* %11, %struct.value** %4, align 8
  %12 = load %struct.value*, %struct.value** %4, align 8
  %13 = call i64 @value_logical_not(%struct.value* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @target_has_execution, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %22

20:                                               ; preds = %15
  %21 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %24
}

declare dso_local %struct.value* @find_function_in_inferior(i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

declare dso_local i64 @value_logical_not(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
