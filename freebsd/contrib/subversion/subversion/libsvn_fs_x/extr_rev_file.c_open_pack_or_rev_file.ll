; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rev_file.c_open_pack_or_rev_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rev_file.c_open_pack_or_rev_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32*, i32* }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, i64, i32*)* @open_pack_or_rev_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @open_pack_or_rev_file(%struct.TYPE_15__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = call i32* @get_file_pool(%struct.TYPE_15__* %24)
  store i32* %25, i32** %12, align 8
  br label %26

26:                                               ; preds = %112, %3
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @svn_fs_x__path_rev_absolute(i32* %27, i32 %28, i32* %29)
  store i8* %30, i8** %13, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @APR_READ, align 4
  %35 = load i32, i32* @APR_WRITE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @APR_BUFFERED, align 4
  %38 = or i32 %36, %37
  br label %43

39:                                               ; preds = %26
  %40 = load i32, i32* @APR_READ, align 4
  %41 = load i32, i32* @APR_BUFFERED, align 4
  %42 = or i32 %40, %41
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i32 [ %38, %33 ], [ %42, %39 ]
  store i32 %44, i32* %15, align 4
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_16__* @auto_make_writable(i8* %48, i32* %49, i32* %50)
  br label %54

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi %struct.TYPE_16__* [ %51, %47 ], [ %53, %52 ]
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %8, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @APR_OS_DEFAULT, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call %struct.TYPE_16__* @svn_io_file_open(i32** %14, i8* %59, i32 %60, i32 %61, i32* %62)
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %8, align 8
  br label %64

64:                                               ; preds = %58, %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %14, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i64, i64* @TRUE, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @svn_stream_from_aprfile2(i32* %71, i64 %72, i32* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %4, align 8
  br label %118

78:                                               ; preds = %64
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @APR_STATUS_IS_ENOENT(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = call i32 @svn_error_clear(%struct.TYPE_16__* %88)
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %94 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %11, align 4
  %96 = call %struct.TYPE_16__* @svn_error_createf(i32 %93, i32* null, i32 %94, i32 %95)
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %4, align 8
  br label %118

97:                                               ; preds = %87
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @svn_fs_x__update_min_unpacked_rev(i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @svn_fs_x__packed_base_rev(i32* %102, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %9, align 8
  br label %111

109:                                              ; preds = %81, %78
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %109, %97
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %26, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %116)
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %4, align 8
  br label %118

118:                                              ; preds = %115, %92, %67
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %119
}

declare dso_local i32* @get_file_pool(%struct.TYPE_15__*) #1

declare dso_local i8* @svn_fs_x__path_rev_absolute(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @auto_make_writable(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i64, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__update_min_unpacked_rev(i32*, i32*) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
