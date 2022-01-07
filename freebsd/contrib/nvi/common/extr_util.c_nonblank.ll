; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_util.c_nonblank.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_util.c_nonblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nonblank(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @db_eget(i32* %16, i32 %17, i32** %8, i64* %10, i32* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  store i32 0, i32* %4, align 4
  br label %70

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %52, %33
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ISBLANK(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %10, align 8
  br label %41

59:                                               ; preds = %49
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  br label %67

64:                                               ; preds = %59
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, 1
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i64 [ %63, %62 ], [ %66, %64 ]
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %32, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @db_eget(i32*, i32, i32**, i64*, i32*) #1

declare dso_local i64 @ISBLANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
