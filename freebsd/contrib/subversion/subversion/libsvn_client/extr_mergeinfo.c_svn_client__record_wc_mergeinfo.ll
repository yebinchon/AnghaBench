; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__record_wc_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__record_wc_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)*, i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_merge_record_info = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__record_wc_mergeinfo(i8* %0, i32 %1, i64 %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @svn_dirent_is_absolute(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_mergeinfo_to_string(i32** %11, i32 %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  br label %25

25:                                               ; preds = %20, %5
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %30, align 8
  %32 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @svn_client__mergeinfo_status(i64* %12, i32 %36, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %33, %28, %25
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @svn_depth_empty, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @svn_wc_prop_set4(i32 %44, i8* %45, i32 %46, i32* %47, i32 %48, i32 %49, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %57, align 8
  %59 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @svn_wc_notify_merge_record_info, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %61, i32 %62, i32* %63)
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @svn_wc_notify_state_changed, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 %78(i32 %81, %struct.TYPE_6__* %82, i32* %83)
  br label %85

85:                                               ; preds = %75, %55, %41
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_to_string(i32**, i32, i32*) #1

declare dso_local i32 @svn_client__mergeinfo_status(i64*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_prop_set4(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
