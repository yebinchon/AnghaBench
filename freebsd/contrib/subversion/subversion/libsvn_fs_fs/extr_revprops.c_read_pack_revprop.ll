; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_read_pack_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_read_pack_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No such packed revision %ld\00", align 1
@SVN_FS_FS__RECOVERABLE_RETRY_COUNT = common dso_local global i32 0, align 4
@SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to read revprop pack file for r%ld\00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Revprop pack file for r%ld is corrupt\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32*, i32, i32, i32, i32*)* @read_pack_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_pack_revprop(%struct.TYPE_6__** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @svn_fs_fs__is_packed_revprop(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @svn_fs_fs__update_min_unpacked_rev(i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @svn_fs_fs__is_packed_revprop(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %40)
  store i32* %41, i32** %7, align 8
  br label %123

42:                                               ; preds = %32
  %43 = load i32*, i32** %13, align 8
  %44 = call %struct.TYPE_6__* @apr_pcalloc(i32* %43, i32 16)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %17, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %88, %42
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @SVN_FS_FS__RECOVERABLE_RETRY_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi i1 [ false, %48 ], [ %57, %52 ]
  br i1 %59, label %60, label %91

60:                                               ; preds = %58
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @svn_pool_clear(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @get_revprop_packname(i32* %63, %struct.TYPE_6__* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i8* @svn_dirent_join(i32 %71, i32 %74, i32* %75)
  store i8* %76, i8** %19, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %19, align 8
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* @SVN_FS_FS__RECOVERABLE_RETRY_COUNT, align 4
  %83 = icmp slt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @svn_fs_fs__try_stringbuf_from_file(i32* %78, i32* %15, i8* %79, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %60
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %48

91:                                               ; preds = %58
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %10, align 4
  %100 = call i32* @svn_error_createf(i32 %97, i32* null, i32 %98, i32 %99)
  store i32* %100, i32** %7, align 8
  br label %123

101:                                              ; preds = %91
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32* @parse_packed_revprops(i32* %102, %struct.TYPE_6__* %103, i32 %104, i32 %105, i32* %106, i32* %107)
  store i32* %108, i32** %16, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @svn_pool_destroy(i32* %109)
  %111 = load i32*, i32** %16, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %10, align 4
  %118 = call i32* @svn_error_createf(i32 %114, i32* %115, i32 %116, i32 %117)
  store i32* %118, i32** %7, align 8
  br label %123

119:                                              ; preds = %101
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %121, align 8
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %122, i32** %7, align 8
  br label %123

123:                                              ; preds = %119, %113, %96, %37
  %124 = load i32*, i32** %7, align 8
  ret i32* %124
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_fs__is_packed_revprop(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__update_min_unpacked_rev(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @get_revprop_packname(i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__try_stringbuf_from_file(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32* @parse_packed_revprops(i32*, %struct.TYPE_6__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
