; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_update_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_update_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.merge_dir_baton_t = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, %struct.merge_dir_baton_t*, i8*, i32, i32*)* @record_update_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @record_update_delete(%struct.TYPE_6__* %0, %struct.merge_dir_baton_t* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.merge_dir_baton_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.merge_dir_baton_t* %1, %struct.merge_dir_baton_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17, %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @svn_hash_sets(i64 %25, i8* %26, i32* null)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @store_path(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @notify_merge_begin(%struct.TYPE_6__* %34, i8* %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %41 = icmp ne %struct.merge_dir_baton_t* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %44 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @apr_pstrdup(i32 %45, i8* %46)
  store i8* %47, i8** %11, align 8
  %48 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %49 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %42
  %53 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %54 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @apr_hash_make(i32 %55)
  %57 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %58 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %42
  %60 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %61 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32* @svn_node_kind_to_word(i32 %64)
  %66 = call i32 @svn_hash_sets(i64 %62, i8* %63, i32* %65)
  br label %67

67:                                               ; preds = %59, %33
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @notify_merge_begin(%struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i64 @apr_hash_make(i32) #1

declare dso_local i32* @svn_node_kind_to_word(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
