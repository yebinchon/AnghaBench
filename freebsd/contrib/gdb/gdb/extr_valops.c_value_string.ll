; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@builtin_type_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_string(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @builtin_type_int, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = call %struct.type* @create_range_type(%struct.type* null, i32 %14, i32 %15, i32 %19)
  store %struct.type* %20, %struct.type** %8, align 8
  %21 = load %struct.type*, %struct.type** %8, align 8
  %22 = call %struct.type* @create_string_type(%struct.type* null, %struct.type* %21)
  store %struct.type* %22, %struct.type** %9, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.type*, %struct.type** %9, align 8
  %29 = call %struct.value* @allocate_value(%struct.type* %28)
  store %struct.value* %29, %struct.value** %6, align 8
  %30 = load %struct.value*, %struct.value** %6, align 8
  %31 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @memcpy(i32 %31, i8* %32, i32 %33)
  %35 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %35, %struct.value** %3, align 8
  br label %47

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @allocate_space_in_inferior(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @write_memory(i32 %39, i8* %40, i32 %41)
  %43 = load %struct.type*, %struct.type** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.value* @value_at_lazy(%struct.type* %43, i32 %44, i32* null)
  store %struct.value* %45, %struct.value** %6, align 8
  %46 = load %struct.value*, %struct.value** %6, align 8
  store %struct.value* %46, %struct.value** %3, align 8
  br label %47

47:                                               ; preds = %36, %27
  %48 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %48
}

declare dso_local %struct.type* @create_range_type(%struct.type*, i32, i32, i32) #1

declare dso_local %struct.type* @create_string_type(%struct.type*, %struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @allocate_space_in_inferior(i32) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local %struct.value* @value_at_lazy(%struct.type*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
