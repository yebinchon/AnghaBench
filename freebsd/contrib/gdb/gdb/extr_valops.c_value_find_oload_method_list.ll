; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_find_oload_method_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_find_oload_method_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_field = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@TYPE_CODE_MEMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Not implemented: member type in value_find_oload_lis\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"Attempt to extract a component of a value that is not a struct or union\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fn_field* @value_find_oload_method_list(%struct.value** %0, i8* %1, i32 %2, i32* %3, %struct.type** %4, i32* %5) #0 {
  %7 = alloca %struct.value**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.type**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.type*, align 8
  store %struct.value** %0, %struct.value*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.type** %4, %struct.type*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.value**, %struct.value*** %7, align 8
  %15 = load %struct.value*, %struct.value** %14, align 8
  %16 = call %struct.type* @VALUE_TYPE(%struct.value* %15)
  %17 = call %struct.type* @check_typedef(%struct.type* %16)
  store %struct.type* %17, %struct.type** %13, align 8
  br label %18

18:                                               ; preds = %45, %6
  %19 = load %struct.type*, %struct.type** %13, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_PTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.type*, %struct.type** %13, align 8
  %25 = call i64 @TYPE_CODE(%struct.type* %24)
  %26 = load i64, i64* @TYPE_CODE_REF, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %50

30:                                               ; preds = %28
  %31 = load %struct.value**, %struct.value*** %7, align 8
  %32 = load %struct.value*, %struct.value** %31, align 8
  %33 = call %struct.value* @value_ind(%struct.value* %32)
  %34 = load %struct.value**, %struct.value*** %7, align 8
  store %struct.value* %33, %struct.value** %34, align 8
  %35 = load %struct.value**, %struct.value*** %7, align 8
  %36 = load %struct.value*, %struct.value** %35, align 8
  %37 = call %struct.type* @VALUE_TYPE(%struct.value* %36)
  %38 = call i64 @TYPE_CODE(%struct.type* %37)
  %39 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.value**, %struct.value*** %7, align 8
  %43 = load %struct.value*, %struct.value** %42, align 8
  %44 = call i32 @COERCE_ARRAY(%struct.value* %43)
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.value**, %struct.value*** %7, align 8
  %47 = load %struct.value*, %struct.value** %46, align 8
  %48 = call %struct.type* @VALUE_TYPE(%struct.value* %47)
  %49 = call %struct.type* @check_typedef(%struct.type* %48)
  store %struct.type* %49, %struct.type** %13, align 8
  br label %18

50:                                               ; preds = %28
  %51 = load %struct.type*, %struct.type** %13, align 8
  %52 = call i64 @TYPE_CODE(%struct.type* %51)
  %53 = load i64, i64* @TYPE_CODE_MEMBER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.type*, %struct.type** %13, align 8
  %59 = call i64 @TYPE_CODE(%struct.type* %58)
  %60 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.type*, %struct.type** %13, align 8
  %64 = call i64 @TYPE_CODE(%struct.type* %63)
  %65 = load i64, i64* @TYPE_CODE_UNION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62, %57
  %70 = load %struct.value**, %struct.value*** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.type*, %struct.type** %13, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.type**, %struct.type*** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call %struct.fn_field* @find_method_list(%struct.value** %70, i8* %71, i32 0, %struct.type* %72, i32* %73, %struct.type** %74, i32* %75)
  ret %struct.fn_field* %76
}

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local i32 @COERCE_ARRAY(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.fn_field* @find_method_list(%struct.value**, i8*, i32, %struct.type*, i32*, %struct.type**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
