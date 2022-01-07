; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_binop_user_defined_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_binop_user_defined_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@BINOP_ASSIGN = common dso_local global i32 0, align 4
@BINOP_CONCAT = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binop_user_defined_p(i32 %0, %struct.value* %1, %struct.value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.value* %1, %struct.value** %6, align 8
  store %struct.value* %2, %struct.value** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BINOP_ASSIGN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BINOP_CONCAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %61

18:                                               ; preds = %13
  %19 = load %struct.value*, %struct.value** %6, align 8
  %20 = call i32 @VALUE_TYPE(%struct.value* %19)
  %21 = call %struct.type* @check_typedef(i32 %20)
  store %struct.type* %21, %struct.type** %8, align 8
  %22 = load %struct.value*, %struct.value** %7, align 8
  %23 = call i32 @VALUE_TYPE(%struct.value* %22)
  %24 = call %struct.type* @check_typedef(i32 %23)
  store %struct.type* %24, %struct.type** %9, align 8
  %25 = load %struct.type*, %struct.type** %8, align 8
  %26 = call i64 @TYPE_CODE(%struct.type* %25)
  %27 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %58, label %29

29:                                               ; preds = %18
  %30 = load %struct.type*, %struct.type** %9, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  %35 = load %struct.type*, %struct.type** %8, align 8
  %36 = call i64 @TYPE_CODE(%struct.type* %35)
  %37 = load i64, i64* @TYPE_CODE_REF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.type*, %struct.type** %8, align 8
  %41 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %40)
  %42 = call i64 @TYPE_CODE(%struct.type* %41)
  %43 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.type*, %struct.type** %9, align 8
  %47 = call i64 @TYPE_CODE(%struct.type* %46)
  %48 = load i64, i64* @TYPE_CODE_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.type*, %struct.type** %9, align 8
  %52 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %51)
  %53 = call i64 @TYPE_CODE(%struct.type* %52)
  %54 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56, %39, %29, %18
  %59 = phi i1 [ true, %39 ], [ true, %29 ], [ true, %18 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
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
