; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_alignment_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_alignment_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @alignment_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alignment_of(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %2, align 8
  %6 = load %struct.type*, %struct.type** %2, align 8
  %7 = call i64 @is_integer_like(%struct.type* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %2, align 8
  %11 = call i64 @is_pointer_like(%struct.type* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load %struct.type*, %struct.type** %2, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_FLT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %9, %1
  %19 = load %struct.type*, %struct.type** %2, align 8
  %20 = call i32 @TYPE_LENGTH(%struct.type* %19)
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %13
  %22 = load %struct.type*, %struct.type** %2, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %2, align 8
  %28 = call i64 @TYPE_CODE(%struct.type* %27)
  %29 = load i64, i64* @TYPE_CODE_UNION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %26, %21
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.type*, %struct.type** %2, align 8
  %35 = call i32 @TYPE_NFIELDS(%struct.type* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.type*, %struct.type** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %38, i32 %39)
  %41 = call i32 @alignment_of(%struct.type* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %32

51:                                               ; preds = %32
  br label %53

52:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @gdb_assert(i32 %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @is_integer_like(%struct.type*) #1

declare dso_local i64 @is_pointer_like(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
