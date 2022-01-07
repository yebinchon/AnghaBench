; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_status_editor3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_status_editor3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_editor3_compat_baton = type { i8*, i32 }

@status_editor3_compat_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_status_editor3(i32** %0, i8** %1, i8** %2, i32* %3, i32* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i8* %11, i32 %12, i8* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.status_editor3_compat_baton*, align 8
  store i32** %0, i32*** %17, align 8
  store i8** %1, i8*** %18, align 8
  store i8** %2, i8*** %19, align 8
  store i32* %3, i32** %20, align 8
  store i32* %4, i32** %21, align 8
  store i8* %5, i8** %22, align 8
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32* %9, i32** %26, align 8
  store i32 %10, i32* %27, align 4
  store i8* %11, i8** %28, align 8
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %34 = load i32*, i32** %32, align 8
  %35 = call %struct.status_editor3_compat_baton* @apr_palloc(i32* %34, i32 16)
  store %struct.status_editor3_compat_baton* %35, %struct.status_editor3_compat_baton** %33, align 8
  %36 = load i32, i32* %27, align 4
  %37 = load %struct.status_editor3_compat_baton*, %struct.status_editor3_compat_baton** %33, align 8
  %38 = getelementptr inbounds %struct.status_editor3_compat_baton, %struct.status_editor3_compat_baton* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %28, align 8
  %40 = load %struct.status_editor3_compat_baton*, %struct.status_editor3_compat_baton** %33, align 8
  %41 = getelementptr inbounds %struct.status_editor3_compat_baton, %struct.status_editor3_compat_baton* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32**, i32*** %17, align 8
  %43 = load i8**, i8*** %18, align 8
  %44 = load i8**, i8*** %19, align 8
  %45 = load i32*, i32** %20, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = load i8*, i8** %22, align 8
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %25, align 4
  %51 = load i32*, i32** %26, align 8
  %52 = load i32, i32* @status_editor3_compat_func, align 4
  %53 = load %struct.status_editor3_compat_baton*, %struct.status_editor3_compat_baton** %33, align 8
  %54 = load i32, i32* %29, align 4
  %55 = load i8*, i8** %30, align 8
  %56 = load i32*, i32** %31, align 8
  %57 = load i32*, i32** %32, align 8
  %58 = call i32* @svn_wc_get_status_editor4(i32** %42, i8** %43, i8** %44, i32* %45, i32* %46, i8* %47, i32 %48, i32 %49, i32 %50, i32* %51, i32 %52, %struct.status_editor3_compat_baton* %53, i32 %54, i8* %55, i32* %56, i32* %57)
  ret i32* %58
}

declare dso_local %struct.status_editor3_compat_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_wc_get_status_editor4(i32**, i8**, i8**, i32*, i32*, i8*, i32, i32, i32, i32*, i32, %struct.status_editor3_compat_baton*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
