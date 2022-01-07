; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_flags.c___sflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_flags.c___sflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__SRD = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__SRW = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sflags(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %29 [
    i32 114, label %14
    i32 119, label %17
    i32 97, label %23
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @__SRD, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @O_RDONLY, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @__SWR, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @O_WRONLY, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @__SWR, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @O_WRONLY, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = load i32, i32* @O_APPEND, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %23, %17, %14
  br label %32

32:                                               ; preds = %55, %31
  store i32 1, i32* %9, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %53 [
    i32 98, label %37
    i32 43, label %38
    i32 120, label %41
    i32 101, label %45
    i32 118, label %49
  ]

37:                                               ; preds = %32
  br label %54

38:                                               ; preds = %32
  %39 = load i32, i32* @__SRW, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @O_RDWR, align 4
  store i32 %40, i32* %7, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @O_EXCL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %54

45:                                               ; preds = %32
  %46 = load i32, i32* @O_CLOEXEC, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %32
  %50 = load i32, i32* @O_VERIFY, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %49, %45, %41, %38, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %32, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @O_EXCL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %67, %29
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
