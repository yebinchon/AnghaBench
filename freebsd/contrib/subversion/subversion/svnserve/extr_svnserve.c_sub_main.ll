; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_svnserve.c_sub_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_svnserve.c_sub_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_37__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i8*, i8*, i32 }
%struct.TYPE_36__ = type { i32, i8* }
%struct.TYPE_38__ = type { i32 }

@run_mode_unspecified = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@CONNECTION_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SVN_RA_SVN_PORT = common dso_local global i32 0, align 4
@APR_INET = common dso_local global i32 0, align 4
@THREADPOOL_MIN_SIZE = common dso_local global i32 0, align 4
@THREADPOOL_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@CASE_ASIS = common dso_local global i32 0, align 4
@MAX_REQUEST_SIZE = common dso_local global i32 0, align 4
@svnserve__options = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_35__* null, align 8
@run_mode_daemon = common dso_local global i32 0, align 4
@run_mode_inetd = common dso_local global i32 0, align 4
@APR_UINT16_MAX = common dso_local global i32 0, align 4
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid port '%s'\00", align 1
@run_mode_tunnel = common dso_local global i32 0, align 4
@run_mode_listen_once = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Root path '%s' does not exist or is not a directory\00", align 1
@SVN_DELTA_COMPRESSION_LEVEL_NONE = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_MAX = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"You must specify exactly one of -d, -i, -t or -X.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"You may only specify one of -T or --single-thread\0A\00", align 1
@SVN_FS_CONFIG_FSFS_CACHE_DELTAS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_REVPROPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@SVN_FS_CONFIG_FSFS_BLOCK_READ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Option --tunnel-user is only valid in tunnel mode\00", align 1
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@redirect_stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Can't get address info\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@APR_PROTO_TCP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't create server socket\00", align 1
@APR_SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Can't set options on server socket\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Can't bind server socket\00", align 1
@ACCEPT_BACKLOG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"Can't listen on server socket\00", align 1
@APR_INCHILD = common dso_local global i64 0, align 8
@APR_INET6 = common dso_local global i32 0, align 4
@APR_INPARENT = common dso_local global i64 0, align 8
@APR_IPV4_ADDR_OK = common dso_local global i32 0, align 4
@APR_IPV6_ADDR_OK = common dso_local global i32 0, align 4
@APR_PROC_DETACH_DAEMONIZE = common dso_local global i32 0, align 4
@APR_UNSPEC = common dso_local global i32 0, align 4
@ERROR_FAILED_SERVICE_CONTROLLER_CONNECT = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@THREADPOOL_THREAD_IDLE_LIMIT = common dso_local global i32 0, align 4
@connection_pools = common dso_local global i32 0, align 4
@run_mode_service = common dso_local global i32 0, align 4
@serve_thread = common dso_local global i32 0, align 4
@sigchld_handler = common dso_local global i32 0, align 4
@threads = common dso_local global i32* null, align 8
@winservice_svnserve_accept_socket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_35__* (i32*, i32, i8**, i32*)* @sub_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_35__* @sub_main(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca %struct.TYPE_40__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_37__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca %struct.TYPE_36__, align 8
  %50 = alloca %struct.TYPE_38__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %51 = load i32, i32* @run_mode_unspecified, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** @FALSE, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @CONNECTION_DEFAULT, align 4
  store i32 %54, i32* %22, align 4
  %55 = load i8*, i8** @TRUE, align 8
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %23, align 4
  %57 = load i8*, i8** @TRUE, align 8
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %24, align 4
  %59 = load i8*, i8** @TRUE, align 8
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %25, align 4
  %61 = load i8*, i8** @FALSE, align 8
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %26, align 4
  %63 = load i8*, i8** @FALSE, align 8
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %27, align 4
  %65 = load i32, i32* @SVN_RA_SVN_PORT, align 4
  store i32 %65, i32* %28, align 4
  store i8* null, i8** %29, align 8
  %66 = load i32, i32* @APR_INET, align 4
  store i32 %66, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %67 = load i8*, i8** @FALSE, align 8
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %32, align 4
  %69 = load i8*, i8** @FALSE, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i8* null, i8** %36, align 8
  store i8* null, i8** %37, align 8
  store i8* null, i8** %38, align 8
  %71 = load i32, i32* @THREADPOOL_MIN_SIZE, align 4
  store i32 %71, i32* %40, align 4
  %72 = load i32, i32* @THREADPOOL_MAX_SIZE, align 4
  store i32 %72, i32* %41, align 4
  %73 = call i32 (...) @check_lib_versions()
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @svn_fs_initialize(i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @svn_repos_authz_initialize(i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i8**, i8*** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @svn_cmdline__getopt_init(%struct.TYPE_40__** %15, i32 %81, i8** %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load i8*, i8** @FALSE, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 2
  store i8* null, i8** %90, align 8
  %91 = load i8*, i8** @FALSE, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 15
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 12
  store i32* null, i32** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 11
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 8
  store i32* null, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 10
  store i32* null, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** @FALSE, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 14
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @CASE_ASIS, align 4
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 16
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 3
  store i32 -1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 4
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 5
  store i32 4096, i32* %106, align 8
  %107 = load i32, i32* @MAX_REQUEST_SIZE, align 4
  %108 = mul nsw i32 %107, 1048576
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 6
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 7
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %4, %369
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %113 = load i32, i32* @svnserve__options, align 4
  %114 = call i64 @apr_getopt_long(%struct.TYPE_40__* %112, i32 %113, i32* %16, i8** %18)
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = call i64 @APR_STATUS_IS_EOF(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %370

119:                                              ; preds = %111
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* @APR_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i8**, i8*** %8, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @usage(i8* %126, i32* %127)
  %129 = load i32, i32* @EXIT_FAILURE, align 4
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %131, %struct.TYPE_35__** %5, align 8
  br label %694

132:                                              ; preds = %119
  %133 = load i32, i32* %16, align 4
  switch i32 %133, label %369 [
    i32 54, label %134
    i32 104, label %135
    i32 113, label %139
    i32 132, label %142
    i32 100, label %145
    i32 144, label %154
    i32 134, label %157
    i32 105, label %160
    i32 142, label %169
    i32 143, label %183
    i32 116, label %185
    i32 133, label %194
    i32 88, label %197
    i32 114, label %206
    i32 82, label %238
    i32 84, label %241
    i32 99, label %244
    i32 77, label %264
    i32 147, label %271
    i32 150, label %277
    i32 148, label %283
    i32 149, label %289
    i32 151, label %295
    i32 146, label %301
    i32 140, label %314
    i32 139, label %319
    i32 137, label %324
    i32 138, label %327
    i32 145, label %330
    i32 136, label %342
    i32 131, label %354
    i32 141, label %357
  ]

134:                                              ; preds = %132
  br label %369

135:                                              ; preds = %132
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @help(i32* %136)
  %138 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %138, %struct.TYPE_35__** %5, align 8
  br label %694

139:                                              ; preds = %132
  %140 = load i8*, i8** @TRUE, align 8
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %32, align 4
  br label %369

142:                                              ; preds = %132
  %143 = load i8*, i8** @TRUE, align 8
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %33, align 4
  br label %369

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @run_mode_daemon, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @run_mode_daemon, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %34, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %34, align 4
  br label %153

153:                                              ; preds = %149, %145
  br label %369

154:                                              ; preds = %132
  %155 = load i8*, i8** @TRUE, align 8
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %11, align 4
  br label %369

157:                                              ; preds = %132
  store i32 129, i32* %22, align 4
  %158 = load i32, i32* %35, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %35, align 4
  br label %369

160:                                              ; preds = %132
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @run_mode_inetd, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* @run_mode_inetd, align 4
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %34, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %34, align 4
  br label %168

168:                                              ; preds = %164, %160
  br label %369

169:                                              ; preds = %132
  %170 = load i8*, i8** %18, align 8
  %171 = load i32, i32* @APR_UINT16_MAX, align 4
  %172 = call %struct.TYPE_35__* @svn_cstring_strtoui64(i32* %42, i8* %170, i32 0, i32 %171, i32 10)
  store %struct.TYPE_35__* %172, %struct.TYPE_35__** %14, align 8
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %174 = icmp ne %struct.TYPE_35__* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %178 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i8*, i8** %18, align 8
  %180 = call %struct.TYPE_35__* @svn_error_createf(i32 %176, %struct.TYPE_35__* %177, i8* %178, i8* %179)
  store %struct.TYPE_35__* %180, %struct.TYPE_35__** %5, align 8
  br label %694

181:                                              ; preds = %169
  %182 = load i32, i32* %42, align 4
  store i32 %182, i32* %28, align 4
  br label %369

183:                                              ; preds = %132
  %184 = load i8*, i8** %18, align 8
  store i8* %184, i8** %29, align 8
  br label %369

185:                                              ; preds = %132
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @run_mode_tunnel, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* @run_mode_tunnel, align 4
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %34, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %34, align 4
  br label %193

193:                                              ; preds = %189, %185
  br label %369

194:                                              ; preds = %132
  %195 = load i8*, i8** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 2
  store i8* %195, i8** %196, align 8
  br label %369

197:                                              ; preds = %132
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @run_mode_listen_once, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* @run_mode_listen_once, align 4
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %34, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %34, align 4
  br label %205

205:                                              ; preds = %201, %197
  br label %369

206:                                              ; preds = %132
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %208 = load i8*, i8** %18, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @svn_utf_cstring_to_utf8(i8** %207, i8* %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @svn_io_check_resolved_path(i8* %213, i32* %39, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i32, i32* %39, align 4
  %218 = load i32, i32* @svn_node_dir, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %206
  %221 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %222 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call %struct.TYPE_35__* @svn_error_createf(i32 %221, %struct.TYPE_35__* null, i8* %222, i8* %224)
  store %struct.TYPE_35__* %225, %struct.TYPE_35__** %5, align 8
  br label %694

226:                                              ; preds = %206
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = call i8* @svn_dirent_internal_style(i8* %228, i32* %229)
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  store i8* %230, i8** %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 @svn_dirent_get_absolute(i8** %232, i8* %234, i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  br label %369

238:                                              ; preds = %132
  %239 = load i8*, i8** @TRUE, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 15
  store i8* %239, i8** %240, align 8
  br label %369

241:                                              ; preds = %132
  store i32 128, i32* %22, align 4
  %242 = load i32, i32* %35, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %35, align 4
  br label %369

244:                                              ; preds = %132
  %245 = load i8*, i8** %18, align 8
  %246 = call i32 @atoi(i8* %245)
  %247 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  store i32 %246, i32* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_NONE, align 4
  %254 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  store i32 %253, i32* %254, align 8
  br label %255

255:                                              ; preds = %252, %244
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_MAX, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_MAX, align 4
  %262 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  store i32 %261, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %255
  br label %369

264:                                              ; preds = %132
  %265 = load i8*, i8** %18, align 8
  %266 = call i32 @svn_cstring_atoui64(i32* %43, i8* %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load i32, i32* %43, align 4
  %269 = mul nsw i32 1048576, %268
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 3
  store i32 %269, i32* %270, align 8
  br label %369

271:                                              ; preds = %132
  %272 = load i8*, i8** %18, align 8
  %273 = call i32 @svn_tristate__from_word(i8* %272)
  %274 = load i32, i32* @svn_tristate_true, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %25, align 4
  br label %369

277:                                              ; preds = %132
  %278 = load i8*, i8** %18, align 8
  %279 = call i32 @svn_tristate__from_word(i8* %278)
  %280 = load i32, i32* @svn_tristate_true, align 4
  %281 = icmp eq i32 %279, %280
  %282 = zext i1 %281 to i32
  store i32 %282, i32* %23, align 4
  br label %369

283:                                              ; preds = %132
  %284 = load i8*, i8** %18, align 8
  %285 = call i32 @svn_tristate__from_word(i8* %284)
  %286 = load i32, i32* @svn_tristate_true, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %26, align 4
  br label %369

289:                                              ; preds = %132
  %290 = load i8*, i8** %18, align 8
  %291 = call i32 @svn_tristate__from_word(i8* %290)
  %292 = load i32, i32* @svn_tristate_true, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %24, align 4
  br label %369

295:                                              ; preds = %132
  %296 = load i8*, i8** %18, align 8
  %297 = call i32 @svn_tristate__from_word(i8* %296)
  %298 = load i32, i32* @svn_tristate_true, align 4
  %299 = icmp eq i32 %297, %298
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %27, align 4
  br label %369

301:                                              ; preds = %132
  %302 = load i8*, i8** %18, align 8
  %303 = call i32 @apr_strtoi64(i8* %302, i32* null, i32 0)
  store i32 %303, i32* %44, align 4
  %304 = load i32, i32* %44, align 4
  %305 = icmp sge i32 %304, 1000
  br i1 %305, label %306, label %313

306:                                              ; preds = %301
  %307 = load i32, i32* %44, align 4
  %308 = mul nsw i32 %307, 120
  %309 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 4
  store i32 %308, i32* %309, align 4
  %310 = load i32, i32* %44, align 4
  %311 = mul nsw i32 %310, 120
  %312 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 5
  store i32 %311, i32* %312, align 8
  br label %313

313:                                              ; preds = %306, %301
  br label %369

314:                                              ; preds = %132
  %315 = load i8*, i8** %18, align 8
  %316 = call i32 @apr_strtoi64(i8* %315, i32* null, i32 0)
  %317 = mul nsw i32 1048576, %316
  %318 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 6
  store i32 %317, i32* %318, align 4
  br label %369

319:                                              ; preds = %132
  %320 = load i8*, i8** %18, align 8
  %321 = call i32 @apr_strtoi64(i8* %320, i32* null, i32 0)
  %322 = mul nsw i32 1048576, %321
  %323 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 7
  store i32 %322, i32* %323, align 8
  br label %369

324:                                              ; preds = %132
  %325 = load i8*, i8** %18, align 8
  %326 = call i32 @apr_strtoi64(i8* %325, i32* null, i32 0)
  store i32 %326, i32* %40, align 4
  br label %369

327:                                              ; preds = %132
  %328 = load i8*, i8** %18, align 8
  %329 = call i32 @apr_strtoi64(i8* %328, i32* null, i32 0)
  store i32 %329, i32* %41, align 4
  br label %369

330:                                              ; preds = %132
  %331 = load i8*, i8** %18, align 8
  %332 = load i32*, i32** %9, align 8
  %333 = call i32 @svn_utf_cstring_to_utf8(i8** %36, i8* %331, i32* %332)
  %334 = call i32 @SVN_ERR(i32 %333)
  %335 = load i8*, i8** %36, align 8
  %336 = load i32*, i32** %9, align 8
  %337 = call i8* @svn_dirent_internal_style(i8* %335, i32* %336)
  store i8* %337, i8** %36, align 8
  %338 = load i8*, i8** %36, align 8
  %339 = load i32*, i32** %9, align 8
  %340 = call i32 @svn_dirent_get_absolute(i8** %36, i8* %338, i32* %339)
  %341 = call i32 @SVN_ERR(i32 %340)
  br label %369

342:                                              ; preds = %132
  %343 = load i8*, i8** %18, align 8
  %344 = load i32*, i32** %9, align 8
  %345 = call i32 @svn_utf_cstring_to_utf8(i8** %37, i8* %343, i32* %344)
  %346 = call i32 @SVN_ERR(i32 %345)
  %347 = load i8*, i8** %37, align 8
  %348 = load i32*, i32** %9, align 8
  %349 = call i8* @svn_dirent_internal_style(i8* %347, i32* %348)
  store i8* %349, i8** %37, align 8
  %350 = load i8*, i8** %37, align 8
  %351 = load i32*, i32** %9, align 8
  %352 = call i32 @svn_dirent_get_absolute(i8** %37, i8* %350, i32* %351)
  %353 = call i32 @SVN_ERR(i32 %352)
  br label %369

354:                                              ; preds = %132
  %355 = load i8*, i8** @TRUE, align 8
  %356 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 14
  store i8* %355, i8** %356, align 8
  br label %369

357:                                              ; preds = %132
  %358 = load i8*, i8** %18, align 8
  %359 = load i32*, i32** %9, align 8
  %360 = call i32 @svn_utf_cstring_to_utf8(i8** %38, i8* %358, i32* %359)
  %361 = call i32 @SVN_ERR(i32 %360)
  %362 = load i8*, i8** %38, align 8
  %363 = load i32*, i32** %9, align 8
  %364 = call i8* @svn_dirent_internal_style(i8* %362, i32* %363)
  store i8* %364, i8** %38, align 8
  %365 = load i8*, i8** %38, align 8
  %366 = load i32*, i32** %9, align 8
  %367 = call i32 @svn_dirent_get_absolute(i8** %38, i8* %365, i32* %366)
  %368 = call i32 @SVN_ERR(i32 %367)
  br label %369

369:                                              ; preds = %132, %357, %354, %342, %330, %327, %324, %319, %314, %313, %295, %289, %283, %277, %271, %264, %263, %241, %238, %226, %205, %194, %193, %183, %181, %168, %157, %154, %153, %142, %139, %134
  br label %111

370:                                              ; preds = %118
  %371 = load i32, i32* %33, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %370
  %374 = load i32, i32* %32, align 4
  %375 = load i32*, i32** %9, align 8
  %376 = call i32 @version(i32 %374, i32* %375)
  %377 = call i32 @SVN_ERR(i32 %376)
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %378, %struct.TYPE_35__** %5, align 8
  br label %694

379:                                              ; preds = %370
  %380 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %381 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %7, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %394

385:                                              ; preds = %379
  %386 = load i8**, i8*** %8, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 0
  %388 = load i8*, i8** %387, align 8
  %389 = load i32*, i32** %9, align 8
  %390 = call i32 @usage(i8* %388, i32* %389)
  %391 = load i32, i32* @EXIT_FAILURE, align 4
  %392 = load i32*, i32** %6, align 8
  store i32 %391, i32* %392, align 4
  %393 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %393, %struct.TYPE_35__** %5, align 8
  br label %694

394:                                              ; preds = %379
  %395 = load i32, i32* %34, align 4
  %396 = icmp ne i32 %395, 1
  br i1 %396, label %397, label %413

397:                                              ; preds = %394
  %398 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %399 = load i32, i32* @stderr, align 4
  %400 = sext i32 %399 to i64
  %401 = inttoptr i64 %400 to i8*
  %402 = load i32*, i32** %9, align 8
  %403 = call %struct.TYPE_35__* (i8*, i8*, i32*, ...) @svn_cmdline_fputs(i8* %398, i8* %401, i32* %402)
  %404 = call i32 @svn_error_clear(%struct.TYPE_35__* %403)
  %405 = load i8**, i8*** %8, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 0
  %407 = load i8*, i8** %406, align 8
  %408 = load i32*, i32** %9, align 8
  %409 = call i32 @usage(i8* %407, i32* %408)
  %410 = load i32, i32* @EXIT_FAILURE, align 4
  %411 = load i32*, i32** %6, align 8
  store i32 %410, i32* %411, align 4
  %412 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %412, %struct.TYPE_35__** %5, align 8
  br label %694

413:                                              ; preds = %394
  %414 = load i32, i32* %35, align 4
  %415 = icmp sgt i32 %414, 1
  br i1 %415, label %416, label %432

416:                                              ; preds = %413
  %417 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %418 = load i32, i32* @stderr, align 4
  %419 = sext i32 %418 to i64
  %420 = inttoptr i64 %419 to i8*
  %421 = load i32*, i32** %9, align 8
  %422 = call %struct.TYPE_35__* (i8*, i8*, i32*, ...) @svn_cmdline_fputs(i8* %417, i8* %420, i32* %421)
  %423 = call i32 @svn_error_clear(%struct.TYPE_35__* %422)
  %424 = load i8**, i8*** %8, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i64 0
  %426 = load i8*, i8** %425, align 8
  %427 = load i32*, i32** %9, align 8
  %428 = call i32 @usage(i8* %426, i32* %427)
  %429 = load i32, i32* @EXIT_FAILURE, align 4
  %430 = load i32*, i32** %6, align 8
  store i32 %429, i32* %430, align 4
  %431 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %431, %struct.TYPE_35__** %5, align 8
  br label %694

432:                                              ; preds = %413
  %433 = load i32, i32* %22, align 4
  %434 = icmp eq i32 %433, 128
  %435 = zext i1 %434 to i32
  store i32 %435, i32* %21, align 4
  %436 = load i32*, i32** %9, align 8
  %437 = call i32* @apr_hash_make(i32* %436)
  %438 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  store i32* %437, i32** %438, align 8
  %439 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_DELTAS, align 4
  %442 = load i32, i32* %25, align 4
  %443 = icmp ne i32 %442, 0
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %446 = call i32 @svn_hash_sets(i32* %440, i32 %441, i8* %445)
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, align 4
  %450 = load i32, i32* %23, align 4
  %451 = icmp ne i32 %450, 0
  %452 = zext i1 %451 to i64
  %453 = select i1 %451, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %454 = call i32 @svn_hash_sets(i32* %448, i32 %449, i8* %453)
  %455 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, align 4
  %458 = load i32, i32* %24, align 4
  %459 = icmp ne i32 %458, 0
  %460 = zext i1 %459 to i64
  %461 = select i1 %459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %462 = call i32 @svn_hash_sets(i32* %456, i32 %457, i8* %461)
  %463 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, align 4
  %466 = load i32, i32* %26, align 4
  %467 = icmp ne i32 %466, 0
  %468 = zext i1 %467 to i64
  %469 = select i1 %467, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %470 = call i32 @svn_hash_sets(i32* %464, i32 %465, i8* %469)
  %471 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 13
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* @SVN_FS_CONFIG_FSFS_BLOCK_READ, align 4
  %474 = load i32, i32* %27, align 4
  %475 = icmp ne i32 %474, 0
  %476 = zext i1 %475 to i64
  %477 = select i1 %475, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %478 = call i32 @svn_hash_sets(i32* %472, i32 %473, i8* %477)
  %479 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 10
  %480 = load i32, i32* %21, align 4
  %481 = load i32*, i32** %9, align 8
  %482 = call i32 @svn_repos__config_pool_create(i32** %479, i32 %480, i32* %481)
  %483 = call i32 @SVN_ERR(i32 %482)
  %484 = load i8*, i8** %36, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %486, label %499

486:                                              ; preds = %432
  %487 = load i8*, i8** %36, align 8
  %488 = load i32*, i32** %9, align 8
  %489 = call i32* @svn_dirent_dirname(i8* %487, i32* %488)
  %490 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 12
  store i32* %489, i32** %490, align 8
  %491 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 11
  %492 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 10
  %493 = load i32*, i32** %492, align 8
  %494 = load i8*, i8** %36, align 8
  %495 = load i8*, i8** @TRUE, align 8
  %496 = load i32*, i32** %9, align 8
  %497 = call i32 @svn_repos__config_pool_get(i32** %491, i32* %493, i8* %494, i8* %495, i32* null, i32* %496)
  %498 = call i32 @SVN_ERR(i32 %497)
  br label %499

499:                                              ; preds = %486, %432
  %500 = load i8*, i8** %38, align 8
  %501 = icmp ne i8* %500, null
  br i1 %501, label %502, label %508

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 8
  %504 = load i8*, i8** %38, align 8
  %505 = load i32*, i32** %9, align 8
  %506 = call i32 @logger__create(i32** %503, i8* %504, i32* %505)
  %507 = call i32 @SVN_ERR(i32 %506)
  br label %518

508:                                              ; preds = %499
  %509 = load i32, i32* %10, align 4
  %510 = load i32, i32* @run_mode_listen_once, align 4
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %517

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 8
  %514 = load i32*, i32** %9, align 8
  %515 = call i32 @logger__create_for_stderr(i32** %513, i32* %514)
  %516 = call i32 @SVN_ERR(i32 %515)
  br label %517

517:                                              ; preds = %512, %508
  br label %518

518:                                              ; preds = %517, %502
  %519 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = icmp ne i8* %520, null
  br i1 %521, label %522, label %530

522:                                              ; preds = %518
  %523 = load i32, i32* %10, align 4
  %524 = load i32, i32* @run_mode_tunnel, align 4
  %525 = icmp ne i32 %523, %524
  br i1 %525, label %526, label %530

526:                                              ; preds = %522
  %527 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %528 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %529 = call %struct.TYPE_35__* @svn_error_create(i32 %527, i32* null, i8* %528)
  store %struct.TYPE_35__* %529, %struct.TYPE_35__** %5, align 8
  br label %694

530:                                              ; preds = %522, %518
  %531 = load i32, i32* %10, align 4
  %532 = load i32, i32* @run_mode_inetd, align 4
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %538, label %534

534:                                              ; preds = %530
  %535 = load i32, i32* %10, align 4
  %536 = load i32, i32* @run_mode_tunnel, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %578

538:                                              ; preds = %534, %530
  %539 = load i32, i32* %10, align 4
  %540 = load i32, i32* @run_mode_tunnel, align 4
  %541 = icmp eq i32 %539, %540
  %542 = zext i1 %541 to i32
  %543 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 1
  store i32 %542, i32* %543, align 8
  %544 = load i32*, i32** %9, align 8
  %545 = load i32*, i32** %9, align 8
  %546 = load i32, i32* @apr_pool_cleanup_null, align 4
  %547 = load i32, i32* @redirect_stdout, align 4
  %548 = call i32 @apr_pool_cleanup_register(i32* %544, i32* %545, i32 %546, i32 %547)
  %549 = load i8*, i8** @FALSE, align 8
  %550 = load i32*, i32** %9, align 8
  %551 = call i32 @svn_stream_for_stdin2(i32** %47, i8* %549, i32* %550)
  %552 = call i32 @SVN_ERR(i32 %551)
  %553 = load i32*, i32** %9, align 8
  %554 = call i32 @svn_stream_for_stdout(i32** %48, i32* %553)
  %555 = call i32 @SVN_ERR(i32 %554)
  %556 = load i32*, i32** %9, align 8
  %557 = call i32* @svn_pool_create(i32* %556)
  store i32* %557, i32** %45, align 8
  %558 = load i32*, i32** %47, align 8
  %559 = load i32*, i32** %48, align 8
  %560 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 9
  %561 = load i32, i32* %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 4
  %563 = load i32, i32* %562, align 4
  %564 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 5
  %565 = load i32, i32* %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 6
  %567 = load i32, i32* %566, align 4
  %568 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 7
  %569 = load i32, i32* %568, align 8
  %570 = load i32*, i32** %45, align 8
  %571 = call i32* @svn_ra_svn_create_conn5(i32* null, i32* %558, i32* %559, i32 %561, i32 %563, i32 %565, i32 %567, i32 %569, i32* %570)
  store i32* %571, i32** %46, align 8
  %572 = load i32*, i32** %46, align 8
  %573 = load i32*, i32** %45, align 8
  %574 = call %struct.TYPE_35__* @serve(i32* %572, %struct.TYPE_37__* %17, i32* %573)
  store %struct.TYPE_35__* %574, %struct.TYPE_35__** %14, align 8
  %575 = load i32*, i32** %45, align 8
  %576 = call i32 @svn_pool_destroy(i32* %575)
  %577 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  store %struct.TYPE_35__* %577, %struct.TYPE_35__** %5, align 8
  br label %694

578:                                              ; preds = %534
  %579 = load i8*, i8** %29, align 8
  %580 = load i32, i32* %30, align 4
  %581 = load i32, i32* %28, align 4
  %582 = load i32, i32* %31, align 4
  %583 = load i32*, i32** %9, align 8
  %584 = call i64 @apr_sockaddr_info_get(%struct.TYPE_39__** %13, i8* %579, i32 %580, i32 %581, i32 %582, i32* %583)
  store i64 %584, i64* %19, align 8
  %585 = load i64, i64* %19, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %578
  %588 = load i64, i64* %19, align 8
  %589 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %590 = call %struct.TYPE_35__* @svn_error_wrap_apr(i64 %588, i8* %589)
  store %struct.TYPE_35__* %590, %struct.TYPE_35__** %5, align 8
  br label %694

591:                                              ; preds = %578
  %592 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %593 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* @SOCK_STREAM, align 4
  %596 = load i32, i32* @APR_PROTO_TCP, align 4
  %597 = load i32*, i32** %9, align 8
  %598 = call i64 (i32**, i32, i32, i32, ...) @apr_socket_create(i32** %12, i32 %594, i32 %595, i32 %596, i32* %597)
  store i64 %598, i64* %19, align 8
  %599 = load i64, i64* %19, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %591
  %602 = load i64, i64* %19, align 8
  %603 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %604 = call %struct.TYPE_35__* @svn_error_wrap_apr(i64 %602, i8* %603)
  store %struct.TYPE_35__* %604, %struct.TYPE_35__** %5, align 8
  br label %694

605:                                              ; preds = %591
  %606 = load i32*, i32** %12, align 8
  %607 = load i32, i32* @APR_SO_REUSEADDR, align 4
  %608 = call i64 @apr_socket_opt_set(i32* %606, i32 %607, i32 1)
  store i64 %608, i64* %19, align 8
  %609 = load i64, i64* %19, align 8
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %615

611:                                              ; preds = %605
  %612 = load i64, i64* %19, align 8
  %613 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %614 = call %struct.TYPE_35__* @svn_error_wrap_apr(i64 %612, i8* %613)
  store %struct.TYPE_35__* %614, %struct.TYPE_35__** %5, align 8
  br label %694

615:                                              ; preds = %605
  %616 = load i32*, i32** %12, align 8
  %617 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %618 = call i64 @apr_socket_bind(i32* %616, %struct.TYPE_39__* %617)
  store i64 %618, i64* %19, align 8
  %619 = load i64, i64* %19, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %625

621:                                              ; preds = %615
  %622 = load i64, i64* %19, align 8
  %623 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %624 = call %struct.TYPE_35__* @svn_error_wrap_apr(i64 %622, i8* %623)
  store %struct.TYPE_35__* %624, %struct.TYPE_35__** %5, align 8
  br label %694

625:                                              ; preds = %615
  %626 = load i32*, i32** %12, align 8
  %627 = load i32, i32* @ACCEPT_BACKLOG, align 4
  %628 = call i64 @apr_socket_listen(i32* %626, i32 %627)
  store i64 %628, i64* %19, align 8
  %629 = load i64, i64* %19, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %635

631:                                              ; preds = %625
  %632 = load i64, i64* %19, align 8
  %633 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %634 = call %struct.TYPE_35__* @svn_error_wrap_apr(i64 %632, i8* %633)
  store %struct.TYPE_35__* %634, %struct.TYPE_35__** %5, align 8
  br label %694

635:                                              ; preds = %625
  %636 = load i8*, i8** %37, align 8
  %637 = icmp ne i8* %636, null
  br i1 %637, label %638, label %643

638:                                              ; preds = %635
  %639 = load i8*, i8** %37, align 8
  %640 = load i32*, i32** %9, align 8
  %641 = call i32 @write_pid_file(i8* %639, i32* %640)
  %642 = call i32 @SVN_ERR(i32 %641)
  br label %643

643:                                              ; preds = %638, %635
  %644 = call %struct.TYPE_36__* (...) @svn_cache_config_get()
  %645 = bitcast %struct.TYPE_36__* %49 to i8*
  %646 = bitcast %struct.TYPE_36__* %644 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %645, i8* align 8 %646, i64 16, i1 false)
  %647 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 3
  %648 = load i32, i32* %647, align 8
  %649 = icmp ne i32 %648, -1
  br i1 %649, label %650, label %654

650:                                              ; preds = %643
  %651 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 3
  %652 = load i32, i32* %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 0
  store i32 %652, i32* %653, align 8
  br label %654

654:                                              ; preds = %650, %643
  %655 = load i8*, i8** @TRUE, align 8
  %656 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 1
  store i8* %655, i8** %656, align 8
  %657 = load i32, i32* %22, align 4
  %658 = icmp eq i32 %657, 128
  br i1 %658, label %659, label %660

659:                                              ; preds = %654
  br label %660

660:                                              ; preds = %659, %654
  %661 = call i32 @svn_cache_config_set(%struct.TYPE_36__* %49)
  br label %662

662:                                              ; preds = %660, %691
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %50, align 8
  %663 = load i32*, i32** %12, align 8
  %664 = load i32, i32* %22, align 4
  %665 = load i32*, i32** %9, align 8
  %666 = call i32 @accept_connection(%struct.TYPE_38__** %50, i32* %663, %struct.TYPE_37__* %17, i32 %664, i32* %665)
  %667 = call i32 @SVN_ERR(i32 %666)
  %668 = load i32, i32* %10, align 4
  %669 = load i32, i32* @run_mode_listen_once, align 4
  %670 = icmp eq i32 %668, %669
  br i1 %670, label %671, label %680

671:                                              ; preds = %662
  %672 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %673 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %674 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = call %struct.TYPE_35__* @serve_socket(%struct.TYPE_38__* %672, i32 %675)
  store %struct.TYPE_35__* %676, %struct.TYPE_35__** %14, align 8
  %677 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %678 = call i32 @close_connection(%struct.TYPE_38__* %677)
  %679 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  store %struct.TYPE_35__* %679, %struct.TYPE_35__** %5, align 8
  br label %694

680:                                              ; preds = %662
  %681 = load i32, i32* %22, align 4
  switch i32 %681, label %691 [
    i32 130, label %682
    i32 128, label %683
    i32 129, label %684
  ]

682:                                              ; preds = %680
  br label %691

683:                                              ; preds = %680
  br label %691

684:                                              ; preds = %680
  %685 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %686 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %687 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = call %struct.TYPE_35__* @serve_socket(%struct.TYPE_38__* %685, i32 %688)
  %690 = call i32 @svn_error_clear(%struct.TYPE_35__* %689)
  br label %691

691:                                              ; preds = %684, %680, %683, %682
  %692 = load %struct.TYPE_38__*, %struct.TYPE_38__** %50, align 8
  %693 = call i32 @close_connection(%struct.TYPE_38__* %692)
  br label %662

694:                                              ; preds = %671, %631, %621, %611, %601, %587, %538, %526, %416, %397, %385, %373, %220, %175, %135, %123
  %695 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  ret %struct.TYPE_35__* %695
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_lib_versions(...) #1

declare dso_local i32 @svn_fs_initialize(i32*) #1

declare dso_local i32 @svn_repos_authz_initialize(i32*) #1

declare dso_local i32 @svn_cmdline__getopt_init(%struct.TYPE_40__**, i32, i8**, i32*) #1

declare dso_local i64 @apr_getopt_long(%struct.TYPE_40__*, i32, i32*, i8**) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32 @usage(i8*, i32*) #1

declare dso_local i32 @help(i32*) #1

declare dso_local %struct.TYPE_35__* @svn_cstring_strtoui64(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_35__* @svn_error_createf(i32, %struct.TYPE_35__*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_utf_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_io_check_resolved_path(i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_internal_style(i8*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @svn_cstring_atoui64(i32*, i8*) #1

declare dso_local i32 @svn_tristate__from_word(i8*) #1

declare dso_local i32 @apr_strtoi64(i8*, i32*, i32) #1

declare dso_local i32 @version(i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @svn_cmdline_fputs(i8*, i8*, i32*, ...) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i32 @svn_repos__config_pool_create(i32**, i32, i32*) #1

declare dso_local i32* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_repos__config_pool_get(i32**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @logger__create(i32**, i8*, i32*) #1

declare dso_local i32 @logger__create_for_stderr(i32**, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, i32*, i32, i32) #1

declare dso_local i32 @svn_stream_for_stdin2(i32**, i8*, i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_ra_svn_create_conn5(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_35__* @serve(i32*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i64 @apr_sockaddr_info_get(%struct.TYPE_39__**, i8*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_error_wrap_apr(i64, i8*) #1

declare dso_local i64 @apr_socket_create(i32**, i32, i32, i32, ...) #1

declare dso_local i64 @apr_socket_opt_set(i32*, i32, i32) #1

declare dso_local i64 @apr_socket_bind(i32*, %struct.TYPE_39__*) #1

declare dso_local i64 @apr_socket_listen(i32*, i32) #1

declare dso_local i32 @write_pid_file(i8*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_cache_config_get(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_cache_config_set(%struct.TYPE_36__*) #1

declare dso_local i32 @accept_connection(%struct.TYPE_38__**, i32*, %struct.TYPE_37__*, i32, i32*) #1

declare dso_local %struct.TYPE_35__* @serve_socket(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @close_connection(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
