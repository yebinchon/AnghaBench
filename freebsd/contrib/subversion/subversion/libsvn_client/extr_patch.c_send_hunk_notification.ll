; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_send_hunk_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_send_hunk_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 (i32, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32, i32, i32 }

@svn_wc_notify_patch_hunk_already_applied = common dso_local global i32 0, align 4
@svn_wc_notify_patch_rejected_hunk = common dso_local global i32 0, align 4
@svn_wc_notify_patch_applied_hunk = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*)* @send_hunk_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_hunk_notification(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @svn_wc_notify_patch_hunk_already_applied, align 4
  store i32 %18, i32* %12, align 4
  br label %29

19:                                               ; preds = %5
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @svn_wc_notify_patch_rejected_hunk, align 4
  store i32 %25, i32* %12, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @svn_wc_notify_patch_applied_hunk, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %37, %34 ], [ %41, %38 ]
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call %struct.TYPE_10__* @svn_wc_create_notify(i64 %43, i32 %44, i32* %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %11, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @svn_diff_hunk_get_original_start(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @svn_diff_hunk_get_original_length(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @svn_diff_hunk_get_modified_start(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_diff_hunk_get_modified_length(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 %86(i32 %89, %struct.TYPE_10__* %90, i32* %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local %struct.TYPE_10__* @svn_wc_create_notify(i64, i32, i32*) #1

declare dso_local i32 @svn_diff_hunk_get_original_start(i32) #1

declare dso_local i32 @svn_diff_hunk_get_original_length(i32) #1

declare dso_local i32 @svn_diff_hunk_get_modified_start(i32) #1

declare dso_local i32 @svn_diff_hunk_get_modified_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
