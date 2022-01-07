; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_scan_timeslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_scan_timeslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @scan_timeslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scan_timeslots(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %53, %20, %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strtol(i8* %9, i8** %3, i32 10)
  store i64 %10, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %59

15:                                               ; preds = %8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %2, align 8
  br label %8

24:                                               ; preds = %15
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %49, %35
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %38

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i64, i64* %4, align 8
  %55 = shl i64 1, %54
  %56 = load i64, i64* %6, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %58 = load i8*, i8** %3, align 8
  store i8* %58, i8** %2, align 8
  br label %8

59:                                               ; preds = %14
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
