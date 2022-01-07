; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_memlowercmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_memlowercmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64)* @memlowercmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memlowercmp(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %8

8:                                                ; preds = %40, %3
  %9 = load i64, i64* %7, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %7, align 8
  %11 = icmp ne i64 %9, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i8
  %22 = call i64 @tolower(i8 zeroext %21)
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i8
  %26 = call i64 @tolower(i8 zeroext %25)
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i8
  %32 = call i64 @tolower(i8 zeroext %31)
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = call i64 @tolower(i8 zeroext %35)
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %46

39:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %46

40:                                               ; preds = %18, %12
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %6, align 8
  br label %8

45:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39, %38
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
