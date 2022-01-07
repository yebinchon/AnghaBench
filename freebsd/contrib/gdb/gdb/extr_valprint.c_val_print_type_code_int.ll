; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_type_code_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_type_code_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_print_type_code_int(%struct.type* %0, i8* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = call i32 @TYPE_LENGTH(%struct.type* %8)
  %10 = sext i32 %9 to i64
  %11 = icmp ugt i64 %10, 4
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.type*, %struct.type** %4, align 8
  %14 = call i64 @TYPE_UNSIGNED(%struct.type* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.type*, %struct.type** %4, align 8
  %19 = call i32 @TYPE_LENGTH(%struct.type* %18)
  %20 = call i64 @extract_long_unsigned_integer(i8* %17, i32 %19, i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @print_longest(%struct.ui_file* %23, i8 zeroext 117, i32 0, i32 %24)
  br label %32

26:                                               ; preds = %16, %12
  %27 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.type*, %struct.type** %4, align 8
  %30 = call i32 @TYPE_LENGTH(%struct.type* %29)
  %31 = call i32 @print_hex_chars(%struct.ui_file* %27, i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  br label %45

33:                                               ; preds = %3
  %34 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = call i64 @TYPE_UNSIGNED(%struct.type* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 117, i32 100
  %40 = trunc i32 %39 to i8
  %41 = load %struct.type*, %struct.type** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @unpack_long(%struct.type* %41, i8* %42)
  %44 = call i32 @print_longest(%struct.ui_file* %34, i8 zeroext %40, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i64 @extract_long_unsigned_integer(i8*, i32, i32*) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 zeroext, i32, i32) #1

declare dso_local i32 @print_hex_chars(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
