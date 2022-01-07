; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i8*, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@SVN_FS_CONFIG_BDB_TXN_NOSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_FS_CONFIG_BDB_LOG_AUTOREMOVE = common dso_local global i32 0, align 4
@SVN_FS_TYPE_BDB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"%swarning: The \22%s\22 repository back-end is deprecated, consider using \22%s\22 instead.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"svnadmin: \00", align 1
@SVN_FS_TYPE_FSFS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FS_TYPE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_4_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_5_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_6_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_8_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_COMPATIBLE_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%d.%d.%d%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"Repositories compatible with 1.0.x must use --fs-type=bdb\00", align 1
@SVN_FS_TYPE_FSX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [70 x i8] c"Repositories compatible with 1.8.x or earlier cannot use --fs-type=%s\00", align 1
@warning_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_create(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnadmin_opt_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %12, %struct.svnadmin_opt_state** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @apr_hash_make(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @parse_args(i32* null, i32* %15, i32 0, i32 0, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @SVN_FS_CONFIG_BDB_TXN_NOSYNC, align 4
  %21 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %22 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %27 = call i32 @svn_hash_sets(i32* %19, i32 %20, i8* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @SVN_FS_CONFIG_BDB_LOG_AUTOREMOVE, align 4
  %30 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %31 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)
  %36 = call i32 @svn_hash_sets(i32* %28, i32 %29, i8* %35)
  %37 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %38 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %3
  %42 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %43 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @SVN_FS_TYPE_BDB, align 4
  %46 = call i64 @strcmp(i8* %44, i32 %45)
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @SVN_FS_TYPE_BDB, align 4
  %53 = load i32, i32* @SVN_FS_TYPE_FSFS, align 4
  %54 = call i32 @svn_cmdline_fprintf(i32 %49, i32* %50, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fflush(i32 %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @SVN_FS_CONFIG_FS_TYPE, align 4
  %61 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %62 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @svn_hash_sets(i32* %59, i32 %60, i8* %63)
  br label %65

65:                                               ; preds = %58, %3
  %66 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %67 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %154

70:                                               ; preds = %65
  %71 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %72 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @svn_version__at_least(%struct.TYPE_2__* %73, i32 1, i32 4, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, align 4
  %79 = call i32 @svn_hash_sets(i32* %77, i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %82 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i32 @svn_version__at_least(%struct.TYPE_2__* %83, i32 1, i32 5, i32 0)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @SVN_FS_CONFIG_PRE_1_5_COMPATIBLE, align 4
  %89 = call i32 @svn_hash_sets(i32* %87, i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %92 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @svn_version__at_least(%struct.TYPE_2__* %93, i32 1, i32 6, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @SVN_FS_CONFIG_PRE_1_6_COMPATIBLE, align 4
  %99 = call i32 @svn_hash_sets(i32* %97, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %102 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = call i32 @svn_version__at_least(%struct.TYPE_2__* %103, i32 1, i32 8, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* @SVN_FS_CONFIG_PRE_1_8_COMPATIBLE, align 4
  %109 = call i32 @svn_hash_sets(i32* %107, i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %100
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* @SVN_FS_CONFIG_COMPATIBLE_VERSION, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %115 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %120 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %125 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %130 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %137 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %138 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %110
  %144 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %145 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  br label %150

149:                                              ; preds = %110
  br label %150

150:                                              ; preds = %149, %143
  %151 = phi i8* [ %148, %143 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %149 ]
  %152 = call i8* @apr_psprintf(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %123, i32 %128, i8* %136, i8* %151)
  %153 = call i32 @svn_hash_sets(i32* %111, i32 %112, i8* %152)
  br label %154

154:                                              ; preds = %150, %65
  %155 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %156 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = icmp ne %struct.TYPE_2__* %157, null
  br i1 %158, label %159, label %205

159:                                              ; preds = %154
  %160 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %161 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = call i32 @svn_version__at_least(%struct.TYPE_2__* %162, i32 1, i32 1, i32 0)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %159
  %166 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %167 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %172 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @SVN_FS_TYPE_FSFS, align 4
  %175 = call i64 @strcmp(i8* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170, %165
  %178 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %179 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %180 = call i32* @svn_error_create(i32 %178, i32* null, i32 %179)
  store i32* %180, i32** %4, align 8
  br label %218

181:                                              ; preds = %170, %159
  %182 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %183 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = call i32 @svn_version__at_least(%struct.TYPE_2__* %184, i32 1, i32 9, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %204, label %187

187:                                              ; preds = %181
  %188 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %189 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %194 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @SVN_FS_TYPE_FSX, align 4
  %197 = call i64 @strcmp(i8* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %201 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  %202 = load i32, i32* @SVN_FS_TYPE_FSX, align 4
  %203 = call i32* @svn_error_createf(i32 %200, i32* null, i32 %201, i32 %202)
  store i32* %203, i32** %4, align 8
  br label %218

204:                                              ; preds = %192, %187, %181
  br label %205

205:                                              ; preds = %204, %154
  %206 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %207 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @svn_repos_create(i32** %9, i32 %208, i32* null, i32* null, i32* null, i32* %209, i32* %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  %213 = load i32*, i32** %9, align 8
  %214 = call i32 @svn_repos_fs(i32* %213)
  %215 = load i32, i32* @warning_func, align 4
  %216 = call i32 @svn_fs_set_warning_func(i32 %214, i32 %215, i32* null)
  %217 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %217, i32** %4, align 8
  br label %218

218:                                              ; preds = %205, %199, %177
  %219 = load i32*, i32** %4, align 8
  ret i32* %219
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @svn_version__at_least(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @svn_repos_create(i32**, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_set_warning_func(i32, i32, i32*) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
