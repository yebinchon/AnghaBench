; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_unop_user_defined_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_unop_user_defined_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@UNOP_ADDR = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unop_user_defined_p(i32 %0, %struct.value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.value* %1, %struct.value** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @UNOP_ADDR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.value*, %struct.value** %5, align 8
  %13 = call i32 @VALUE_TYPE(%struct.value* %12)
  %14 = call %struct.type* @check_typedef(i32 %13)
  store %struct.type* %14, %struct.type** %6, align 8
  br label %15

15:                                               ; preds = %31, %11
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_REF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %6, align 8
  %28 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %27)
  store %struct.type* %28, %struct.type** %6, align 8
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %32

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  br label %15

32:                                               ; preds = %29, %20, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
