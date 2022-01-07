; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_from_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_from_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unexpected type encountered for floating constant.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_from_double(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call %struct.value* @allocate_value(%struct.type* %9)
  store %struct.value* %10, %struct.value** %5, align 8
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call %struct.type* @check_typedef(%struct.type* %11)
  store %struct.type* %12, %struct.type** %6, align 8
  %13 = load %struct.type*, %struct.type** %6, align 8
  %14 = call i32 @TYPE_CODE(%struct.type* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.type*, %struct.type** %6, align 8
  %16 = call i32 @TYPE_LENGTH(%struct.type* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @TYPE_CODE_FLT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.value*, %struct.value** %5, align 8
  %22 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %21)
  %23 = load %struct.type*, %struct.type** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @store_typed_floating(i32 %22, %struct.type* %23, i32 %24)
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %29
}

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @store_typed_floating(i32, %struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
