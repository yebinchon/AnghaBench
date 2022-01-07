; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__internal_propget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__internal_propget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_prop_entry_kind = common dso_local global i32 0, align 4
@svn_prop_wc_kind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to load properties\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_propget(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @svn_property_kind2(i8* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @svn_dirent_is_absolute(i8* %17)
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @svn_prop_entry_kind, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @svn_prop_wc_kind, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_wc__db_base_get_dav_cache(i32** %13, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @SVN_ERR_W(i32 %33, i32 %34)
  br label %44

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_wc__get_actual_props(i32** %13, i32* %37, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @SVN_ERR_W(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32* @svn_hash_gets(i32* %48, i8* %49)
  %51 = load i32**, i32*** %7, align 8
  store i32* %50, i32** %51, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i32**, i32*** %7, align 8
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local i32 @svn_property_kind2(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_wc__db_base_get_dav_cache(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc__get_actual_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
