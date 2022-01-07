; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_select_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_select_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLIMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, [3 x i32*]*, i32**)* @select_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_point(i32 %0, i32 %1, [3 x i32*]* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32*]*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [3 x i32*]* %2, [3 x i32*]** %7, align 8
  store i32** %3, i32*** %8, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %11, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = call i32 @memset(i32** %18, i32 0, i32 24)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %74, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = load [3 x i32*]*, [3 x i32*]** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %25, i64 %27
  %29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %28, i64 0, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32* %31, i32** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = lshr i32 %35, 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = lshr i32 %39, 2
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = lshr i32 %43, 1
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, 1
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %70, %24
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @NLIMBS, align 4
  %54 = mul nsw i32 %53, 3
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %61, %62
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %51

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %20

77:                                               ; preds = %20
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
