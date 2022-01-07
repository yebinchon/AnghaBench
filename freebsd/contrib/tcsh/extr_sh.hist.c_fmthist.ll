; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_fmthist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_fmthist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@HistLit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@MB_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmthist(i32 %0, %struct.Hist* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Hist*, align 8
  %6 = alloca %struct.Hist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.Hist* %1, %struct.Hist** %5, align 8
  %11 = load %struct.Hist*, %struct.Hist** %5, align 8
  store %struct.Hist* %11, %struct.Hist** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %64 [
    i32 104, label %13
    i32 82, label %18
  ]

13:                                               ; preds = %2
  %14 = load %struct.Hist*, %struct.Hist** %6, align 8
  %15 = getelementptr inbounds %struct.Hist, %struct.Hist* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @xasprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %3, align 8
  br label %69

18:                                               ; preds = %2
  %19 = load i32, i32* @HistLit, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.Hist*, %struct.Hist** %6, align 8
  %23 = getelementptr inbounds %struct.Hist, %struct.Hist* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.Hist*, %struct.Hist** %6, align 8
  %28 = getelementptr inbounds %struct.Hist, %struct.Hist* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @xasprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i8* %30, i8** %3, align 8
  br label %69

31:                                               ; preds = %21, %18
  %32 = load %struct.Hist*, %struct.Hist** %6, align 8
  %33 = getelementptr inbounds %struct.Hist, %struct.Hist* %32, i32 0, i32 0
  %34 = call i8* @sprlex(i32* %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @Strlen(i8* %35)
  %37 = load i32, i32* @MB_LEN_MAX, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = call i8* @xmalloc(i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %56, %31
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @one_wctomb(i8* %49, i8 signext %51)
  %53 = load i8*, i8** %10, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %10, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %43

59:                                               ; preds = %43
  %60 = load i8*, i8** %10, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @xfree(i8* %61)
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %3, align 8
  br label %69

64:                                               ; preds = %2
  %65 = call i8* @xmalloc(i32 1)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %7, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %64, %59, %26, %13
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i8* @xasprintf(i8*, i32) #1

declare dso_local i8* @sprlex(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @Strlen(i8*) #1

declare dso_local i32 @one_wctomb(i8*, i8 signext) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
