; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dolimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dolimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limits = type { i64 }
%struct.command = type { i32 }

@STRmh = common dso_local global i32 0, align 4
@limits = common dso_local global %struct.limits* null, align 8
@ERR_SILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dolimit(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.command*, %struct.command** %4, align 8
  %9 = call i32 @USE(%struct.command* %8)
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %11, i32*** %3, align 8
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32**, i32*** %3, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @STRmh, align 4
  %19 = call i64 @eq(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  %22 = load i32**, i32*** %3, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i32 1
  store i32** %23, i32*** %3, align 8
  br label %24

24:                                               ; preds = %21, %15, %2
  %25 = load i32**, i32*** %3, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.limits*, %struct.limits** @limits, align 8
  store %struct.limits* %29, %struct.limits** %5, align 8
  br label %30

30:                                               ; preds = %39, %28
  %31 = load %struct.limits*, %struct.limits** %5, align 8
  %32 = getelementptr inbounds %struct.limits, %struct.limits* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.limits*, %struct.limits** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @plim(%struct.limits* %36, i32 %37)
  br label %39

39:                                               ; preds = %35
  %40 = load %struct.limits*, %struct.limits** %5, align 8
  %41 = getelementptr inbounds %struct.limits, %struct.limits* %40, i32 1
  store %struct.limits* %41, %struct.limits** %5, align 8
  br label %30

42:                                               ; preds = %30
  br label %69

43:                                               ; preds = %24
  %44 = load i32**, i32*** %3, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call %struct.limits* @findlim(i32* %46)
  store %struct.limits* %47, %struct.limits** %5, align 8
  %48 = load i32**, i32*** %3, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.limits*, %struct.limits** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @plim(%struct.limits* %53, i32 %54)
  br label %69

56:                                               ; preds = %43
  %57 = load %struct.limits*, %struct.limits** %5, align 8
  %58 = load i32**, i32*** %3, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = call i32 @getval(%struct.limits* %57, i32** %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.limits*, %struct.limits** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @setlim(%struct.limits* %61, i32 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @ERR_SILENT, align 4
  %68 = call i32 @stderror(i32 %67)
  br label %69

69:                                               ; preds = %42, %52, %66, %56
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64 @eq(i32*, i32) #1

declare dso_local i32 @plim(%struct.limits*, i32) #1

declare dso_local %struct.limits* @findlim(i32*) #1

declare dso_local i32 @getval(%struct.limits*, i32**) #1

declare dso_local i64 @setlim(%struct.limits*, i32, i32) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
