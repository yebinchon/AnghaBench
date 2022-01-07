; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_svn_client__ensure_revprop_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_svn_client__ensure_revprop_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_CLIENT_PROPERTY_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Standard properties can't be set explicitly as revision properties\00", align 1
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__ensure_revprop_table(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i64 @svn_prop_has_svn_prop(i32* %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @SVN_ERR_CLIENT_PROPERTY_NAME, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @svn_error_create(i32 %21, i32* null, i32 %22)
  store i32* %23, i32** %6, align 8
  br label %41

24:                                               ; preds = %15
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @apr_hash_copy(i32* %25, i32* %26)
  store i32* %27, i32** %12, align 8
  br label %31

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = call i32* @apr_hash_make(i32* %29)
  store i32* %30, i32** %12, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_string_create(i8* %34, i32* %35)
  %37 = call i32 @svn_hash_sets(i32* %32, i32 %33, i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %31, %20
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local i64 @svn_prop_has_svn_prop(i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_copy(i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
