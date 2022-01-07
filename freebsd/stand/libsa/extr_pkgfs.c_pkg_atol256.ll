; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_atol256.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_atol256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pkg_atol256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_atol256(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* @INT64_MAX, align 4
  %11 = sdiv i32 %10, 256
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INT64_MIN, align 4
  %13 = sdiv i32 %12, 256
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 64, %16
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 6
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 63, %27
  %29 = or i32 %23, %28
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %21
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @INT64_MAX, align 4
  store i32 %39, i32* %5, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @INT64_MIN, align 4
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 255, %53
  %55 = or i32 %49, %54
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %44, %38, %30
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
