; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__packed_revprop_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__packed_revprop_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@PATH_MANIFEST = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_fs__packed_revprop_available(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i8* @svn_fs_fs__path_revprops_pack_shard(%struct.TYPE_8__* %20, i32 %21, i32* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** @PATH_MANIFEST, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @svn_dirent_join(i8* %24, i8* %25, i32* %26)
  store i8* %27, i8** %13, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @svn_fs_fs__try_stringbuf_from_file(%struct.TYPE_7__** %11, i32* %28, i8* %29, i32 %30, i32* %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @svn_error_clear(i32* %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %113

39:                                               ; preds = %4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %113

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  br label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %55, %58
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i32 [ %53, %51 ], [ %59, %54 ]
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %107, %60
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %111

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 10)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i8*, i8** %15, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %15, align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i8* @svn_dirent_join(i8* %83, i8* %86, i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32* @svn_io_check_path(i8* %88, i64* %16, i32* %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @svn_error_clear(i32* %94)
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %5, align 4
  br label %113

97:                                               ; preds = %82
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* @svn_node_none, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* @svn_node_file, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %113

107:                                              ; preds = %78
  %108 = load i8*, i8** %15, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %62

111:                                              ; preds = %62
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %97, %93, %43, %35
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i8* @svn_fs_fs__path_revprops_pack_shard(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_fs_fs__try_stringbuf_from_file(%struct.TYPE_7__**, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
