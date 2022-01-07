; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_hvis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_hvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32*)* @do_hvis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_hvis(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
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
  %12 = call i64 @iswalnum(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 95
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 33
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 42
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 39
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 40
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 41
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 44
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %5
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32* @do_svis(i32* %48, i32 %49, i32 %50, i32 %51, i32* %52)
  store i32* %53, i32** %6, align 8
  br label %70

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 37, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = lshr i32 %57, 4
  %59 = and i32 %58, 15
  %60 = call i8* @xtoa(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 15
  %66 = call i8* @xtoa(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %54, %47
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

declare dso_local i64 @iswalnum(i32) #1

declare dso_local i32* @do_svis(i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @xtoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
