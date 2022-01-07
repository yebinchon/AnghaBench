; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_pack_notify_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_pack_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_notify_baton = type { i32, i32 (i32, %struct.TYPE_4__*, i32*)* }
%struct.TYPE_4__ = type { i32 }

@svn_fs_pack_notify_start = common dso_local global i64 0, align 8
@svn_fs_pack_notify_noop = common dso_local global i64 0, align 8
@svn_repos_notify_pack_noop = common dso_local global i64 0, align 8
@svn_repos_notify_pack_shard_start = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i64, i32*)* @pack_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_notify_func(i8* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pack_notify_baton*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.pack_notify_baton*
  store %struct.pack_notify_baton* %13, %struct.pack_notify_baton** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @svn_fs_pack_notify_start, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @svn_fs_pack_notify_noop, align 8
  %20 = icmp sle i64 %18, %19
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi i1 [ false, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @svn_fs_pack_notify_noop, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @svn_repos_notify_pack_noop, align 8
  br label %36

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @svn_repos_notify_pack_shard_start, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @svn_fs_pack_notify_start, align 8
  %35 = sub nsw i64 %33, %34
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi i64 [ %29, %28 ], [ %35, %30 ]
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call %struct.TYPE_4__* @svn_repos_notify_create(i64 %38, i32* %39)
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pack_notify_baton*, %struct.pack_notify_baton** %9, align 8
  %45 = getelementptr inbounds %struct.pack_notify_baton, %struct.pack_notify_baton* %44, i32 0, i32 1
  %46 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %45, align 8
  %47 = load %struct.pack_notify_baton*, %struct.pack_notify_baton** %9, align 8
  %48 = getelementptr inbounds %struct.pack_notify_baton, %struct.pack_notify_baton* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 %46(i32 %49, %struct.TYPE_4__* %50, i32* %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @svn_repos_notify_create(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
