; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_svis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_svis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIS_SAFE = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32*)* @do_svis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_svis(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32* @wcschr(i32* %17, i32 %18)
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ISGRAPH(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @iswwhite(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @VIS_SAFE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @iswsafe(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %29, %24
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %6, align 8
  br label %84

47:                                               ; preds = %38, %33, %5
  store i32 0, i32* %16, align 4
  store i32 3, i32* %13, align 4
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @NBBY, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = shl i32 255, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64, %51
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32* @do_mbyte(i32* %68, i32 %73, i32 %74, i32 %75, i32 %76)
  store i32* %77, i32** %7, align 8
  br label %78

78:                                               ; preds = %67, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %48

82:                                               ; preds = %48
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %82, %42
  %85 = load i32*, i32** %6, align 8
  ret i32* %85
}

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i64 @ISGRAPH(i32, i32) #1

declare dso_local i64 @iswwhite(i32) #1

declare dso_local i64 @iswsafe(i32) #1

declare dso_local i32* @do_mbyte(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
