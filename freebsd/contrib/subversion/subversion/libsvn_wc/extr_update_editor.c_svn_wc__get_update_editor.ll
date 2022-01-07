; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__get_update_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__get_update_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_update_editor(i32** %0, i8** %1, i32* %2, %struct.TYPE_3__* %3, i8* %4, i8* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i8* %14, i32* %15, i32 %16, i8* %17, i32 %18, i8* %19, i32 %20, i8* %21, i32 %22, i8* %23, i32 %24, i8* %25, i32* %26, i32* %27) #0 {
  %29 = alloca i32**, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_3__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i8*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 8
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  store i32** %0, i32*** %29, align 8
  store i8** %1, i8*** %30, align 8
  store i32* %2, i32** %31, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %32, align 8
  store i8* %4, i8** %33, align 8
  store i8* %5, i8** %34, align 8
  store i32* %6, i32** %35, align 8
  store i32 %7, i32* %36, align 4
  store i32 %8, i32* %37, align 4
  store i32 %9, i32* %38, align 4
  store i32 %10, i32* %39, align 4
  store i32 %11, i32* %40, align 4
  store i32 %12, i32* %41, align 4
  store i32 %13, i32* %42, align 4
  store i8* %14, i8** %43, align 8
  store i32* %15, i32** %44, align 8
  store i32 %16, i32* %45, align 4
  store i8* %17, i8** %46, align 8
  store i32 %18, i32* %47, align 4
  store i8* %19, i8** %48, align 8
  store i32 %20, i32* %49, align 4
  store i8* %21, i8** %50, align 8
  store i32 %22, i32* %51, align 4
  store i8* %23, i8** %52, align 8
  store i32 %24, i32* %53, align 4
  store i8* %25, i8** %54, align 8
  store i32* %26, i32** %55, align 8
  store i32* %27, i32** %56, align 8
  %57 = load i32*, i32** %31, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %33, align 8
  %62 = load i8*, i8** %34, align 8
  %63 = load i32*, i32** %35, align 8
  %64 = load i32, i32* %36, align 4
  %65 = load i32, i32* %37, align 4
  %66 = load i32, i32* %38, align 4
  %67 = load i32, i32* %39, align 4
  %68 = load i32, i32* %40, align 4
  %69 = load i32, i32* %41, align 4
  %70 = load i32, i32* %42, align 4
  %71 = load i32, i32* %53, align 4
  %72 = load i8*, i8** %54, align 8
  %73 = load i32, i32* %51, align 4
  %74 = load i8*, i8** %52, align 8
  %75 = load i32, i32* %45, align 4
  %76 = load i8*, i8** %46, align 8
  %77 = load i32, i32* %47, align 4
  %78 = load i8*, i8** %48, align 8
  %79 = load i32, i32* %49, align 4
  %80 = load i8*, i8** %50, align 8
  %81 = load i8*, i8** %43, align 8
  %82 = load i32*, i32** %44, align 8
  %83 = load i32**, i32*** %29, align 8
  %84 = load i8**, i8*** %30, align 8
  %85 = load i32*, i32** %55, align 8
  %86 = load i32*, i32** %56, align 8
  %87 = call i32* @make_editor(i32* %57, i32 %60, i8* %61, i8* %62, i32* %63, i32 %64, i32* null, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i8* %72, i32 %73, i8* %74, i32 %75, i8* %76, i32 %77, i8* %78, i32 %79, i8* %80, i8* %81, i32* %82, i32** %83, i8** %84, i32* %85, i32* %86)
  ret i32* %87
}

declare dso_local i32* @make_editor(i32*, i32, i8*, i8*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i32*, i32**, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
