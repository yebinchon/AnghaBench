; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_traversal_info_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_traversal_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.traversal_info_update_baton = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32*)* @traversal_info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @traversal_info_update(i8* %0, i8* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.traversal_info_update_baton*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.traversal_info_update_baton*
  store %struct.traversal_info_update_baton* %19, %struct.traversal_info_update_baton** %15, align 8
  %20 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %15, align 8
  %21 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  store i8* null, i8** %17, align 8
  %25 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %15, align 8
  %26 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32* @svn_wc__adm_retrieve_internal2(i32 %27, i8* %28, i32* %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %6
  %34 = load i32*, i32** %16, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i8* @svn_wc_adm_access_path(i32* %35)
  %37 = call i8* @apr_pstrdup(i32* %34, i8* %36)
  store i8* %37, i8** %13, align 8
  br label %42

38:                                               ; preds = %6
  %39 = load i32*, i32** %16, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @apr_pstrdup(i32* %39, i8* %40)
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32*, i32** %16, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @apr_pstrmemdup(i32* %46, i32 %49, i32 %52)
  store i8* %53, i8** %17, align 8
  %54 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %15, align 8
  %55 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = call i32 @svn_hash_sets(i32 %58, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %45, %42
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = icmp ne %struct.TYPE_6__* %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32*, i32** %16, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @apr_pstrmemdup(i32* %70, i32 %73, i32 %76)
  store i8* %77, i8** %17, align 8
  br label %78

78:                                               ; preds = %69, %65
  %79 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %15, align 8
  %80 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @svn_hash_sets(i32 %83, i8* %84, i8* %85)
  br label %87

87:                                               ; preds = %78, %62
  %88 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %15, align 8
  %89 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i8* @svn_depth_to_word(i32 %94)
  %96 = call i32 @svn_hash_sets(i32 %92, i8* %93, i8* %95)
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_wc_adm_access_path(i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i8*) #1

declare dso_local i8* @svn_depth_to_word(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
