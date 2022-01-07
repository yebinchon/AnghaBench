; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_literal_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_literal_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_literal_complex(%struct.value* %0, %struct.value* %1, %struct.type* %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  store %struct.type* %2, %struct.type** %6, align 8
  %9 = load %struct.type*, %struct.type** %6, align 8
  %10 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %9)
  store %struct.type* %10, %struct.type** %8, align 8
  %11 = load %struct.type*, %struct.type** %6, align 8
  %12 = call %struct.value* @allocate_value(%struct.type* %11)
  store %struct.value* %12, %struct.value** %7, align 8
  %13 = load %struct.type*, %struct.type** %8, align 8
  %14 = load %struct.value*, %struct.value** %4, align 8
  %15 = call %struct.value* @value_cast(%struct.type* %13, %struct.value* %14)
  store %struct.value* %15, %struct.value** %4, align 8
  %16 = load %struct.type*, %struct.type** %8, align 8
  %17 = load %struct.value*, %struct.value** %5, align 8
  %18 = call %struct.value* @value_cast(%struct.type* %16, %struct.value* %17)
  store %struct.value* %18, %struct.value** %5, align 8
  %19 = load %struct.value*, %struct.value** %7, align 8
  %20 = call i64 @VALUE_CONTENTS_RAW(%struct.value* %19)
  %21 = load %struct.value*, %struct.value** %4, align 8
  %22 = call i32 @VALUE_CONTENTS(%struct.value* %21)
  %23 = load %struct.type*, %struct.type** %8, align 8
  %24 = call i64 @TYPE_LENGTH(%struct.type* %23)
  %25 = call i32 @memcpy(i64 %20, i32 %22, i64 %24)
  %26 = load %struct.value*, %struct.value** %7, align 8
  %27 = call i64 @VALUE_CONTENTS_RAW(%struct.value* %26)
  %28 = load %struct.type*, %struct.type** %8, align 8
  %29 = call i64 @TYPE_LENGTH(%struct.type* %28)
  %30 = add nsw i64 %27, %29
  %31 = load %struct.value*, %struct.value** %5, align 8
  %32 = call i32 @VALUE_CONTENTS(%struct.value* %31)
  %33 = load %struct.type*, %struct.type** %8, align 8
  %34 = call i64 @TYPE_LENGTH(%struct.type* %33)
  %35 = call i32 @memcpy(i64 %30, i32 %32, i64 %34)
  %36 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %36
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
