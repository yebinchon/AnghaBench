; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_fs_fs__path_rev(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_6__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_6__* %24, i32 %25, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @apr_psprintf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @svn_dirent_join(i32 %27, i32 %30, i32* %31)
  store i8* %32, i8** %4, align 8
  br label %44

33:                                               ; preds = %3
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PATH_REVS_DIR, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @apr_psprintf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @SVN_VA_NULL, align 4
  %43 = call i8* @svn_dirent_join_many(i32* %34, i32 %37, i32 %38, i32 %41, i32 %42)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %33, %23
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i8* @svn_dirent_join_many(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
