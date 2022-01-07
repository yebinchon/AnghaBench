; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libdes/extr_t_des.c_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libdes/extr_t_des.c_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pt.bufs = internal global [10 x [20 x i8]] zeroinitializer, align 16
@pt.bnum = internal global i32 0, align 4
@pt.f = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @pt.bnum, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @pt.bnum, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [10 x [20 x i8]], [10 x [20 x i8]]* @pt.bufs, i64 0, i64 %7
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* @pt.bnum, align 4
  %11 = srem i32 %10, 10
  store i32 %11, i32* @pt.bnum, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load i8*, i8** @pt.f, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %16, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 %27, i8* %32, align 1
  %33 = load i8*, i8** @pt.f, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %33, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8 %43, i8* %49, align 1
  br label %50

50:                                               ; preds = %15
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 16
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
