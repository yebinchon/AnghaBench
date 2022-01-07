; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_format_timeslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_format_timeslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_timeslots.buf = internal global [100 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @format_timeslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_timeslots(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @format_timeslots.buf, i64 0, i64 0), i8** %3, align 8
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %74, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %77

10:                                               ; preds = %7
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %11, %13
  %15 = and i64 %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %22, %25
  %27 = and i64 %21, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 31
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %33, %36
  %38 = and i64 %32, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %17
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %74

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  store i8 45, i8* %47, align 1
  br label %56

49:                                               ; preds = %17
  %50 = load i8*, i8** %3, align 8
  %51 = icmp ugt i8* %50, getelementptr inbounds ([100 x i8], [100 x i8]* @format_timeslots.buf, i64 0, i64 0)
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 44, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %60, 10
  %62 = add nsw i32 48, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  store i8 %63, i8* %64, align 1
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %4, align 4
  %68 = srem i32 %67, 10
  %69 = add nsw i32 48, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %66, %10
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %7

77:                                               ; preds = %7
  %78 = load i8*, i8** %3, align 8
  store i8 0, i8* %78, align 1
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @format_timeslots.buf, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
