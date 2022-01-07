; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_base_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@FORMAT_FILE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@SVN_FS_BASE__FORMAT_NUMBER = common dso_local global i32 0, align 4
@svn_fs_upgrade_format_bumped = common dso_local global i32 0, align 4
@SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, i8*, %struct.TYPE_14__* (i8*, i32, i32, i32*)*, i8*, i32, i8*, i32*, i32*, i32*)* @base_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @base_upgrade(i32* %0, i8* %1, %struct.TYPE_14__* (i8*, i32, i32, i32*)* %2, i8* %3, i32 %4, i8* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__* (i8*, i32, i32, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_14__* (i8*, i32, i32, i32*)* %2, %struct.TYPE_14__* (i8*, i32, i32, i32*)** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @FORMAT_FILE, align 4
  %27 = load i32*, i32** %17, align 8
  %28 = call i8* @svn_dirent_join(i8* %25, i32 %26, i32* %27)
  store i8* %28, i8** %19, align 8
  %29 = load i8*, i8** %19, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call %struct.TYPE_14__* @svn_io_read_version_file(i32* %20, i8* %29, i32* %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %21, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %9
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @APR_STATUS_IS_ENOENT(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  store i32 0, i32* %20, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %42 = call i32 @svn_error_clear(%struct.TYPE_14__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %21, align 8
  br label %44

44:                                               ; preds = %40, %34, %9
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %46 = call i32 @SVN_ERR(%struct.TYPE_14__* %45)
  %47 = load i32, i32* %20, align 4
  %48 = call %struct.TYPE_14__* @check_format(i32 %47)
  %49 = call i32 @SVN_ERR(%struct.TYPE_14__* %48)
  %50 = load i8*, i8** %19, align 8
  %51 = load i32, i32* @SVN_FS_BASE__FORMAT_NUMBER, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = call %struct.TYPE_14__* @svn_io_write_version_file(i8* %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(%struct.TYPE_14__* %53)
  %55 = load %struct.TYPE_14__* (i8*, i32, i32, i32*)*, %struct.TYPE_14__* (i8*, i32, i32, i32*)** %12, align 8
  %56 = icmp ne %struct.TYPE_14__* (i8*, i32, i32, i32*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.TYPE_14__* (i8*, i32, i32, i32*)*, %struct.TYPE_14__* (i8*, i32, i32, i32*)** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @SVN_FS_BASE__FORMAT_NUMBER, align 4
  %61 = load i32, i32* @svn_fs_upgrade_format_bumped, align 4
  %62 = load i32*, i32** %17, align 8
  %63 = call %struct.TYPE_14__* %58(i8* %59, i32 %60, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(%struct.TYPE_14__* %63)
  br label %65

65:                                               ; preds = %57, %44
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i32*, i32** %17, align 8
  %71 = call i32* @svn_pool_create(i32* %70)
  store i32* %71, i32** %22, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = call %struct.TYPE_14__* @base_open(i32* %72, i8* %73, i32* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(%struct.TYPE_14__* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %22, align 8
  %81 = call %struct.TYPE_14__* @svn_fs_base__youngest_rev(i32* %23, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(%struct.TYPE_14__* %81)
  %83 = load i32*, i32** %22, align 8
  %84 = load i32, i32* %23, align 4
  %85 = call i8* @apr_psprintf(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i8* %85, i8** %24, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* @SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, align 4
  %88 = load i8*, i8** %24, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = call %struct.TYPE_14__* @svn_fs_base__miscellaneous_set(i32* %86, i32 %87, i8* %88, i32* %89)
  %91 = call i32 @SVN_ERR(%struct.TYPE_14__* %90)
  %92 = load i32*, i32** %22, align 8
  %93 = call i32 @svn_pool_destroy(i32* %92)
  br label %94

94:                                               ; preds = %69, %65
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_14__* %95
}

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_io_read_version_file(i32*, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @check_format(i32) #1

declare dso_local %struct.TYPE_14__* @svn_io_write_version_file(i8*, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_14__* @base_open(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_fs_base__youngest_rev(i32*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @svn_fs_base__miscellaneous_set(i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
