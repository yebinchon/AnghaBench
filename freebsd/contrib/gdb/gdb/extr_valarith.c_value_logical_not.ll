; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_logical_not.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_logical_not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_logical_not(%struct.value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %7 = load %struct.value*, %struct.value** %3, align 8
  %8 = call i32 @COERCE_NUMBER(%struct.value* %7)
  %9 = load %struct.value*, %struct.value** %3, align 8
  %10 = call i32 @VALUE_TYPE(%struct.value* %9)
  %11 = call %struct.type* @check_typedef(i32 %10)
  store %struct.type* %11, %struct.type** %6, align 8
  %12 = load %struct.type*, %struct.type** %6, align 8
  %13 = call i64 @TYPE_CODE(%struct.type* %12)
  %14 = load i64, i64* @TYPE_CODE_FLT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.value*, %struct.value** %3, align 8
  %18 = call i64 @value_as_double(%struct.value* %17)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i32 @TYPE_LENGTH(%struct.type* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.value*, %struct.value** %3, align 8
  %25 = call i8* @VALUE_CONTENTS(%struct.value* %24)
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %36, %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8, i8* %31, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  br label %26

37:                                               ; preds = %35, %26
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @COERCE_NUMBER(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @value_as_double(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
