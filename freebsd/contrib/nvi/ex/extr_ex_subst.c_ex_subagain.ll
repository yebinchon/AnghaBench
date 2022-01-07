; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_ex_subagain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_ex_subagain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__**, i64 }
%struct.TYPE_11__ = type { i32* }

@EXM_NOPREVRE = common dso_local global i32 0, align 4
@SC_RE_SUBST = common dso_local global i32 0, align 4
@RE_C_SUBST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_subagain(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = load i32, i32* @EXM_NOPREVRE, align 4
  %13 = call i32 @ex_emsg(%struct.TYPE_12__* %11, i32* null, i32 %12)
  store i32 1, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = load i32, i32* @SC_RE_SUBST, align 4
  %17 = call i32 @F_ISSET(%struct.TYPE_12__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* @RE_C_SUBST, align 4
  %30 = call i64 @re_compile(%struct.TYPE_12__* %20, i32* %23, i32 %26, i32* null, i32* null, i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %54

33:                                               ; preds = %19, %14
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  br label %49

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %40
  %50 = phi i32* [ %47, %40 ], [ null, %48 ]
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = call i32 @s(%struct.TYPE_12__* %34, %struct.TYPE_13__* %35, i32* %50, i32* %52, i32 0)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %32, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ex_emsg(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @re_compile(%struct.TYPE_12__*, i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @s(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
