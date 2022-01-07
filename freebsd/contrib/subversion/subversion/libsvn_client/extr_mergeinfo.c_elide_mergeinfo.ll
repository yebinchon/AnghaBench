; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_elide_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_elide_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (i32, %struct.TYPE_7__*, i32*)*, i32 }
%struct.TYPE_7__ = type { i32 }

@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_merge_elide_info = common dso_local global i32 0, align 4
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8*, %struct.TYPE_8__*, i32*)* @elide_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @elide_mergeinfo(i32 %0, i32 %1, i8* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @svn_dirent_is_absolute(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @should_elide_mergeinfo(i64* %11, i32 %16, i32 %17, i32* null, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %29 = load i32, i32* @svn_depth_empty, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_wc_prop_set4(i32 %26, i8* %27, i32 %28, i32* null, i32 %29, i32 %30, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32 (i32, %struct.TYPE_7__*, i32*)*, i32 (i32, %struct.TYPE_7__*, i32*)** %35, align 8
  %37 = icmp ne i32 (i32, %struct.TYPE_7__*, i32*)* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %23
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @svn_wc_notify_merge_elide_info, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call %struct.TYPE_7__* @svn_wc_create_notify(i8* %39, i32 %40, i32* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %12, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32 (i32, %struct.TYPE_7__*, i32*)*, i32 (i32, %struct.TYPE_7__*, i32*)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 %45(i32 %48, %struct.TYPE_7__* %49, i32* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @svn_wc_notify_update_update, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call %struct.TYPE_7__* @svn_wc_create_notify(i8* %52, i32 %53, i32* %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %12, align 8
  %56 = load i32, i32* @svn_wc_notify_state_changed, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32 (i32, %struct.TYPE_7__*, i32*)*, i32 (i32, %struct.TYPE_7__*, i32*)** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 %61(i32 %64, %struct.TYPE_7__* %65, i32* %66)
  br label %68

68:                                               ; preds = %38, %23
  br label %69

69:                                               ; preds = %68, %5
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @should_elide_mergeinfo(i64*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_prop_set4(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
