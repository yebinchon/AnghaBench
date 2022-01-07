; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_my_value_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_my_value_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.value*, %struct.value*, i32*)* @my_value_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_value_equal(%struct.value* %0, %struct.value* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %5, align 8
  store %struct.value* %1, %struct.value** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.value*, %struct.value** %5, align 8
  %13 = icmp eq %struct.value* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.value*, %struct.value** %6, align 8
  %16 = icmp eq %struct.value* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %57

18:                                               ; preds = %14, %3
  %19 = load %struct.value*, %struct.value** %5, align 8
  %20 = icmp eq %struct.value* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.value*, %struct.value** %6, align 8
  %23 = icmp eq %struct.value* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 0, i32* %4, align 4
  br label %57

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.value*, %struct.value** %5, align 8
  %28 = load %struct.value*, %struct.value** %5, align 8
  %29 = call i32 @gdb_value_equal(%struct.value* %27, %struct.value* %28, i32* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.value*, %struct.value** %6, align 8
  %34 = load %struct.value*, %struct.value** %6, align 8
  %35 = call i32 @gdb_value_equal(%struct.value* %33, %struct.value* %34, i32* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %57

44:                                               ; preds = %39
  %45 = load %struct.value*, %struct.value** %5, align 8
  %46 = load %struct.value*, %struct.value** %6, align 8
  %47 = call i32 @gdb_value_equal(%struct.value* %45, %struct.value* %46, i32* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %57

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %54, %53, %43, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @gdb_value_equal(%struct.value*, %struct.value*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
