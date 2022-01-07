; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_edit_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_edit_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton_t = type { i32*, i8*, i32, i8*, i8*, i8*, i32, i32*, i8*, i8*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.edit_baton_t**, i32*, i8*, i8*, i32*, i32, i8*, i8*, i8*, i32, i8*, i32*)* @make_edit_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_edit_baton(%struct.edit_baton_t** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32 %5, i8* %6, i8* %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.edit_baton_t**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.edit_baton_t*, align 8
  store %struct.edit_baton_t** %0, %struct.edit_baton_t*** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = call i32 @svn_dirent_is_absolute(i8* %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i32*, i32** %24, align 8
  %30 = call %struct.edit_baton_t* @apr_pcalloc(i32* %29, i32 88)
  store %struct.edit_baton_t* %30, %struct.edit_baton_t** %25, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %33 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %32, i32 0, i32 10
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %24, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i8* @apr_pstrdup(i32* %34, i8* %35)
  %37 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %38 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = call i8* @apr_pstrdup(i32* %39, i8* %40)
  %42 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %43 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %46 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %49 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %52 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %55 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %58 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %22, align 4
  %60 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %61 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %64 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %24, align 8
  %66 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %67 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.edit_baton_t*, %struct.edit_baton_t** %25, align 8
  %69 = load %struct.edit_baton_t**, %struct.edit_baton_t*** %13, align 8
  store %struct.edit_baton_t* %68, %struct.edit_baton_t** %69, align 8
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.edit_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
