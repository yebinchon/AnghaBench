; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_copy_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_copy_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8**)* @copy_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_raw(i32** %0, i8** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %6, align 8
  br label %14

14:                                               ; preds = %48, %36, %35, %2
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %44 [
    i32 128, label %19
    i32 39, label %21
    i32 92, label %22
  ]

19:                                               ; preds = %14
  %20 = load i8**, i8*** %4, align 8
  store i8* null, i8** %20, align 8
  br label %55

21:                                               ; preds = %14
  br label %49

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %43 [
    i32 128, label %25
    i32 13, label %27
    i32 129, label %36
    i32 39, label %39
    i32 92, label %40
  ]

25:                                               ; preds = %22
  %26 = load i8**, i8*** %4, align 8
  store i8* null, i8** %26, align 8
  br label %55

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %14

36:                                               ; preds = %22
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  br label %14

39:                                               ; preds = %22
  store i32 39, i32* %7, align 4
  br label %40

40:                                               ; preds = %22, %39
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %22, %40
  br label %44

44:                                               ; preds = %14, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %44
  br label %14

49:                                               ; preds = %21
  %50 = load i32*, i32** %5, align 8
  %51 = load i32**, i32*** %3, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i8**, i8*** %4, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %25, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
