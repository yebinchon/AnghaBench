; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_location_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_location_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }

@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_ra_get_location_segments(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @svn_relpath_is_canonical(i8* %18)
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to %struct.TYPE_13__* (%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i8*, i32*)**
  %26 = load %struct.TYPE_13__* (%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i8*, i32*)*, %struct.TYPE_13__* (%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i8*, i32*)** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = call %struct.TYPE_13__* %26(%struct.TYPE_12__* %27, i8* %28, i32 %29, i32 %30, i32 %31, i32 %32, i8* %33, i32* %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %17, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %46 = call i32 @svn_error_clear(%struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call %struct.TYPE_13__* @svn_ra__location_segments_from_log(%struct.TYPE_12__* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i8* %53, i32* %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %17, align 8
  br label %56

56:                                               ; preds = %44, %38, %8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  ret %struct.TYPE_13__* %57
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_ra__location_segments_from_log(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
