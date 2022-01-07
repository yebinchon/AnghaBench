; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__get_switch_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__get_switch_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_switch_editor(i32** %0, i8** %1, i32* %2, %struct.TYPE_3__* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i8* %13, i32* %14, i32 %15, i8* %16, i32 %17, i8* %18, i32 %19, i8* %20, i32 %21, i8* %22, i32 %23, i8* %24, i32* %25, i32* %26) #0 {
  %28 = alloca i32**, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_3__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i8*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  store i32** %0, i32*** %28, align 8
  store i8** %1, i8*** %29, align 8
  store i32* %2, i32** %30, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %31, align 8
  store i8* %4, i8** %32, align 8
  store i8* %5, i8** %33, align 8
  store i8* %6, i8** %34, align 8
  store i32* %7, i32** %35, align 8
  store i32 %8, i32* %36, align 4
  store i32 %9, i32* %37, align 4
  store i32 %10, i32* %38, align 4
  store i32 %11, i32* %39, align 4
  store i32 %12, i32* %40, align 4
  store i8* %13, i8** %41, align 8
  store i32* %14, i32** %42, align 8
  store i32 %15, i32* %43, align 4
  store i8* %16, i8** %44, align 8
  store i32 %17, i32* %45, align 4
  store i8* %18, i8** %46, align 8
  store i32 %19, i32* %47, align 4
  store i8* %20, i8** %48, align 8
  store i32 %21, i32* %49, align 4
  store i8* %22, i8** %50, align 8
  store i32 %23, i32* %51, align 4
  store i8* %24, i8** %52, align 8
  store i32* %25, i32** %53, align 8
  store i32* %26, i32** %54, align 8
  %55 = load i8*, i8** %34, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %27
  %58 = load i8*, i8** %34, align 8
  %59 = load i32*, i32** %54, align 8
  %60 = call i64 @svn_uri_is_canonical(i8* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %27
  %63 = phi i1 [ false, %27 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @SVN_ERR_ASSERT(i32 %64)
  %66 = load i32*, i32** %30, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %32, align 8
  %71 = load i8*, i8** %33, align 8
  %72 = load i32*, i32** %35, align 8
  %73 = load i32, i32* %36, align 4
  %74 = load i8*, i8** %34, align 8
  %75 = load i32, i32* %37, align 4
  %76 = load i32, i32* %38, align 4
  %77 = load i32, i32* %39, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* %40, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* %51, align 4
  %82 = load i8*, i8** %52, align 8
  %83 = load i32, i32* %49, align 4
  %84 = load i8*, i8** %50, align 8
  %85 = load i32, i32* %43, align 4
  %86 = load i8*, i8** %44, align 8
  %87 = load i32, i32* %45, align 4
  %88 = load i8*, i8** %46, align 8
  %89 = load i32, i32* %47, align 4
  %90 = load i8*, i8** %48, align 8
  %91 = load i8*, i8** %41, align 8
  %92 = load i32*, i32** %42, align 8
  %93 = load i32**, i32*** %28, align 8
  %94 = load i8**, i8*** %29, align 8
  %95 = load i32*, i32** %53, align 8
  %96 = load i32*, i32** %54, align 8
  %97 = call i32* @make_editor(i32* %66, i32 %69, i8* %70, i8* %71, i32* %72, i32 %73, i8* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i8* %82, i32 %83, i8* %84, i32 %85, i8* %86, i32 %87, i8* %88, i32 %89, i8* %90, i8* %91, i32* %92, i32** %93, i8** %94, i32* %95, i32* %96)
  ret i32* %97
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i32* @make_editor(i32*, i32, i8*, i8*, i32*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i32*, i32**, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
