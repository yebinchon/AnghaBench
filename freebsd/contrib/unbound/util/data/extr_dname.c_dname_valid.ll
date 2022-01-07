; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dname_valid(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %4, align 8
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 192
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %51

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %51

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %51

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %38, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %7, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %48, %33, %28, %19
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
