; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra__get_commit_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra__get_commit_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__get_commit_ev2(i32** %0, %struct.TYPE_7__* %1, i32* %2, i32 %3, i8* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32** %0, i32*** %15, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32 %3, i32* %18, align 4
  store i8* %4, i8** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i8* %10, i8** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)*, i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)** %31, align 8
  %33 = icmp eq i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %13
  %35 = load i32**, i32*** %15, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load i8*, i8** %19, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i8*, i8** %25, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = load i32*, i32** %27, align 8
  %54 = call i32 @svn_ra__use_commit_shim(i32** %35, %struct.TYPE_7__* %36, i32* %37, i32 %38, i8* %39, i32* %40, i32 %41, i32 %42, i32 %43, i32 %44, i8* %45, i32 %48, i32 %51, i32* %52, i32* %53)
  %55 = call i32* @svn_error_trace(i32 %54)
  store i32* %55, i32** %14, align 8
  br label %83

56:                                               ; preds = %13
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)*, i32 (i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*)** %60, align 8
  %62 = load i32**, i32*** %15, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i8*, i8** %19, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i8*, i8** %25, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %26, align 8
  %80 = load i32*, i32** %27, align 8
  %81 = call i32 %61(i32** %62, %struct.TYPE_7__* %63, i32* %64, i32 %65, i8* %66, i32* %67, i32 %68, i32 %69, i32 %70, i32 %71, i8* %72, i32 %75, i32 %78, i32* %79, i32* %80)
  %82 = call i32* @svn_error_trace(i32 %81)
  store i32* %82, i32** %14, align 8
  br label %83

83:                                               ; preds = %56, %34
  %84 = load i32*, i32** %14, align 8
  ret i32* %84
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra__use_commit_shim(i32**, %struct.TYPE_7__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
