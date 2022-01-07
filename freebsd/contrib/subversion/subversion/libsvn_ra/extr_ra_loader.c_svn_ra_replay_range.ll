; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_replay_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_replay_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { {}* }

@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_ra_replay_range(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @SVN_IS_VALID_REVNUM(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %9
  %25 = load i64, i64* %13, align 8
  %26 = call i64 @SVN_IS_VALID_REVNUM(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @SVN_IS_VALID_REVNUM(i64 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %24, %9
  %37 = phi i1 [ false, %28 ], [ false, %24 ], [ false, %9 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to %struct.TYPE_15__* (%struct.TYPE_14__*, i64, i64, i64, i32, i32, i32, i8*, i32*)**
  %45 = load %struct.TYPE_15__* (%struct.TYPE_14__*, i64, i64, i64, i32, i32, i32, i8*, i32*)*, %struct.TYPE_15__* (%struct.TYPE_14__*, i64, i64, i64, i32, i32, i32, i8*, i32*)** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i8*, i8** %18, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = call %struct.TYPE_15__* %45(%struct.TYPE_14__* %46, i64 %47, i64 %48, i64 %49, i32 %50, i32 %51, i32 %52, i8* %53, i32* %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %20, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %36
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %60 = icmp ne %struct.TYPE_15__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %36
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %69 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %68)
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %10, align 8
  br label %84

70:                                               ; preds = %61, %58
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %72 = call i32 @svn_error_clear(%struct.TYPE_15__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i8*, i8** %18, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call %struct.TYPE_15__* @replay_range_from_replays(%struct.TYPE_14__* %73, i64 %74, i64 %75, i64 %76, i32 %77, i32 %78, i32 %79, i8* %80, i32* %81)
  %83 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %82)
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %10, align 8
  br label %84

84:                                               ; preds = %70, %67
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  ret %struct.TYPE_15__* %85
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @replay_range_from_replays(%struct.TYPE_14__*, i64, i64, i64, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
