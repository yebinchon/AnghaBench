; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, float, i32, i8*, i8* }
%struct.ibnd_config = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"show full information (ports' speed and width, vlcap)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"show more information\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"list of connected nodes\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"grouping\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"show grouping\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Hca_list\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"list of connected CAs\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Switch_list\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"list of connected switches\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Router_list\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"list of connected routers\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"node-name-map\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"node name map file\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"filename to cache ibnetdiscover data to\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"load-cache\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"filename of ibnetdiscover cache to load\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"filename of ibnetdiscover cache to diff\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"diffcheck\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"<key(s)>\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"specify checks to execute for --diff\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"obtain a ports report\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"max_hops\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"report max hops discovered by the library\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"outstanding_smps\00", align 1
@.str.31 = private unnamed_addr constant [79 x i8] c"specify the number of outstanding SMP's which should be issued during the scan\00", align 1
@__const.main.opts = private unnamed_addr constant [16 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), float 1.020000e+02, i32 0, i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), float 1.150000e+02, i32 0, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), float 1.080000e+02, i32 0, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), float 1.030000e+02, i32 0, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), float 7.200000e+01, i32 0, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), float 8.300000e+01, i32 0, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), float 8.200000e+01, i32 0, i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), float 1.000000e+00, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), float 2.000000e+00, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), float 3.000000e+00, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), float 4.000000e+00, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), float 5.000000e+00, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), float 1.120000e+02, i32 0, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), float 1.090000e+02, i32 0, i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), float 1.110000e+02, i32 1, i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.31, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@__const.main.usage_args = private unnamed_addr constant [16 x i8] c"[topology-file]\00", align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"DGKLs\00", align 1
@process_opt = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@f = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ibd_timeout = common dso_local global i64 0, align 8
@ibd_ibnetdisc_flags = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"can't open file %s for writing\00", align 1
@ibd_mkey = common dso_local global i32 0, align 4
@node_name_map_file = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@diff_cache_file = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [39 x i8] c"loading cached fabric for diff failed\0A\00", align 1
@load_cache_file = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [30 x i8] c"loading cached fabric failed\0A\00", align 1
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"discover failed\0A\00", align 1
@ports_report = common dso_local global i64 0, align 8
@dump_ports_report = common dso_local global i32 0, align 4
@list = common dso_local global i64 0, align 8
@group = common dso_local global i32 0, align 4
@cache_file = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [35 x i8] c"caching ibnetdiscover data failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ibnd_config, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x %struct.ibdiag_opt], align 16
  %10 = alloca [16 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.ibnd_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = bitcast [16 x %struct.ibdiag_opt]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 512, i1 false)
  %13 = bitcast [16 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 16, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds [16 x %struct.ibdiag_opt], [16 x %struct.ibdiag_opt]* %9, i64 0, i64 0
  %17 = load i32, i32* @process_opt, align 4
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %19 = call i32 @ibdiag_process_opts(i32 %14, i8** %15, %struct.ibnd_config* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), %struct.ibdiag_opt* %16, i32 %17, i8* %18, i32* null)
  %20 = load i32, i32* @stdout, align 4
  store i32 %20, i32* @f, align 4
  %21 = load i64, i64* @optind, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @optind, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  store i8** %28, i8*** %5, align 8
  %29 = load i64, i64* @ibd_timeout, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i64, i64* @ibd_timeout, align 8
  %33 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %6, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* @ibd_ibnetdisc_flags, align 4
  %36 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  store i32 %43, i32* @f, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %45, %39, %34
  %51 = load i32, i32* @ibd_mkey, align 4
  %52 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @node_name_map_file, align 4
  %54 = call i32 @open_node_name_map(i32 %53)
  store i32 %54, i32* @node_name_map, align 4
  %55 = load i64, i64* @diff_cache_file, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i64, i64* @diff_cache_file, align 8
  %59 = call i32* @ibnd_load_fabric(i64 %58, i32 0)
  store i32* %59, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57, %50
  %64 = load i64, i64* @load_cache_file, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i64, i64* @load_cache_file, align 8
  %68 = call i32* @ibnd_load_fabric(i64 %67, i32 0)
  store i32* %68, i32** %7, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  br label %81

73:                                               ; preds = %63
  %74 = load i32, i32* @ibd_ca, align 4
  %75 = load i32, i32* @ibd_ca_port, align 4
  %76 = call i32* @ibnd_discover_fabric(i32 %74, i32 %75, i32* null, %struct.ibnd_config* %6)
  store i32* %76, i32** %7, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  br label %81

81:                                               ; preds = %80, %72
  %82 = load i64, i64* @ports_report, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @dump_ports_report, align 4
  %87 = call i32 @ibnd_iter_nodes(i32* %85, i32 %86, i32* null)
  br label %108

88:                                               ; preds = %81
  %89 = load i64, i64* @list, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  %93 = load i64, i64* @list, align 8
  %94 = call i32 @list_nodes(i32* %92, i64 %93)
  br label %107

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @diff(i32* %99, i32* %100)
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @group, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @dump_topology(i32 %103, i32* %104)
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %84
  %109 = load i64, i64* @cache_file, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** %7, align 8
  %113 = load i64, i64* @cache_file, align 8
  %114 = call i64 @ibnd_cache_fabric(i32* %112, i64 %113, i32 0)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @ibnd_destroy_fabric(i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @ibnd_destroy_fabric(i32* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32, i32* @node_name_map, align 4
  %129 = call i32 @close_node_name_map(i32 %128)
  %130 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, %struct.ibnd_config*, i8*, %struct.ibdiag_opt*, i32, i8*, i32*) #2

declare dso_local i32 @fopen(i8*, i8*) #2

declare dso_local i32 @IBEXIT(i8*, ...) #2

declare dso_local i32 @open_node_name_map(i32) #2

declare dso_local i32* @ibnd_load_fabric(i64, i32) #2

declare dso_local i32* @ibnd_discover_fabric(i32, i32, i32*, %struct.ibnd_config*) #2

declare dso_local i32 @ibnd_iter_nodes(i32*, i32, i32*) #2

declare dso_local i32 @list_nodes(i32*, i64) #2

declare dso_local i32 @diff(i32*, i32*) #2

declare dso_local i32 @dump_topology(i32, i32*) #2

declare dso_local i64 @ibnd_cache_fabric(i32*, i64, i32) #2

declare dso_local i32 @ibnd_destroy_fabric(i32*) #2

declare dso_local i32 @close_node_name_map(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
