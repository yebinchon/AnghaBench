; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_locks2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_locks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_get_locks2(%struct.TYPE_6__* %0, i32** %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @svn_relpath_is_canonical(i8* %11)
  %13 = call i32 @SVN_ERR_ASSERT(i32 %12)
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @svn_depth_empty, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @svn_depth_files, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @svn_depth_immediates, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @svn_depth_infinity, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21, %17, %5
  %30 = phi i1 [ true, %21 ], [ true, %17 ], [ true, %5 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32* (%struct.TYPE_6__*, i32**, i8*, i64, i32*)**
  %38 = load i32* (%struct.TYPE_6__*, i32**, i8*, i64, i32*)*, i32* (%struct.TYPE_6__*, i32**, i8*, i64, i32*)** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* %38(%struct.TYPE_6__* %39, i32** %40, i8* %41, i64 %42, i32* %43)
  ret i32* %44
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
