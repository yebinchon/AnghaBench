; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/string/extr_t_swab.c_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/string/extr_t_swab.c_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCHK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = lshr i64 %8, 1
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %34, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 %16, i8* %19, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 %16, i8* %23, align 1
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %26, i8* %33, align 1
  br label %34

34:                                               ; preds = %14
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 2
  store i64 %36, i64* %7, align 8
  br label %10

37:                                               ; preds = %10
  %38 = load i64, i64* %6, align 8
  %39 = shl i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %51, %37
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @MAXCHK, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 -1, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 -1, i8* %50, align 1
  br label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %40

54:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
