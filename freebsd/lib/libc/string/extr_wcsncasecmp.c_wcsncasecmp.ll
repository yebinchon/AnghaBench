; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcsncasecmp.c_wcsncasecmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcsncasecmp.c_wcsncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcsncasecmp(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @towlower(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @towlower(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %18
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %51

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %5, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %6, align 8
  br label %14

46:                                               ; preds = %14
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 0, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %39, %28, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @towlower(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
