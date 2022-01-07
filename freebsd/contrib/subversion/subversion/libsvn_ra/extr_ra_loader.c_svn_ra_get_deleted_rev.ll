; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_deleted_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_deleted_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { {}* }

@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid peg revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid end revision %ld\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Peg revision must precede end revision\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_ra_get_deleted_rev(%struct.TYPE_14__* %0, i8* %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @svn_relpath_is_canonical(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @SVN_IS_VALID_REVNUM(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.TYPE_15__* @svn_error_createf(i32 %22, i32* null, i32 %23, i64 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %7, align 8
  br label %77

26:                                               ; preds = %6
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @SVN_IS_VALID_REVNUM(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.TYPE_15__* @svn_error_createf(i32 %31, i32* null, i32 %32, i64 %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %7, align 8
  br label %77

35:                                               ; preds = %26
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %42 = call %struct.TYPE_15__* @svn_error_create(i32 %40, i32* null, i32 %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %7, align 8
  br label %77

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to %struct.TYPE_15__* (%struct.TYPE_14__*, i8*, i64, i64, i64*, i32*)**
  %49 = load %struct.TYPE_15__* (%struct.TYPE_14__*, i8*, i64, i64, i64*, i32*)*, %struct.TYPE_15__* (%struct.TYPE_14__*, i8*, i64, i64, i64*, i32*)** %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call %struct.TYPE_15__* %49(%struct.TYPE_14__* %50, i8* %51, i64 %52, i64 %53, i64* %54, i32* %55)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %14, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %43
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = call i32 @svn_error_clear(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64*, i64** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call %struct.TYPE_15__* @svn_ra__get_deleted_rev_from_log(%struct.TYPE_14__* %68, i8* %69, i64 %70, i64 %71, i64* %72, i32* %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %14, align 8
  br label %75

75:                                               ; preds = %65, %59, %43
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %7, align 8
  br label %77

77:                                               ; preds = %75, %39, %30, %21
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %78
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_15__* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_15__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_ra__get_deleted_rev_from_log(%struct.TYPE_14__*, i8*, i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
