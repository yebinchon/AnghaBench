; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_mvis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_mvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i32] [i32 35, i32 36, i32 64, i32 91, i32 92, i32 93, i32 94, i32 96, i32 123, i32 124, i32 125, i32 126, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32*)* @do_mvis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_mvis(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %59

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @iswspace(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @iswspace(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 33
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 60
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 62
  br i1 %35, label %43, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 126
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @wcschr(i8* bitcast ([13 x i32]* @.str to i8*), i32 %40)
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %39, %36, %33, %27, %20, %17
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 61, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 15
  %49 = call i8* @XTOA(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 15
  %55 = call i8* @XTOA(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %66

59:                                               ; preds = %39, %5
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @do_svis(i32* %60, i32 %61, i32 %62, i32 %63, i32* %64)
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %59, %43
  %67 = load i32*, i32** %6, align 8
  ret i32* %67
}

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32* @wcschr(i8*, i32) #1

declare dso_local i8* @XTOA(i32) #1

declare dso_local i32* @do_svis(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
