; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_maybe_update_target_eols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_maybe_update_target_eols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32, i8*, i32*, i32*)* @maybe_update_target_eols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_update_target_eols(i8** %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %20 = call %struct.TYPE_5__* @get_prop(i32* %18, i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %15, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @svn_subst_eol_style_from_value(i32* null, i8** %16, i32 %33)
  %35 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_io_open_unique_file3(i32* null, i8** %17, i32* null, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @svn_subst_copy_and_translate4(i8* %40, i8* %41, i8* %42, i32 %43, i32* null, i32 %44, i32 %45, i32 %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = call i8* @apr_pstrdup(i32* %51, i8* %52)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  br label %60

55:                                               ; preds = %23, %7
  %56 = load i32*, i32** %13, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @apr_pstrdup(i32* %56, i8* %57)
  %59 = load i8**, i8*** %8, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %55, %28
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local %struct.TYPE_5__* @get_prop(i32*, i32) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_copy_and_translate4(i8*, i8*, i8*, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
