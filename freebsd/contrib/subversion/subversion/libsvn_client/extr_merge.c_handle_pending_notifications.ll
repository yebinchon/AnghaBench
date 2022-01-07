; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_handle_pending_notifications.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_handle_pending_notifications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.merge_dir_baton_t = type { i32* }

@svn_wc_notify_update_delete = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.merge_dir_baton_t*, i32*)* @handle_pending_notifications to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_pending_notifications(%struct.TYPE_9__* %0, %struct.merge_dir_baton_t* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.merge_dir_baton_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.merge_dir_baton_t* %1, %struct.merge_dir_baton_t** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %5, align 8
  %18 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %61

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %5, align 8
  %24 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32* @apr_hash_first(i32* %22, i32* %25)
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %55, %21
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @apr_hash_this_key(i32* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @svn_wc_notify_update_delete, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call %struct.TYPE_8__* @svn_wc_create_notify(i8* %33, i32 %34, i32* %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @apr_hash_this_val(i32* %37)
  %39 = call i32 @svn_node_kind_from_word(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 %46(i32 %51, %struct.TYPE_8__* %52, i32* %53)
  br label %55

55:                                               ; preds = %30
  %56 = load i32*, i32** %7, align 8
  %57 = call i32* @apr_hash_next(i32* %56)
  store i32* %57, i32** %7, align 8
  br label %27

58:                                               ; preds = %27
  %59 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %5, align 8
  %60 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %16, %3
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_node_kind_from_word(i32) #1

declare dso_local i32 @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
