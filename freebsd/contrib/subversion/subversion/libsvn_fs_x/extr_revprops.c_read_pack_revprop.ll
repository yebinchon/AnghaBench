; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_pack_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_pack_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No such packed revision %ld\00", align 1
@SVN_FS_X__RECOVERABLE_RETRY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Revprop pack file for r%ld is corrupt\00", align 1
@SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to read revprop pack file for r%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i32*, i32, i32, i32*, i32*)* @read_pack_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_pack_revprop(%struct.TYPE_7__** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @svn_fs_x__is_packed_revprop(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @svn_fs_x__update_min_unpacked_rev(i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @svn_fs_x__is_packed_revprop(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %40)
  store i32* %41, i32** %7, align 8
  br label %120

42:                                               ; preds = %32
  %43 = load i32*, i32** %12, align 8
  %44 = call %struct.TYPE_7__* @apr_pcalloc(i32* %43, i32 12)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %16, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %103, %42
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  store i32* null, i32** %19, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @svn_pool_clear(i32* %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @get_revprop_packname(i32* %55, %struct.TYPE_7__* %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %14, align 8
  %65 = call i8* @get_revprop_pack_filepath(%struct.TYPE_7__* %61, i32* %63, i32* %64)
  store i8* %65, i8** %18, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %70 = icmp slt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @svn_fs_x__try_stringbuf_from_file(i32** %19, i32* %15, i8* %66, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %19, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %52
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @parse_packed_revprops(i32* %78, %struct.TYPE_7__* %79, i32* %80, i32 %81, i32* %82, i32* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @apr_psprintf(i32* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = call i32 @SVN_ERR_W(i32 %84, i32 %87)
  br label %106

89:                                               ; preds = %52
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i64 @has_revprop_cache(i32* %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @read_revprop_generation(i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %97, %92, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %48

106:                                              ; preds = %77, %48
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, align 4
  %113 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %10, align 4
  %115 = call i32* @svn_error_createf(i32 %112, i32* null, i32 %113, i32 %114)
  store i32* %115, i32** %7, align 8
  br label %120

116:                                              ; preds = %106
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %118, align 8
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %119, i32** %7, align 8
  br label %120

120:                                              ; preds = %116, %111, %37
  %121 = load i32*, i32** %7, align 8
  ret i32* %121
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_x__is_packed_revprop(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__update_min_unpacked_rev(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @get_revprop_packname(i32*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i8* @get_revprop_pack_filepath(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__try_stringbuf_from_file(i32**, i32*, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @parse_packed_revprops(i32*, %struct.TYPE_7__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i64 @has_revprop_cache(i32*, i32*) #1

declare dso_local i32 @read_revprop_generation(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
