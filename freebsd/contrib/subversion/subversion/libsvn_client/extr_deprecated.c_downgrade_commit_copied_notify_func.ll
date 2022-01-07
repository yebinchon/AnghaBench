; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_downgrade_commit_copied_notify_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_downgrade_commit_copied_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.downgrade_commit_copied_notify_baton = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)* }

@svn_wc_notify_commit_copied = common dso_local global i64 0, align 8
@svn_wc_notify_commit_added = common dso_local global i64 0, align 8
@svn_wc_notify_commit_copied_replaced = common dso_local global i64 0, align 8
@svn_wc_notify_commit_replaced = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i32*)* @downgrade_commit_copied_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downgrade_commit_copied_notify_func(i8* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.downgrade_commit_copied_notify_baton*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.downgrade_commit_copied_notify_baton*
  store %struct.downgrade_commit_copied_notify_baton* %11, %struct.downgrade_commit_copied_notify_baton** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @svn_wc_notify_commit_copied, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_6__* @svn_wc_dup_notify(%struct.TYPE_6__* %18, i32* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load i64, i64* @svn_wc_notify_commit_added, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  br label %40

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @svn_wc_notify_commit_copied_replaced, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_6__* @svn_wc_dup_notify(%struct.TYPE_6__* %32, i32* %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %9, align 8
  %35 = load i64, i64* @svn_wc_notify_commit_replaced, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %5, align 8
  br label %39

39:                                               ; preds = %31, %25
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.downgrade_commit_copied_notify_baton*, %struct.downgrade_commit_copied_notify_baton** %7, align 8
  %42 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %41, i32 0, i32 1
  %43 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %42, align 8
  %44 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.downgrade_commit_copied_notify_baton*, %struct.downgrade_commit_copied_notify_baton** %7, align 8
  %47 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %46, i32 0, i32 1
  %48 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %47, align 8
  %49 = load %struct.downgrade_commit_copied_notify_baton*, %struct.downgrade_commit_copied_notify_baton** %7, align 8
  %50 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 %48(i32 %51, %struct.TYPE_6__* %52, i32* %53)
  br label %55

55:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.TYPE_6__* @svn_wc_dup_notify(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
