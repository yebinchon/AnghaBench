; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_from_longest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_value_from_longest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Unexpected type (%d) encountered for integer constant.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_from_longest(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call %struct.value* @allocate_value(%struct.type* %8)
  store %struct.value* %9, %struct.value** %5, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_LENGTH(%struct.type* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %31 [
    i32 128, label %16
    i32 132, label %19
    i32 134, label %19
    i32 133, label %19
    i32 135, label %19
    i32 130, label %19
    i32 129, label %25
    i32 131, label %25
  ]

16:                                               ; preds = %10
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call %struct.type* @check_typedef(%struct.type* %17)
  store %struct.type* %18, %struct.type** %3, align 8
  br label %10

19:                                               ; preds = %10, %10, %10, %10, %10
  %20 = load %struct.value*, %struct.value** %5, align 8
  %21 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @store_signed_integer(i32 %21, i32 %22, i32 %23)
  br label %34

25:                                               ; preds = %10, %10
  %26 = load %struct.value*, %struct.value** %5, align 8
  %27 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %26)
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @store_typed_address(i32 %27, %struct.type* %28, i32 %29)
  br label %34

31:                                               ; preds = %10
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %25, %19
  %35 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %35
}

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @store_signed_integer(i32, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @store_typed_address(i32, %struct.type*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
