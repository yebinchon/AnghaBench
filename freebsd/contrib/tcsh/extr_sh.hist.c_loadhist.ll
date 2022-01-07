; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_loadhist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_loadhist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i32, i32, %struct.Hist* }

@loadhist.loadhist_cmd = internal global [4 x i32*] [i32* inttoptr (i64 128 to i32*), i32* null, i32* null, i32* null], align 16
@STRmm = common dso_local global i32* null, align 8
@STRmh = common dso_local global i32* null, align 8
@STRhistfile = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@STRtildothist = common dso_local global i32* null, align 8
@eventno = common dso_local global i32 0, align 4
@Histlist = common dso_local global %struct.Hist zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadhist(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Hist*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** @STRmm, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** @STRmh, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32* [ %10, %9 ], [ %12, %11 ]
  store i32* %14, i32** getelementptr inbounds ([4 x i32*], [4 x i32*]* @loadhist.loadhist_cmd, i64 0, i64 1), align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  store i32* %18, i32** getelementptr inbounds ([4 x i32*], [4 x i32*]* @loadhist.loadhist_cmd, i64 0, i64 2), align 16
  br label %29

19:                                               ; preds = %13
  %20 = load i32, i32* @STRhistfile, align 4
  %21 = call i32* @varval(i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** @STRNULL, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  store i32* %25, i32** getelementptr inbounds ([4 x i32*], [4 x i32*]* @loadhist.loadhist_cmd, i64 0, i64 2), align 16
  br label %28

26:                                               ; preds = %19
  %27 = load i32*, i32** @STRtildothist, align 8
  store i32* %27, i32** getelementptr inbounds ([4 x i32*], [4 x i32*]* @loadhist.loadhist_cmd, i64 0, i64 2), align 16
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %17
  %30 = call i32 @dosource(i32** getelementptr inbounds ([4 x i32*], [4 x i32*]* @loadhist.loadhist_cmd, i64 0, i64 0), i32* null)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* @eventno, align 4
  store i32 %34, i32* %5, align 4
  store %struct.Hist* @Histlist, %struct.Hist** %6, align 8
  br label %35

35:                                               ; preds = %40, %33
  %36 = load %struct.Hist*, %struct.Hist** %6, align 8
  %37 = getelementptr inbounds %struct.Hist, %struct.Hist* %36, i32 0, i32 2
  %38 = load %struct.Hist*, %struct.Hist** %37, align 8
  store %struct.Hist* %38, %struct.Hist** %6, align 8
  %39 = icmp ne %struct.Hist* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.Hist*, %struct.Hist** %6, align 8
  %44 = getelementptr inbounds %struct.Hist, %struct.Hist* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.Hist*, %struct.Hist** %6, align 8
  %46 = getelementptr inbounds %struct.Hist, %struct.Hist* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %29
  ret void
}

declare dso_local i32* @varval(i32) #1

declare dso_local i32 @dosource(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
