; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_svn_fs_x__set_rep_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_svn_fs_x__set_rep_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32, i32 }

@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Only SHA1 checksums can be used as keys in the rep_cache table.\0A\00", align 1
@STMT_SET_REP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"siiii\00", align 1
@SVN_ERR_SQLITE_CONSTRAINT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_25__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @svn_fs_x__set_rep_reference(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %8, align 8
  %16 = load i32, i32* @svn_checksum_sha1, align 4
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_fs_x__open_rep_cache(%struct.TYPE_24__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %43 = call %struct.TYPE_25__* @svn_error_create(i32 %41, i32* null, i32 %42)
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %4, align 8
  br label %101

44:                                               ; preds = %35
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STMT_SET_REP, align 4
  %49 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_checksum_to_cstring(%struct.TYPE_26__* %11, i32* %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @svn_sqlite__bindf(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58, i32 %63, i32 %67, i32 %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call %struct.TYPE_25__* @svn_sqlite__insert(i32* null, i32* %74)
  store %struct.TYPE_25__* %75, %struct.TYPE_25__** %10, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %77 = icmp ne %struct.TYPE_25__* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %44
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_SQLITE_CONSTRAINT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %86 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %85)
  store %struct.TYPE_25__* %86, %struct.TYPE_25__** %4, align 8
  br label %101

87:                                               ; preds = %78
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %89 = call i32 @svn_error_clear(%struct.TYPE_25__* %88)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @svn_fs_x__get_rep_reference(%struct.TYPE_22__** %12, %struct.TYPE_24__* %90, %struct.TYPE_26__* %11, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %96 = icmp ne %struct.TYPE_22__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %87
  br label %99

99:                                               ; preds = %98, %44
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %4, align 8
  br label %101

101:                                              ; preds = %99, %84, %40
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  ret %struct.TYPE_25__* %102
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__open_rep_cache(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(%struct.TYPE_26__*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_sqlite__insert(i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_25__*) #1

declare dso_local i32 @svn_fs_x__get_rep_reference(%struct.TYPE_22__**, %struct.TYPE_24__*, %struct.TYPE_26__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
