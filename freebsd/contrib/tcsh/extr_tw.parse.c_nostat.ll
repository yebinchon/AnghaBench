; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_nostat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_nostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32** }

@STRnostat = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STRstar = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @nostat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nostat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.varent*, align 8
  %5 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @STRnostat, align 4
  %7 = call %struct.varent* @adrof(i32 %6)
  store %struct.varent* %7, %struct.varent** %4, align 8
  %8 = icmp eq %struct.varent* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.varent*, %struct.varent** %4, align 8
  %11 = getelementptr inbounds %struct.varent, %struct.varent* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  store i32** %12, i32*** %5, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32**, i32*** %5, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @STRstar, align 4
  %25 = call i64 @Strcmp(i32* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @Gmatch(i32* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32**, i32*** %5, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i32 1
  store i32** %40, i32*** %5, align 8
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %35, %27, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i64 @Strcmp(i32*, i32) #1

declare dso_local i64 @Gmatch(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
