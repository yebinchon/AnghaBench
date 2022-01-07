; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rev_file.c_open_pack_or_rev_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rev_file.c_open_pack_or_rev_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i64, i32*, i32*)* @open_pack_or_rev_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @open_pack_or_rev_file(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %14, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %16, align 8
  br label %24

24:                                               ; preds = %128, %6
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i8* @svn_fs_fs__path_rev_absolute(%struct.TYPE_19__* %25, i32 %26, i32* %27)
  store i8* %28, i8** %17, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @APR_READ, align 4
  %33 = load i32, i32* @APR_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @APR_BUFFERED, align 4
  %36 = or i32 %34, %35
  br label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @APR_READ, align 4
  %39 = load i32, i32* @APR_BUFFERED, align 4
  %40 = or i32 %38, %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %40, %37 ]
  store i32 %42, i32* %19, align 4
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %17, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call %struct.TYPE_21__* @auto_make_writable(i8* %46, i32* %47, i32* %48)
  br label %52

50:                                               ; preds = %41
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi %struct.TYPE_21__* [ %49, %45 ], [ %51, %50 ]
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %15, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %55 = icmp ne %struct.TYPE_21__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @APR_OS_DEFAULT, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = call %struct.TYPE_21__* @svn_io_file_open(i32** %18, i8* %57, i32 %58, i32 %59, i32* %60)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %15, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %64 = icmp ne %struct.TYPE_21__* %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %18, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @svn_stream_from_aprfile2(i32* %69, i64 %70, i32* %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_19__* %75, i32 %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %7, align 8
  br label %134

81:                                               ; preds = %62
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %83 = icmp ne %struct.TYPE_21__* %82, null
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @APR_STATUS_IS_ENOENT(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SVN_FS_FS__MIN_PACKED_FORMAT, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %98 = call i32 @svn_error_clear(%struct.TYPE_21__* %97)
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %103 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %10, align 4
  %105 = call %struct.TYPE_21__* @svn_error_createf(i32 %102, i32* null, i32 %103, i32 %104)
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %7, align 8
  br label %134

106:                                              ; preds = %96
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @svn_fs_fs__update_min_unpacked_rev(%struct.TYPE_19__* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @svn_fs_fs__packed_base_rev(%struct.TYPE_19__* %111, i32 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %16, align 8
  br label %124

117:                                              ; preds = %90
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %119 = call i32 @svn_error_clear(%struct.TYPE_21__* %118)
  %120 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  %123 = call %struct.TYPE_21__* @svn_error_createf(i32 %120, i32* null, i32 %121, i32 %122)
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %7, align 8
  br label %134

124:                                              ; preds = %106
  br label %127

125:                                              ; preds = %84, %81
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %16, align 8
  br label %127

127:                                              ; preds = %125, %124
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %16, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %24, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %133 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %132)
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %7, align 8
  br label %134

134:                                              ; preds = %131, %117, %101, %65
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %135
}

declare dso_local i8* @svn_fs_fs__path_rev_absolute(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @auto_make_writable(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__update_min_unpacked_rev(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__packed_base_rev(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
