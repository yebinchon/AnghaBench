; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa.c_osm_sa_db_file_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa.c_osm_sa_db_file_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { %struct.TYPE_54__, %struct.TYPE_60__, i32, %struct.TYPE_61__ }
%struct.TYPE_54__ = type { i8* }
%struct.TYPE_60__ = type { %struct.TYPE_53__, i32 }
%struct.TYPE_53__ = type { i8*, i8* }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_58__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_52__, %struct.TYPE_51__, %struct.TYPE_49__, %struct.TYPE_67__, i32*, i32*, i32*, i32*, %struct.TYPE_65__, %struct.TYPE_63__, i8*, %struct.TYPE_59__ }
%struct.TYPE_52__ = type { i8** }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i8*, i8*, i8*, i64 }
%struct.TYPE_49__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_48__, %struct.TYPE_46__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i8*, i8*, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i8*, i8* }
%struct.TYPE_67__ = type { %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i8*, i8* }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i8*, i8* }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i8*, i8* }
%struct.TYPE_59__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i8*, i8* }

@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Not first sweep - skip SA DB restore\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"sa db file name is not specified. Skip restore\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@OSM_LOG_SYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"ERR 4C02: Can't open sa db file '%s'. Skip restoring\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Restoring SA DB from file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MC Group\00", align 1
@net16 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" 0x\00", align 1
@net64 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c" mgid=0x\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c":0x\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" port_gid=0x\00", align 1
@net32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" qkey=0x\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" mlid=0x\00", align 1
@net8 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" mtu=0x\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" tclass=0x\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c" pkey=0x\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" rate=0x\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c" pkt_life=0x\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c" sl_flow_hop=0x\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c" scope_state=0x\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c" proxy_join=0x\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"mcm_port\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Service Record:\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" id=0x\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" gid=0x\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c" lease=0x\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" key=0x\00", align 1
@string64 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" data8=0x\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c" data16=0x\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c" data32=0x\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c" data64=0x\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c" modified_time=0x\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c" lease_period=0x\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"InformInfo Record:\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c" subscriber_gid=0x\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c" subscriber_enum=0x\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c" lid_range_begin=0x\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c" lid_range_end=0x\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c" is_generic=0x\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c" subscribe=0x\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c" trap_type=0x\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c" trap_num=0x\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c" qpn_resp_time_val=0x\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c" node_type=0x\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c" rep_addr: lid=0x\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" path_bits=0x\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c" static_rate=0x\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c" remote_qp=0x\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c" remote_qkey=0x\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" pkey_ix=0x\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c" sl=0x\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"GUIDInfo Record:\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c" base_guid=0x\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" lid=0x\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c" block_num=0x\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" guid0=0x\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c" guid1=0x\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c" guid2=0x\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c" guid3=0x\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c" guid4=0x\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c" guid5=0x\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c" guid6=0x\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c" guid7=0x\00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_sa_db_file_load(%struct.TYPE_56__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_56__*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_57__*, align 8
  %9 = alloca %struct.TYPE_57__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_58__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_58__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_58__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_58__, align 8
  %24 = alloca %struct.TYPE_58__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_58__, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %3, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %8, align 8
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %9, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %34, i32 0, i32 2
  %36 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %37 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %35, i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %614

38:                                               ; preds = %1
  %39 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %47, i32 0, i32 2
  %49 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %50 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %48, i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %614

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = call i32* @fopen(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %57, i32 0, i32 2
  %59 = load i32, i32* @OSM_LOG_ERROR, align 4
  %60 = load i32, i32* @OSM_LOG_SYS, align 4
  %61 = or i32 %59, %60
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %58, i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %2, align 4
  br label %614

64:                                               ; preds = %51
  %65 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %65, i32 0, i32 2
  %67 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %66, i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %588, %92, %64
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %72 = load i32*, i32** %6, align 8
  %73 = call i32* @fgets(i8* %71, i32 1023, i32* %72)
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %589

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %78, i8** %12, align 8
  br label %79

79:                                               ; preds = %84, %75
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isspace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 35
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %70

93:                                               ; preds = %87
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %188, label %97

97:                                               ; preds = %93
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %8, align 8
  %98 = call i32 @memset(%struct.TYPE_58__* %14, i32 0, i32 384)
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* @net16, align 4
  %101 = call i32 @PARSE_AHEAD(i8* %99, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %15)
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* @net64, align 4
  %104 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 31
  %105 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %105, i32 0, i32 0
  %107 = call i32 @PARSE_AHEAD(i8* %102, i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %106)
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* @net64, align 4
  %110 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 31
  %111 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %111, i32 0, i32 1
  %113 = call i32 @PARSE_AHEAD(i8* %108, i32 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %112)
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* @net64, align 4
  %116 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 29
  %117 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %117, i32 0, i32 0
  %119 = call i32 @PARSE_AHEAD(i8* %114, i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %118)
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* @net64, align 4
  %122 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 29
  %123 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %123, i32 0, i32 1
  %125 = call i32 @PARSE_AHEAD(i8* %120, i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %124)
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* @net32, align 4
  %128 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %129 = call i32 @PARSE_AHEAD(i8* %126, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %128)
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* @net16, align 4
  %132 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 1
  %133 = call i32 @PARSE_AHEAD(i8* %130, i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %132)
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* @net8, align 4
  %136 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 2
  %137 = call i32 @PARSE_AHEAD(i8* %134, i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %136)
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* @net8, align 4
  %140 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 3
  %141 = call i32 @PARSE_AHEAD(i8* %138, i32 %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %140)
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* @net16, align 4
  %144 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 4
  %145 = call i32 @PARSE_AHEAD(i8* %142, i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %144)
  %146 = load i8*, i8** %12, align 8
  %147 = load i32, i32* @net8, align 4
  %148 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 5
  %149 = call i32 @PARSE_AHEAD(i8* %146, i32 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %148)
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @net8, align 4
  %152 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 6
  %153 = call i32 @PARSE_AHEAD(i8* %150, i32 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %152)
  %154 = load i8*, i8** %12, align 8
  %155 = load i32, i32* @net32, align 4
  %156 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 7
  %157 = call i32 @PARSE_AHEAD(i8* %154, i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %156)
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* @net8, align 4
  %160 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 8
  %161 = call i32 @PARSE_AHEAD(i8* %158, i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %160)
  %162 = load i8*, i8** %12, align 8
  %163 = load i32, i32* @net8, align 4
  %164 = call i32 @PARSE_AHEAD(i8* %162, i32 %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %13)
  %165 = load i8*, i8** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 30
  store i8* %165, i8** %166, align 8
  %167 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = call %struct.TYPE_57__* @load_mcgroup(%struct.TYPE_56__* %167, i8* %168, %struct.TYPE_58__* %14)
  store %struct.TYPE_57__* %169, %struct.TYPE_57__** %8, align 8
  %170 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %171 = icmp ne %struct.TYPE_57__* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  br label %173

173:                                              ; preds = %172, %97
  %174 = load i8*, i8** %15, align 8
  %175 = call i64 @cl_ntoh16(i8* %174)
  %176 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %175, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i8*, i8** %15, align 8
  %183 = call i64 @cl_ntoh16(i8* %182)
  %184 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %185, i32 0, i32 0
  store i64 %183, i64* %186, align 8
  br label %187

187:                                              ; preds = %181, %173
  br label %575

188:                                              ; preds = %93
  %189 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %190 = icmp ne %struct.TYPE_57__* %189, null
  br i1 %190, label %191, label %247

191:                                              ; preds = %188
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 @strncmp(i8* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 8)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %247, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %12, align 8
  %197 = load i32, i32* @net64, align 4
  %198 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %16, i32 0, i32 29
  %199 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %199, i32 0, i32 0
  %201 = call i32 @PARSE_AHEAD(i8* %196, i32 %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %200)
  %202 = load i8*, i8** %12, align 8
  %203 = load i32, i32* @net64, align 4
  %204 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %16, i32 0, i32 29
  %205 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %205, i32 0, i32 1
  %207 = call i32 @PARSE_AHEAD(i8* %202, i32 %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %206)
  %208 = load i8*, i8** %12, align 8
  %209 = load i32, i32* @net8, align 4
  %210 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %16, i32 0, i32 8
  %211 = call i32 @PARSE_AHEAD(i8* %208, i32 %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %210)
  %212 = load i8*, i8** %12, align 8
  %213 = load i32, i32* @net8, align 4
  %214 = call i32 @PARSE_AHEAD(i8* %212, i32 %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %13)
  %215 = load i8*, i8** %13, align 8
  store i8* %215, i8** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %16, i32 0, i32 29
  %217 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %17, align 8
  %220 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %220, i32 0, i32 1
  %222 = load i8*, i8** %17, align 8
  %223 = call i32* @osm_get_port_by_alias_guid(%struct.TYPE_60__* %221, i8* %222)
  store i32* %223, i32** %18, align 8
  %224 = load i32*, i32** %18, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %195
  %227 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %227, i32 0, i32 0
  %229 = load i8*, i8** %17, align 8
  %230 = call i64 @cl_qmap_get(i32* %228, i8* %229)
  %231 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %231, i32 0, i32 0
  %233 = call i64 @cl_qmap_end(i32* %232)
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %226
  %236 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %241 = load i32*, i32** %18, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = call i32 @osm_mgrp_add_port(%struct.TYPE_60__* %237, i32* %239, %struct.TYPE_57__* %240, i32* %241, %struct.TYPE_58__* %16, i8* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %235
  store i32 1, i32* %10, align 4
  br label %246

246:                                              ; preds = %245, %235, %226, %195
  br label %574

247:                                              ; preds = %191, %188
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @strncmp(i8* %248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 15)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %365, label %251

251:                                              ; preds = %247
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %8, align 8
  %252 = call i32 @memset(%struct.TYPE_58__* %20, i32 0, i32 384)
  %253 = load i8*, i8** %12, align 8
  %254 = load i32, i32* @net64, align 4
  %255 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 9
  %256 = call i32 @PARSE_AHEAD(i8* %253, i32 %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %255)
  %257 = load i8*, i8** %12, align 8
  %258 = load i32, i32* @net64, align 4
  %259 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 28
  %260 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %260, i32 0, i32 0
  %262 = call i32 @PARSE_AHEAD(i8* %257, i32 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %261)
  %263 = load i8*, i8** %12, align 8
  %264 = load i32, i32* @net64, align 4
  %265 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 28
  %266 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %266, i32 0, i32 1
  %268 = call i32 @PARSE_AHEAD(i8* %263, i32 %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %267)
  %269 = load i8*, i8** %12, align 8
  %270 = load i32, i32* @net16, align 4
  %271 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 10
  %272 = call i32 @PARSE_AHEAD(i8* %269, i32 %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %271)
  %273 = load i8*, i8** %12, align 8
  %274 = load i32, i32* @net32, align 4
  %275 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 11
  %276 = call i32 @PARSE_AHEAD(i8* %273, i32 %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %275)
  %277 = load i8*, i8** %12, align 8
  %278 = load i32, i32* @net64, align 4
  %279 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 27
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = bitcast i32* %281 to i8**
  %283 = call i32 @PARSE_AHEAD(i8* %277, i32 %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %282)
  %284 = load i8*, i8** %12, align 8
  %285 = load i32, i32* @net64, align 4
  %286 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 27
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  %289 = bitcast i32* %288 to i8**
  %290 = call i32 @PARSE_AHEAD(i8* %284, i32 %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %289)
  %291 = load i8*, i8** %12, align 8
  %292 = load i32, i32* @string64, align 4
  %293 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 12
  %294 = load i8**, i8*** %293, align 8
  %295 = call i32 @PARSE_AHEAD(i8* %291, i32 %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8** %294)
  %296 = load i8*, i8** %12, align 8
  %297 = load i32, i32* @net64, align 4
  %298 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 26
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = bitcast i32* %300 to i8**
  %302 = call i32 @PARSE_AHEAD(i8* %296, i32 %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %301)
  %303 = load i8*, i8** %12, align 8
  %304 = load i32, i32* @net64, align 4
  %305 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 26
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 8
  %308 = bitcast i32* %307 to i8**
  %309 = call i32 @PARSE_AHEAD(i8* %303, i32 %304, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %308)
  %310 = load i8*, i8** %12, align 8
  %311 = load i32, i32* @net64, align 4
  %312 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 25
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = bitcast i32* %314 to i8**
  %316 = call i32 @PARSE_AHEAD(i8* %310, i32 %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** %315)
  %317 = load i8*, i8** %12, align 8
  %318 = load i32, i32* @net64, align 4
  %319 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 25
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  %322 = bitcast i32* %321 to i8**
  %323 = call i32 @PARSE_AHEAD(i8* %317, i32 %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %322)
  %324 = load i8*, i8** %12, align 8
  %325 = load i32, i32* @net64, align 4
  %326 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 24
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = bitcast i32* %328 to i8**
  %330 = call i32 @PARSE_AHEAD(i8* %324, i32 %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8** %329)
  %331 = load i8*, i8** %12, align 8
  %332 = load i32, i32* @net64, align 4
  %333 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 24
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  %336 = bitcast i32* %335 to i8**
  %337 = call i32 @PARSE_AHEAD(i8* %331, i32 %332, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %336)
  %338 = load i8*, i8** %12, align 8
  %339 = load i32, i32* @net64, align 4
  %340 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 13
  %341 = load i8**, i8*** %340, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  %343 = call i32 @PARSE_AHEAD(i8* %338, i32 %339, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %342)
  %344 = load i8*, i8** %12, align 8
  %345 = load i32, i32* @net64, align 4
  %346 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 13
  %347 = load i8**, i8*** %346, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i64 1
  %349 = call i32 @PARSE_AHEAD(i8* %344, i32 %345, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %348)
  %350 = load i8*, i8** %12, align 8
  %351 = load i32, i32* @net32, align 4
  %352 = call i32 @PARSE_AHEAD(i8* %350, i32 %351, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8** %21)
  %353 = load i8*, i8** %12, align 8
  %354 = load i32, i32* @net32, align 4
  %355 = call i32 @PARSE_AHEAD(i8* %353, i32 %354, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8** %22)
  %356 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %357 = load i8*, i8** %21, align 8
  %358 = call i32 @cl_ntoh32(i8* %357)
  %359 = load i8*, i8** %22, align 8
  %360 = call i32 @cl_ntoh32(i8* %359)
  %361 = call i64 @load_svcr(%struct.TYPE_56__* %356, %struct.TYPE_58__* %20, i32 %358, i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %251
  store i32 1, i32* %10, align 4
  br label %364

364:                                              ; preds = %363, %251
  br label %573

365:                                              ; preds = %247
  %366 = load i8*, i8** %12, align 8
  %367 = call i32 @strncmp(i8* %366, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 18)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %492, label %369

369:                                              ; preds = %365
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %8, align 8
  %370 = call i32 @memset(%struct.TYPE_58__* %23, i32 0, i32 384)
  %371 = call i32 @memset(%struct.TYPE_58__* %24, i32 0, i32 384)
  %372 = load i8*, i8** %12, align 8
  %373 = load i32, i32* @net64, align 4
  %374 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 23
  %375 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %375, i32 0, i32 0
  %377 = call i32 @PARSE_AHEAD(i8* %372, i32 %373, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8** %376)
  %378 = load i8*, i8** %12, align 8
  %379 = load i32, i32* @net64, align 4
  %380 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 23
  %381 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %381, i32 0, i32 1
  %383 = call i32 @PARSE_AHEAD(i8* %378, i32 %379, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %382)
  %384 = load i8*, i8** %12, align 8
  %385 = load i32, i32* @net16, align 4
  %386 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 14
  %387 = call i32 @PARSE_AHEAD(i8* %384, i32 %385, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8** %386)
  %388 = load i8*, i8** %12, align 8
  %389 = load i32, i32* @net64, align 4
  %390 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %391 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %390, i32 0, i32 6
  %392 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %392, i32 0, i32 0
  %394 = call i32 @PARSE_AHEAD(i8* %388, i32 %389, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %393)
  %395 = load i8*, i8** %12, align 8
  %396 = load i32, i32* @net64, align 4
  %397 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %398 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %399, i32 0, i32 1
  %401 = call i32 @PARSE_AHEAD(i8* %395, i32 %396, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %400)
  %402 = load i8*, i8** %12, align 8
  %403 = load i32, i32* @net16, align 4
  %404 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %405 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %404, i32 0, i32 0
  %406 = call i32 @PARSE_AHEAD(i8* %402, i32 %403, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8** %405)
  %407 = load i8*, i8** %12, align 8
  %408 = load i32, i32* @net16, align 4
  %409 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %410 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %409, i32 0, i32 1
  %411 = call i32 @PARSE_AHEAD(i8* %407, i32 %408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8** %410)
  %412 = load i8*, i8** %12, align 8
  %413 = load i32, i32* @net8, align 4
  %414 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %415 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %414, i32 0, i32 2
  %416 = call i32 @PARSE_AHEAD(i8* %412, i32 %413, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** %415)
  %417 = load i8*, i8** %12, align 8
  %418 = load i32, i32* @net8, align 4
  %419 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %420 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %419, i32 0, i32 3
  %421 = call i32 @PARSE_AHEAD(i8* %417, i32 %418, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8** %420)
  %422 = load i8*, i8** %12, align 8
  %423 = load i32, i32* @net16, align 4
  %424 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %425 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %424, i32 0, i32 4
  %426 = call i32 @PARSE_AHEAD(i8* %422, i32 %423, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8** %425)
  %427 = load i8*, i8** %12, align 8
  %428 = load i32, i32* @net16, align 4
  %429 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %430 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %429, i32 0, i32 5
  %431 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %431, i32 0, i32 0
  %433 = call i32 @PARSE_AHEAD(i8* %427, i32 %428, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8** %432)
  %434 = load i8*, i8** %12, align 8
  %435 = load i32, i32* @net32, align 4
  %436 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %437 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %436, i32 0, i32 5
  %438 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %438, i32 0, i32 1
  %440 = call i32 @PARSE_AHEAD(i8* %434, i32 %435, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), i8** %439)
  %441 = load i8*, i8** %12, align 8
  %442 = load i32, i32* @net32, align 4
  %443 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %23, i32 0, i32 22
  %444 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %445, i32 0, i32 2
  %447 = bitcast i32* %446 to i8**
  %448 = call i32 @PARSE_AHEAD(i8* %441, i32 %442, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8** %447)
  %449 = load i8*, i8** %12, align 8
  %450 = load i32, i32* @net16, align 4
  %451 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 15
  %452 = call i32 @PARSE_AHEAD(i8* %449, i32 %450, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8** %451)
  %453 = load i8*, i8** %12, align 8
  %454 = load i32, i32* @net8, align 4
  %455 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 16
  %456 = call i32 @PARSE_AHEAD(i8* %453, i32 %454, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i8** %455)
  %457 = load i8*, i8** %12, align 8
  %458 = load i32, i32* @net8, align 4
  %459 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 17
  %460 = call i32 @PARSE_AHEAD(i8* %457, i32 %458, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8** %459)
  %461 = load i8*, i8** %12, align 8
  %462 = load i32, i32* @net32, align 4
  %463 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 21
  %464 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %464, i32 0, i32 0
  %466 = call i32 @PARSE_AHEAD(i8* %461, i32 %462, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8** %465)
  %467 = load i8*, i8** %12, align 8
  %468 = load i32, i32* @net32, align 4
  %469 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 21
  %470 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %470, i32 0, i32 1
  %472 = call i32 @PARSE_AHEAD(i8* %467, i32 %468, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8** %471)
  %473 = load i8*, i8** %12, align 8
  %474 = load i32, i32* @net16, align 4
  %475 = call i32 @PARSE_AHEAD(i8* %473, i32 %474, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8** %25)
  %476 = load i8*, i8** %25, align 8
  %477 = call i64 @cl_ntoh16(i8* %476)
  %478 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 21
  %479 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %479, i32 0, i32 3
  store i64 %477, i64* %480, align 8
  %481 = load i8*, i8** %12, align 8
  %482 = load i32, i32* @net8, align 4
  %483 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 21
  %484 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %484, i32 0, i32 2
  %486 = call i32 @PARSE_AHEAD(i8* %481, i32 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8** %485)
  %487 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %488 = call i64 @load_infr(%struct.TYPE_56__* %487, %struct.TYPE_58__* %23, %struct.TYPE_58__* %24)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %369
  store i32 1, i32* %10, align 4
  br label %491

491:                                              ; preds = %490, %369
  br label %572

492:                                              ; preds = %365
  %493 = load i8*, i8** %12, align 8
  %494 = call i32 @strncmp(i8* %493, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i32 16)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %571, label %496

496:                                              ; preds = %492
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %8, align 8
  %497 = call i32 @memset(%struct.TYPE_58__* %26, i32 0, i32 384)
  %498 = load i8*, i8** %12, align 8
  %499 = load i32, i32* @net64, align 4
  %500 = call i32 @PARSE_AHEAD(i8* %498, i32 %499, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8** %27)
  %501 = load i8*, i8** %12, align 8
  %502 = load i32, i32* @net16, align 4
  %503 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 18
  %504 = call i32 @PARSE_AHEAD(i8* %501, i32 %502, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8** %503)
  %505 = load i8*, i8** %12, align 8
  %506 = load i32, i32* @net8, align 4
  %507 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 19
  %508 = call i32 @PARSE_AHEAD(i8* %505, i32 %506, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8** %507)
  %509 = load i8*, i8** %12, align 8
  %510 = load i32, i32* @net64, align 4
  %511 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %512 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %511, i32 0, i32 0
  %513 = load i8**, i8*** %512, align 8
  %514 = getelementptr inbounds i8*, i8** %513, i64 0
  %515 = call i32 @PARSE_AHEAD(i8* %509, i32 %510, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8** %514)
  %516 = load i8*, i8** %12, align 8
  %517 = load i32, i32* @net64, align 4
  %518 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %519 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %518, i32 0, i32 0
  %520 = load i8**, i8*** %519, align 8
  %521 = getelementptr inbounds i8*, i8** %520, i64 1
  %522 = call i32 @PARSE_AHEAD(i8* %516, i32 %517, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0), i8** %521)
  %523 = load i8*, i8** %12, align 8
  %524 = load i32, i32* @net64, align 4
  %525 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %526 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %525, i32 0, i32 0
  %527 = load i8**, i8*** %526, align 8
  %528 = getelementptr inbounds i8*, i8** %527, i64 2
  %529 = call i32 @PARSE_AHEAD(i8* %523, i32 %524, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8** %528)
  %530 = load i8*, i8** %12, align 8
  %531 = load i32, i32* @net64, align 4
  %532 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %533 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %532, i32 0, i32 0
  %534 = load i8**, i8*** %533, align 8
  %535 = getelementptr inbounds i8*, i8** %534, i64 3
  %536 = call i32 @PARSE_AHEAD(i8* %530, i32 %531, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i8** %535)
  %537 = load i8*, i8** %12, align 8
  %538 = load i32, i32* @net64, align 4
  %539 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %540 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %539, i32 0, i32 0
  %541 = load i8**, i8*** %540, align 8
  %542 = getelementptr inbounds i8*, i8** %541, i64 4
  %543 = call i32 @PARSE_AHEAD(i8* %537, i32 %538, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i8** %542)
  %544 = load i8*, i8** %12, align 8
  %545 = load i32, i32* @net64, align 4
  %546 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %547 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %546, i32 0, i32 0
  %548 = load i8**, i8*** %547, align 8
  %549 = getelementptr inbounds i8*, i8** %548, i64 5
  %550 = call i32 @PARSE_AHEAD(i8* %544, i32 %545, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i8** %549)
  %551 = load i8*, i8** %12, align 8
  %552 = load i32, i32* @net64, align 4
  %553 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %554 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %553, i32 0, i32 0
  %555 = load i8**, i8*** %554, align 8
  %556 = getelementptr inbounds i8*, i8** %555, i64 6
  %557 = call i32 @PARSE_AHEAD(i8* %551, i32 %552, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8** %556)
  %558 = load i8*, i8** %12, align 8
  %559 = load i32, i32* @net64, align 4
  %560 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %26, i32 0, i32 20
  %561 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %560, i32 0, i32 0
  %562 = load i8**, i8*** %561, align 8
  %563 = getelementptr inbounds i8*, i8** %562, i64 7
  %564 = call i32 @PARSE_AHEAD(i8* %558, i32 %559, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i8** %563)
  %565 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %566 = load i8*, i8** %27, align 8
  %567 = call i64 @load_guidinfo(%struct.TYPE_56__* %565, i8* %566, %struct.TYPE_58__* %26)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %496
  store i32 1, i32* %10, align 4
  br label %570

570:                                              ; preds = %569, %496
  br label %571

571:                                              ; preds = %570, %492
  br label %572

572:                                              ; preds = %571, %491
  br label %573

573:                                              ; preds = %572, %364
  br label %574

574:                                              ; preds = %573, %246
  br label %575

575:                                              ; preds = %574, %187
  %576 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %577 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %578 = icmp ne %struct.TYPE_57__* %576, %577
  br i1 %578, label %579, label %588

579:                                              ; preds = %575
  %580 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %581 = icmp ne %struct.TYPE_57__* %580, null
  br i1 %581, label %582, label %586

582:                                              ; preds = %579
  %583 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %584 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %585 = call i32 @sa_db_file_load_handle_mgrp(%struct.TYPE_56__* %583, %struct.TYPE_57__* %584)
  br label %586

586:                                              ; preds = %582, %579
  %587 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  store %struct.TYPE_57__* %587, %struct.TYPE_57__** %9, align 8
  br label %588

588:                                              ; preds = %586, %575
  br label %70

589:                                              ; preds = %70
  %590 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %591 = icmp ne %struct.TYPE_57__* %590, null
  br i1 %591, label %592, label %596

592:                                              ; preds = %589
  %593 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %594 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %595 = call i32 @sa_db_file_load_handle_mgrp(%struct.TYPE_56__* %593, %struct.TYPE_57__* %594)
  br label %596

596:                                              ; preds = %592, %589
  %597 = load i32, i32* %10, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %605

599:                                              ; preds = %596
  %600 = load i8*, i8** @FALSE, align 8
  %601 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %603, i32 0, i32 1
  store i8* %600, i8** %604, align 8
  br label %605

605:                                              ; preds = %599, %596
  %606 = load i8*, i8** @FALSE, align 8
  %607 = load %struct.TYPE_56__*, %struct.TYPE_56__** %3, align 8
  %608 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %608, i32 0, i32 0
  store i8* %606, i8** %609, align 8
  br label %610

610:                                              ; preds = %605
  %611 = load i32*, i32** %6, align 8
  %612 = call i32 @fclose(i32* %611)
  %613 = load i32, i32* %7, align 4
  store i32 %613, i32* %2, align 4
  br label %614

614:                                              ; preds = %610, %56, %46, %33
  %615 = load i32, i32* %2, align 4
  ret i32 %615
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_58__*, i32, i32) #1

declare dso_local i32 @PARSE_AHEAD(i8*, i32, i8*, i8**) #1

declare dso_local %struct.TYPE_57__* @load_mcgroup(%struct.TYPE_56__*, i8*, %struct.TYPE_58__*) #1

declare dso_local i64 @cl_ntoh16(i8*) #1

declare dso_local i32* @osm_get_port_by_alias_guid(%struct.TYPE_60__*, i8*) #1

declare dso_local i64 @cl_qmap_get(i32*, i8*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i32 @osm_mgrp_add_port(%struct.TYPE_60__*, i32*, %struct.TYPE_57__*, i32*, %struct.TYPE_58__*, i8*) #1

declare dso_local i64 @load_svcr(%struct.TYPE_56__*, %struct.TYPE_58__*, i32, i32) #1

declare dso_local i32 @cl_ntoh32(i8*) #1

declare dso_local i64 @load_infr(%struct.TYPE_56__*, %struct.TYPE_58__*, %struct.TYPE_58__*) #1

declare dso_local i64 @load_guidinfo(%struct.TYPE_56__*, i8*, %struct.TYPE_58__*) #1

declare dso_local i32 @sa_db_file_load_handle_mgrp(%struct.TYPE_56__*, %struct.TYPE_57__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
