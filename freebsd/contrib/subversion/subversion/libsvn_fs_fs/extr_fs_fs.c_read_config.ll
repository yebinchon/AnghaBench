; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PATH_CONFIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SVN_FS_FS__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@CONFIG_SECTION_REP_SHARING = common dso_local global i32 0, align 4
@CONFIG_OPTION_ENABLE_REP_SHARING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SVN_FS_FS__MIN_DELTIFICATION_FORMAT = common dso_local global i64 0, align 8
@CONFIG_SECTION_DELTIFICATION = common dso_local global i32 0, align 4
@CONFIG_OPTION_ENABLE_DIR_DELTIFICATION = common dso_local global i32 0, align 4
@CONFIG_OPTION_ENABLE_PROPS_DELTIFICATION = common dso_local global i32 0, align 4
@CONFIG_OPTION_MAX_DELTIFICATION_WALK = common dso_local global i32 0, align 4
@SVN_FS_FS_MAX_DELTIFICATION_WALK = common dso_local global i32 0, align 4
@CONFIG_OPTION_MAX_LINEAR_DELTIFICATION = common dso_local global i32 0, align 4
@SVN_FS_FS_MAX_LINEAR_DELTIFICATION = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT = common dso_local global i64 0, align 8
@CONFIG_SECTION_PACKED_REVPROPS = common dso_local global i32 0, align 4
@CONFIG_OPTION_COMPRESS_PACKED_REVPROPS = common dso_local global i32 0, align 4
@CONFIG_OPTION_REVPROP_PACK_SIZE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT = common dso_local global i64 0, align 8
@CONFIG_SECTION_IO = common dso_local global i32 0, align 4
@CONFIG_OPTION_BLOCK_SIZE = common dso_local global i32 0, align 4
@CONFIG_OPTION_L2P_PAGE_SIZE = common dso_local global i32 0, align 4
@CONFIG_OPTION_P2L_PAGE_SIZE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i64 0, align 8
@CONFIG_SECTION_DEBUG = common dso_local global i32 0, align 4
@CONFIG_OPTION_PACK_AFTER_COMMIT = common dso_local global i32 0, align 4
@CONFIG_OPTION_COMPRESSION = common dso_local global i32 0, align 4
@CONFIG_OPTION_COMPRESSION_LEVEL = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"The 'compression' and 'compression-level' config options are mutually exclusive\00", align 1
@compression_type_lz4 = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_SVNDIFF2_FORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Compression type 'lz4' requires filesystem format 8 or higher\00", align 1
@compression_type_zlib = common dso_local global i8* null, align 8
@SVN_DELTA_COMPRESSION_LEVEL_NONE = common dso_local global i8* null, align 8
@SVN_DELTA_COMPRESSION_LEVEL_MAX = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i8* null, align 8
@SVN_FS_FS__MIN_SVNDIFF1_FORMAT = common dso_local global i64 0, align 8
@compression_type_none = common dso_local global i64 0, align 8
@CONFIG_OPTION_VERIFY_BEFORE_COMMIT = common dso_local global i32 0, align 4
@CONFIG_SECTION_CACHES = common dso_local global i32 0, align 4
@CONFIG_OPTION_FAIL_STOP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*, i32*)* @read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_config(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @PATH_CONFIG, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_dirent_join(i8* %13, i32 %14, i32* %15)
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_config_read3(i32** %10, i32 %16, i8* %17, i8* %18, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SVN_FS_FS__MIN_REP_SHARING_FORMAT, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 16
  %32 = load i32, i32* @CONFIG_SECTION_REP_SHARING, align 4
  %33 = load i32, i32* @CONFIG_OPTION_ENABLE_REP_SHARING, align 4
  %34 = load i8*, i8** @TRUE, align 8
  %35 = call i32 @svn_config_get_bool(i32* %29, i8** %31, i32 %32, i32 %33, i8* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %41

37:                                               ; preds = %4
  %38 = load i8*, i8** @FALSE, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 16
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SVN_FS_FS__MIN_DELTIFICATION_FORMAT, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 15
  %51 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %52 = load i32, i32* @CONFIG_OPTION_ENABLE_DIR_DELTIFICATION, align 4
  %53 = load i8*, i8** @TRUE, align 8
  %54 = call i32 @svn_config_get_bool(i32* %48, i8** %50, i32 %51, i32 %52, i8* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 14
  %59 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %60 = load i32, i32* @CONFIG_OPTION_ENABLE_PROPS_DELTIFICATION, align 4
  %61 = load i8*, i8** @TRUE, align 8
  %62 = call i32 @svn_config_get_bool(i32* %56, i8** %58, i32 %59, i32 %60, i8* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %68 = load i32, i32* @CONFIG_OPTION_MAX_DELTIFICATION_WALK, align 4
  %69 = load i32, i32* @SVN_FS_FS_MAX_DELTIFICATION_WALK, align 4
  %70 = call i32 @svn_config_get_int64(i32* %64, i32* %66, i32 %67, i32 %68, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %76 = load i32, i32* @CONFIG_OPTION_MAX_LINEAR_DELTIFICATION, align 4
  %77 = load i32, i32* @SVN_FS_FS_MAX_LINEAR_DELTIFICATION, align 4
  %78 = call i32 @svn_config_get_int64(i32* %72, i32* %74, i32 %75, i32 %76, i32 %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %93

80:                                               ; preds = %41
  %81 = load i8*, i8** @FALSE, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 15
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @FALSE, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @SVN_FS_FS_MAX_DELTIFICATION_WALK, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @SVN_FS_FS_MAX_LINEAR_DELTIFICATION, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %47
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 13
  %103 = load i32, i32* @CONFIG_SECTION_PACKED_REVPROPS, align 4
  %104 = load i32, i32* @CONFIG_OPTION_COMPRESS_PACKED_REVPROPS, align 4
  %105 = load i8*, i8** @FALSE, align 8
  %106 = call i32 @svn_config_get_bool(i32* %100, i8** %102, i32 %103, i32 %104, i8* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* @CONFIG_SECTION_PACKED_REVPROPS, align 4
  %112 = load i32, i32* @CONFIG_OPTION_REVPROP_PACK_SIZE, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 13
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 64, i32 16
  %119 = call i32 @svn_config_get_int64(i32* %108, i32* %110, i32 %111, i32 %112, i32 %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 1024
  store i32 %124, i32* %122, align 8
  br label %131

125:                                              ; preds = %93
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  store i32 65536, i32* %127, align 8
  %128 = load i8*, i8** @FALSE, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 13
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %125, %99
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %188

137:                                              ; preds = %131
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  %141 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %142 = load i32, i32* @CONFIG_OPTION_BLOCK_SIZE, align 4
  %143 = call i32 @svn_config_get_int64(i32* %138, i32* %140, i32 %141, i32 %142, i32 64)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 5
  %148 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %149 = load i32, i32* @CONFIG_OPTION_L2P_PAGE_SIZE, align 4
  %150 = call i32 @svn_config_get_int64(i32* %145, i32* %147, i32 %148, i32 %149, i32 8192)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 6
  %155 = load i32, i32* @CONFIG_SECTION_IO, align 4
  %156 = load i32, i32* @CONFIG_OPTION_P2L_PAGE_SIZE, align 4
  %157 = call i32 @svn_config_get_int64(i32* %152, i32* %154, i32 %155, i32 %156, i32 1024)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @CONFIG_OPTION_BLOCK_SIZE, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @verify_block_size(i32 %161, i32 1024, i32 %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @CONFIG_OPTION_P2L_PAGE_SIZE, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @verify_block_size(i32 %168, i32 1024, i32 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CONFIG_OPTION_L2P_PAGE_SIZE, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @verify_block_size(i32 %175, i32 4, i32 %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %182, 1024
  store i32 %183, i32* %181, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 1024
  store i32 %187, i32* %185, align 4
  br label %195

188:                                              ; preds = %131
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  store i32 4096, i32* %190, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 5
  store i32 8192, i32* %192, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 6
  store i32 1048576, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %137
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @SVN_FS_FS__MIN_PACKED_FORMAT, align 8
  %200 = icmp sge i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i32*, i32** %10, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 12
  %205 = load i32, i32* @CONFIG_SECTION_DEBUG, align 4
  %206 = load i32, i32* @CONFIG_OPTION_PACK_AFTER_COMMIT, align 4
  %207 = load i8*, i8** @FALSE, align 8
  %208 = call i32 @svn_config_get_bool(i32* %202, i8** %204, i32 %205, i32 %206, i8* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %214

210:                                              ; preds = %195
  %211 = load i8*, i8** @FALSE, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 12
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %210, %201
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @SVN_FS_FS__MIN_DELTIFICATION_FORMAT, align 8
  %219 = icmp sge i64 %217, %218
  br i1 %219, label %220, label %309

220:                                              ; preds = %214
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %223 = load i32, i32* @CONFIG_OPTION_COMPRESSION, align 4
  %224 = call i32 @svn_config_get(i32* %221, i8** %11, i32 %222, i32 %223, i32* null)
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* @CONFIG_SECTION_DELTIFICATION, align 4
  %227 = load i32, i32* @CONFIG_OPTION_COMPRESSION_LEVEL, align 4
  %228 = call i32 @svn_config_get(i32* %225, i8** %12, i32 %226, i32 %227, i32* null)
  %229 = load i8*, i8** %11, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %220
  %232 = load i8*, i8** %12, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %236 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %237 = call i32* @svn_error_create(i32 %235, i32* null, i32 %236)
  store i32* %237, i32** %5, align 8
  br label %356

238:                                              ; preds = %231, %220
  %239 = load i8*, i8** %11, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %265

241:                                              ; preds = %238
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 11
  %246 = load i8*, i8** %11, align 8
  %247 = call i32 @parse_compression_option(i64* %243, i8** %245, i8* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @compression_type_lz4, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %241
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @SVN_FS_FS__MIN_SVNDIFF2_FORMAT, align 8
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %262 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %263 = call i32* @svn_error_create(i32 %261, i32* null, i32 %262)
  store i32* %263, i32** %5, align 8
  br label %356

264:                                              ; preds = %254, %241
  br label %307

265:                                              ; preds = %238
  %266 = load i8*, i8** %12, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %287

268:                                              ; preds = %265
  %269 = load i8*, i8** @compression_type_zlib, align 8
  %270 = ptrtoint i8* %269 to i64
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 7
  store i64 %270, i64* %272, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 11
  %275 = load i8*, i8** %12, align 8
  %276 = call i32 @svn_cstring_atoi(i8** %274, i8* %275)
  %277 = call i32 @SVN_ERR(i32 %276)
  %278 = load i8*, i8** @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 8
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 11
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @MAX(i8* %278, i8* %281)
  %283 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_MAX, align 4
  %284 = call i8* @MIN(i32 %282, i32 %283)
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 11
  store i8* %284, i8** %286, align 8
  br label %306

287:                                              ; preds = %265
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @SVN_FS_FS__MIN_SVNDIFF2_FORMAT, align 8
  %292 = icmp sge i64 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i64, i64* @compression_type_lz4, align 8
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 7
  store i64 %294, i64* %296, align 8
  br label %302

297:                                              ; preds = %287
  %298 = load i8*, i8** @compression_type_zlib, align 8
  %299 = ptrtoint i8* %298 to i64
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 7
  store i64 %299, i64* %301, align 8
  br label %302

302:                                              ; preds = %297, %293
  %303 = load i8*, i8** @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 11
  store i8* %303, i8** %305, align 8
  br label %306

306:                                              ; preds = %302, %268
  br label %307

307:                                              ; preds = %306, %264
  br label %308

308:                                              ; preds = %307
  br label %331

309:                                              ; preds = %214
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @SVN_FS_FS__MIN_SVNDIFF1_FORMAT, align 8
  %314 = icmp sge i64 %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %309
  %316 = load i8*, i8** @compression_type_zlib, align 8
  %317 = ptrtoint i8* %316 to i64
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 7
  store i64 %317, i64* %319, align 8
  %320 = load i8*, i8** @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 8
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 11
  store i8* %320, i8** %322, align 8
  br label %330

323:                                              ; preds = %309
  %324 = load i64, i64* @compression_type_none, align 8
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 7
  store i64 %324, i64* %326, align 8
  %327 = load i8*, i8** @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 11
  store i8* %327, i8** %329, align 8
  br label %330

330:                                              ; preds = %323, %315
  br label %331

331:                                              ; preds = %330, %308
  %332 = load i32*, i32** %10, align 8
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 10
  %335 = load i32, i32* @CONFIG_SECTION_DEBUG, align 4
  %336 = load i32, i32* @CONFIG_OPTION_VERIFY_BEFORE_COMMIT, align 4
  %337 = load i8*, i8** @FALSE, align 8
  %338 = call i32 @svn_config_get_bool(i32* %332, i8** %334, i32 %335, i32 %336, i8* %337)
  %339 = call i32 @SVN_ERR(i32 %338)
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 9
  %342 = load i32*, i32** %10, align 8
  %343 = load i32*, i32** %8, align 8
  %344 = load i32*, i32** %9, align 8
  %345 = call i32 @svn_cache__make_memcache_from_config(i32* %341, i32* %342, i32* %343, i32* %344)
  %346 = call i32 @SVN_ERR(i32 %345)
  %347 = load i32*, i32** %10, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 8
  %350 = load i32, i32* @CONFIG_SECTION_CACHES, align 4
  %351 = load i32, i32* @CONFIG_OPTION_FAIL_STOP, align 4
  %352 = load i8*, i8** @FALSE, align 8
  %353 = call i32 @svn_config_get_bool(i32* %347, i8** %349, i32 %350, i32 %351, i8* %352)
  %354 = call i32 @SVN_ERR(i32 %353)
  %355 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %355, i32** %5, align 8
  br label %356

356:                                              ; preds = %331, %260, %234
  %357 = load i32*, i32** %5, align 8
  ret i32* %357
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_read3(i32**, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_config_get_bool(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @svn_config_get_int64(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @verify_block_size(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_compression_option(i64*, i8**, i8*) #1

declare dso_local i32 @svn_cstring_atoi(i8**, i8*) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @MAX(i8*, i8*) #1

declare dso_local i32 @svn_cache__make_memcache_from_config(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
