; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_file_revs2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_file_revs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { {}* }

@SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_ra_get_file_revs2(%struct.TYPE_16__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @svn_relpath_is_canonical(i8* %18)
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @svn_ra__assert_mergeinfo_capable_server(%struct.TYPE_16__* %24, i32* null, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  br label %28

28:                                               ; preds = %23, %8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @SVN_IS_VALID_REVNUM(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = load i32, i32* @SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = call i32 @svn_ra__assert_capable_server(%struct.TYPE_16__* %37, i32 %38, i32* null, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to %struct.TYPE_17__* (%struct.TYPE_16__*, i8*, i64, i64, i64, i32, i8*, i32*)**
  %48 = load %struct.TYPE_17__* (%struct.TYPE_16__*, i8*, i64, i64, i64, i32, i8*, i32*)*, %struct.TYPE_17__* (%struct.TYPE_16__*, i8*, i64, i64, i64, i32, i8*, i32*)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %15, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = call %struct.TYPE_17__* %48(%struct.TYPE_16__* %49, i8* %50, i64 %51, i64 %52, i64 %53, i32 %54, i8* %55, i32* %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %17, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %42
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %71 = call i32 @svn_error_clear(%struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = call %struct.TYPE_17__* @svn_ra__file_revs_from_log(%struct.TYPE_16__* %72, i8* %73, i64 %74, i64 %75, i32 %76, i8* %77, i32* %78)
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %17, align 8
  br label %80

80:                                               ; preds = %69, %66, %60, %42
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %82 = call %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__* %81)
  ret %struct.TYPE_17__* %82
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra__assert_mergeinfo_capable_server(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_ra__assert_capable_server(%struct.TYPE_16__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_ra__file_revs_from_log(%struct.TYPE_16__*, i8*, i64, i64, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_trace(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
