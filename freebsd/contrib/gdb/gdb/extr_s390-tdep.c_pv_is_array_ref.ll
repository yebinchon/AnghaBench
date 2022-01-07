; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_is_array_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_is_array_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i64, i32 }

@pv_constant = common dso_local global i64 0, align 8
@pv_definite_no = common dso_local global i32 0, align 4
@pv_maybe = common dso_local global i32 0, align 4
@pv_definite_yes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prologue_value*, i32, %struct.prologue_value*, i32, i32, i32*)* @pv_is_array_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv_is_array_ref(%struct.prologue_value* %0, i32 %1, %struct.prologue_value* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.prologue_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.prologue_value*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.prologue_value, align 8
  store %struct.prologue_value* %0, %struct.prologue_value** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.prologue_value* %2, %struct.prologue_value** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.prologue_value*, %struct.prologue_value** %8, align 8
  %16 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %17 = call i32 @pv_subtract(%struct.prologue_value* %14, %struct.prologue_value* %15, %struct.prologue_value* %16)
  %18 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @pv_constant, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp sle i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @pv_definite_no, align 4
  store i32 %36, i32* %7, align 4
  br label %58

37:                                               ; preds = %28, %22
  %38 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = srem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %37
  %48 = load i32, i32* @pv_maybe, align 4
  store i32 %48, i32* %7, align 4
  br label %58

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @pv_definite_yes, align 4
  store i32 %55, i32* %7, align 4
  br label %58

56:                                               ; preds = %6
  %57 = load i32, i32* @pv_maybe, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %49, %47, %35
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @pv_subtract(%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
