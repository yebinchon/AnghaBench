; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PATH_CONFIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CONFIG_SECTION_REP_SHARING = common dso_local global i32 0, align 4
@CONFIG_OPTION_ENABLE_REP_SHARING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CONFIG_SECTION_DELTIFICATION = common dso_local global i32 0, align 4
@CONFIG_OPTION_MAX_DELTIFICATION_WALK = common dso_local global i32 0, align 4
@SVN_FS_X_MAX_DELTIFICATION_WALK = common dso_local global i32 0, align 4
@CONFIG_OPTION_MAX_LINEAR_DELTIFICATION = common dso_local global i32 0, align 4
@SVN_FS_X_MAX_LINEAR_DELTIFICATION = common dso_local global i32 0, align 4
@CONFIG_OPTION_COMPRESSION_LEVEL = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_NONE = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_MAX = common dso_local global i32 0, align 4
@CONFIG_SECTION_PACKED_REVPROPS = common dso_local global i32 0, align 4
@CONFIG_OPTION_COMPRESS_PACKED_REVPROPS = common dso_local global i32 0, align 4
@CONFIG_OPTION_REVPROP_PACK_SIZE = common dso_local global i32 0, align 4
@CONFIG_SECTION_IO = common dso_local global i32 0, align 4
@CONFIG_OPTION_BLOCK_SIZE = common dso_local global i32 0, align 4
@CONFIG_OPTION_L2P_PAGE_SIZE = common dso_local global i32 0, align 4
@CONFIG_OPTION_P2L_PAGE_SIZE = common dso_local global i32 0, align 4
@CONFIG_SECTION_DEBUG = common dso_local global i32 0, align 4
@CONFIG_OPTION_PACK_AFTER_COMMIT = common dso_local global i32 0, align 4
@CONFIG_SECTION_CACHES = common dso_local global i32 0, align 4
@CONFIG_OPTION_FAIL_STOP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*, i32*)* @read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_config(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @PATH_CONFIG, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @svn_dirent_join(i8* %11, i32 %12, i32* %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_config_read3(i32** %9, i32 %14, i32 %15, i32 %16, i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 11
  %24 = load i32, i32* @CONFIG_SECTION_REP_SHARING, align 4
  %25 = load i32, i32* @CONFIG_OPTION_ENABLE_REP_SHARING, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @svn_config_get_bool(i32* %21, i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %33 = load i32, i32* @CONFIG_OPTION_MAX_DELTIFICATION_WALK, align 4
  %34 = load i32, i32* @SVN_FS_X_MAX_DELTIFICATION_WALK, align 4
  %35 = call i32 @svn_config_get_int64(i32* %29, i32* %31, i32 %32, i32 %33, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %41 = load i32, i32* @CONFIG_OPTION_MAX_LINEAR_DELTIFICATION, align 4
  %42 = load i32, i32* @SVN_FS_X_MAX_LINEAR_DELTIFICATION, align 4
  %43 = call i32 @svn_config_get_int64(i32* %37, i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %47 = load i32, i32* @CONFIG_OPTION_COMPRESSION_LEVEL, align 4
  %48 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  %49 = call i32 @svn_config_get_int64(i32* %45, i32* %10, i32 %46, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @MAX(i32 %51, i32 %52)
  %54 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_MAX, align 4
  %55 = call i64 @MIN(i32 %53, i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  %62 = load i32, i32* @CONFIG_SECTION_PACKED_REVPROPS, align 4
  %63 = load i32, i32* @CONFIG_OPTION_COMPRESS_PACKED_REVPROPS, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @svn_config_get_bool(i32* %59, i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* @CONFIG_SECTION_PACKED_REVPROPS, align 4
  %71 = load i32, i32* @CONFIG_OPTION_REVPROP_PACK_SIZE, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 256, i32 64
  %78 = call i32 @svn_config_get_int64(i32* %67, i32* %69, i32 %70, i32 %71, i32 %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 1024
  store i32 %83, i32* %81, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %88 = load i32, i32* @CONFIG_OPTION_BLOCK_SIZE, align 4
  %89 = call i32 @svn_config_get_int64(i32* %84, i32* %86, i32 %87, i32 %88, i32 64)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %95 = load i32, i32* @CONFIG_OPTION_L2P_PAGE_SIZE, align 4
  %96 = call i32 @svn_config_get_int64(i32* %91, i32* %93, i32 %94, i32 %95, i32 8192)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %102 = load i32, i32* @CONFIG_OPTION_P2L_PAGE_SIZE, align 4
  %103 = call i32 @svn_config_get_int64(i32* %98, i32* %100, i32 %101, i32 %102, i32 1024)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CONFIG_OPTION_BLOCK_SIZE, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @verify_block_size(i32 %107, i32 1024, i32 %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CONFIG_OPTION_P2L_PAGE_SIZE, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @verify_block_size(i32 %114, i32 1024, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CONFIG_OPTION_L2P_PAGE_SIZE, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @verify_block_size(i32 %121, i32 4, i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 1024
  store i32 %129, i32* %127, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 1024
  store i32 %133, i32* %131, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 9
  %137 = load i32, i32* @CONFIG_SECTION_DEBUG, align 4
  %138 = load i32, i32* @CONFIG_OPTION_PACK_AFTER_COMMIT, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @svn_config_get_bool(i32* %134, i32* %136, i32 %137, i32 %138, i32 %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @svn_cache__make_memcache_from_config(i32* %143, i32* %144, i32* %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i32*, i32** %9, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 7
  %152 = load i32, i32* @CONFIG_SECTION_CACHES, align 4
  %153 = load i32, i32* @CONFIG_OPTION_FAIL_STOP, align 4
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i32 @svn_config_get_bool(i32* %149, i32* %151, i32 %152, i32 %153, i32 %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %157
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_read3(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_config_get_bool(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @svn_config_get_int64(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @verify_block_size(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_cache__make_memcache_from_config(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
