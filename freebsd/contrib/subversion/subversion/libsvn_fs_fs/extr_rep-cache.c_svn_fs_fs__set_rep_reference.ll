; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_svn_fs_fs__set_rep_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_svn_fs_fs__set_rep_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Only SHA1 checksums can be used as keys in the rep_cache table.\0A\00", align 1
@STMT_SET_REP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"siiii\00", align 1
@SVN_ERR_SQLITE_CONSTRAINT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @svn_fs_fs__set_rep_reference(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  %16 = load i32, i32* @svn_checksum_sha1, align 4
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_fs_fs__open_rep_cache(%struct.TYPE_20__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %43 = call %struct.TYPE_21__* @svn_error_create(i32 %41, i32* null, i32 %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %4, align 8
  br label %98

44:                                               ; preds = %35
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STMT_SET_REP, align 4
  %49 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_checksum_to_cstring(%struct.TYPE_22__* %11, i32* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @svn_sqlite__bindf(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i32 %65, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call %struct.TYPE_21__* @svn_sqlite__insert(i32* null, i32* %72)
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %10, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %75 = icmp ne %struct.TYPE_21__* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %44
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SVN_ERR_SQLITE_CONSTRAINT, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %84 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %83)
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %4, align 8
  br label %98

85:                                               ; preds = %76
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = call i32 @svn_error_clear(%struct.TYPE_21__* %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @svn_fs_fs__get_rep_reference(%struct.TYPE_23__** %12, %struct.TYPE_20__* %88, %struct.TYPE_22__* %11, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %93 = icmp ne %struct.TYPE_23__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %44
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %4, align 8
  br label %98

98:                                               ; preds = %96, %82, %40
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %99
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__open_rep_cache(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(%struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_sqlite__insert(i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_fs_fs__get_rep_reference(%struct.TYPE_23__**, %struct.TYPE_20__*, %struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
