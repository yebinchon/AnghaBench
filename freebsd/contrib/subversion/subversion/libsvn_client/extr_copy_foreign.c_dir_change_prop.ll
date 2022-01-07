; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_dir_change_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_dir_change_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, i64, i32, %struct.edit_baton_t* }
%struct.edit_baton_t = type { i32 }

@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_empty = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @dir_change_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dir_change_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton_t*, align 8
  %11 = alloca %struct.edit_baton_t*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.dir_baton_t*
  store %struct.dir_baton_t* %14, %struct.dir_baton_t** %10, align 8
  %15 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %16 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %15, i32 0, i32 4
  %17 = load %struct.edit_baton_t*, %struct.edit_baton_t** %16, align 8
  store %struct.edit_baton_t* %17, %struct.edit_baton_t** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @svn_property_kind2(i8* %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @svn_prop_regular_kind, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %26 = call i32 @strcmp(i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %4
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %5, align 8
  br label %82

30:                                               ; preds = %23
  %31 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %32 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %30
  %36 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %37 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %42 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @apr_hash_make(i32 %43)
  %45 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %46 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %52 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %55 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @apr_pstrdup(i32 %56, i8* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %61 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @svn_string_dup(i32* %59, i32 %62)
  %64 = call i32 @svn_hash_sets(i64 %53, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %50, %47
  br label %80

66:                                               ; preds = %30
  %67 = load %struct.edit_baton_t*, %struct.edit_baton_t** %11, align 8
  %68 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %71 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @svn_depth_empty, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @svn_wc_prop_set4(i32 %69, i32 %72, i8* %73, i32* %74, i32 %75, i32 %76, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %66, %65
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %80, %28
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i64, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_string_dup(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_prop_set4(i32, i32, i8*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
