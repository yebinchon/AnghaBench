; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_bit_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_bit_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@builtin_type_unsigned_char = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@BITS_BIG_ENDIAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_bit_index(%struct.type* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %13, i32 0)
  store %struct.type* %14, %struct.type** %12, align 8
  %15 = load %struct.type*, %struct.type** %12, align 8
  %16 = call i64 @get_discrete_bounds(%struct.type* %15, i32* %8, i32* %9)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 -1, i32* %4, align 4
  br label %55

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @builtin_type_unsigned_char, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %36 = udiv i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = call i32 @unpack_long(i32 %32, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %41 = load i32, i32* %11, align 4
  %42 = urem i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* @BITS_BIG_ENDIAN, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %47 = sub i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %28
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %27, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @get_discrete_bounds(%struct.type*, i32*, i32*) #1

declare dso_local i32 @unpack_long(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
