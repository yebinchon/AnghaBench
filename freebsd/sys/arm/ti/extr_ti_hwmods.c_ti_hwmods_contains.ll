; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_hwmods.c_ti_hwmods_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_hwmods.c_ti_hwmods_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_hwmods_contains(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ti_get_hwmods_prop(i32 %17, i8** %9)
  store i32 %18, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %32, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %23

43:                                               ; preds = %31, %23
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @OF_prop_free(i8* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %20, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ti_get_hwmods_prop(i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
