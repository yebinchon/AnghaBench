; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_rt_vbase_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_rt_vbase_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"Couldn't find virtual table -- object may not be constructed yet.\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@HP_ACC_VBASE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_rt_vbase_offset(%struct.type* %0, %struct.type* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.value*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.type*, %struct.type** %7, align 8
  %20 = call %struct.type* @TYPE_PRIMARY_BASE(%struct.type* %19)
  store %struct.type* %20, %struct.type** %18, align 8
  %21 = load %struct.type*, %struct.type** %18, align 8
  %22 = icmp ne %struct.type* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %6
  %24 = load %struct.type*, %struct.type** %18, align 8
  %25 = load %struct.type*, %struct.type** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  call void @find_rt_vbase_offset(%struct.type* %24, %struct.type* %25, i8* %26, i32 %27, i32* %13, i32* %15)
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %12, align 8
  store i32 -1, i32* %33, align 4
  br label %78

34:                                               ; preds = %23
  br label %36

35:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.type*, %struct.type** %8, align 8
  %38 = load %struct.type*, %struct.type** %7, align 8
  %39 = call i32 @virtual_base_index_skip_primaries(%struct.type* %37, %struct.type* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.type*, %struct.type** %7, align 8
  %45 = call i32 @virtual_base_list_length_skip_primaries(%struct.type* %44)
  %46 = add nsw i32 %43, %45
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 0, i32* %48, align 4
  br label %78

49:                                               ; preds = %36
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = call i32 @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %49
  %61 = load i32, i32* @builtin_type_int, align 4
  %62 = load i64, i64* %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 0, %63
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* @HP_ACC_VBASE_START, align 4
  %68 = sub nsw i32 %66, %67
  %69 = mul nsw i32 4, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %62, %70
  %72 = call %struct.value* @value_at(i32 %61, i64 %71, i32* null)
  store %struct.value* %72, %struct.value** %16, align 8
  %73 = load %struct.value*, %struct.value** %16, align 8
  %74 = call i32 @value_as_long(%struct.value* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 -1, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %60, %42, %30
  ret void
}

declare dso_local %struct.type* @TYPE_PRIMARY_BASE(%struct.type*) #1

declare dso_local i32 @virtual_base_index_skip_primaries(%struct.type*, %struct.type*) #1

declare dso_local i32 @virtual_base_list_length_skip_primaries(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_at(i32, i64, i32*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
