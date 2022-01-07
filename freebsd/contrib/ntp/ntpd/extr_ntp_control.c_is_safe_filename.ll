; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_is_safe_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_is_safe_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_safe_filename.chclass = internal constant [8 x i32] [i32 0, i32 0, i32 679477248, i32 1048575, i32 -4, i32 -1069547521, i32 -4, i32 4194303], align 16
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_safe_filename(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %9
  store i64 1, i64* %6, align 8
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i64
  store i64 %21, i64* %4, align 8
  %22 = icmp ne i64 0, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, 15
  %26 = shl i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = ashr i64 %27, 4
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp uge i64 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* @is_safe_filename.chclass, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = ashr i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %40, %41
  %43 = icmp eq i64 0, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %33
  store i64 2, i64* %6, align 8
  br label %17

47:                                               ; preds = %17
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %44, %31, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
