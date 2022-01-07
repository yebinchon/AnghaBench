; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_int_array_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_int_array_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_array_concat(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32**, i32*** %3, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @int_array_len(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @int_array_len(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = call i32* @os_realloc_array(i32* %15, i32 %19, i32 4)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @os_free(i32* %25)
  %27 = load i32**, i32*** %3, align 8
  store i32* null, i32** %27, align 8
  br label %51

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32*, i32** %8, align 8
  %50 = load i32**, i32*** %3, align 8
  store i32* %49, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %23
  ret void
}

declare dso_local i32 @int_array_len(i32*) #1

declare dso_local i32* @os_realloc_array(i32*, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
