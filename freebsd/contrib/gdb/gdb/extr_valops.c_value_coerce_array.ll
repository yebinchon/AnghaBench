; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_coerce_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_coerce_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@lval_memory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Attempt to take address of value not located in memory.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_coerce_array(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %4 = load %struct.value*, %struct.value** %2, align 8
  %5 = call i32 @VALUE_TYPE(%struct.value* %4)
  %6 = call %struct.type* @check_typedef(i32 %5)
  store %struct.type* %6, %struct.type** %3, align 8
  %7 = load %struct.value*, %struct.value** %2, align 8
  %8 = call i64 @VALUE_LVAL(%struct.value* %7)
  %9 = load i64, i64* @lval_memory, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i32 @TYPE_TARGET_TYPE(%struct.type* %14)
  %16 = call i32 @lookup_pointer_type(i32 %15)
  %17 = load %struct.value*, %struct.value** %2, align 8
  %18 = call i64 @VALUE_ADDRESS(%struct.value* %17)
  %19 = load %struct.value*, %struct.value** %2, align 8
  %20 = call i64 @VALUE_OFFSET(%struct.value* %19)
  %21 = add nsw i64 %18, %20
  %22 = call %struct.value* @value_from_pointer(i32 %16, i64 %21)
  ret %struct.value* %22
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_from_pointer(i32, i64) #1

declare dso_local i32 @lookup_pointer_type(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
