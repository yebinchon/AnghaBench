; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_zero_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_zero_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @zero_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_pad(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 8
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %14, %7
  %9 = load i64*, i64** %3, align 8
  %10 = ptrtoint i64* %9 to i32
  %11 = sext i32 %10 to i64
  %12 = urem i64 %11, 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i64*, i64** %3, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %3, align 8
  br label %8

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 8
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64*, i64** %3, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 8
  store i64* %31, i64** %3, align 8
  br label %21

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %2
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64*, i64** %3, align 8
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %3, align 8
  br label %34

43:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
