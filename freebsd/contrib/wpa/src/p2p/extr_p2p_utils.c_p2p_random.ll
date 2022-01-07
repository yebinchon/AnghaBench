; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_random(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 26, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @os_get_random(i8* %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 65, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %41, align 1
  br label %67

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 2, %44
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 97, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  br label %66

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 2, %58
  %60 = sub nsw i32 %57, %59
  %61 = add nsw i32 48, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %56, %47
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %16

71:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @os_get_random(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
