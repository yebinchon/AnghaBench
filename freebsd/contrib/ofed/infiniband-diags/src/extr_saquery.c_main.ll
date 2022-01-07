; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i32, i8*, i8* }
%struct.query_cmd = type { i8*, i8*, i8*, i64, i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* }
%struct.sa_handle = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.query_params = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"get PathRecord info\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"get NodeRecord info\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"return the Lids of the name specified\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"return the unique Lid of the name specified\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"return the Guids of the name specified\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"return name for the Lid specified\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"return name for the Guid specified\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"return the PortInfoRecords with isSM or isSMdisabled capability mask bit on\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"get multicast group info\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.19 = private unnamed_addr constant [133 x i8] c"get multicast member info (if multicast group specified, list member GIDs only for group specified, for example 'saquery -m 0xC000')\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"get LinkRecord info\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"get the SA's class port info\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"get ServiceRecord info\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"get InformInfoRecord (subscription) info\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"the node desc of the CA's\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"with-grh\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"add GRH to path record query\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"sa-dgid\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"<gid>\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Set destination GID (in IPv6 format) in the GRH\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"src-to-dst\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"<src:dst>\00", align 1
@.str.37 = private unnamed_addr constant [79 x i8] c"get a PathRecord for <src:dst> where src and dst are either node names or LIDs\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"sgid-to-dgid\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"<sgid-dgid>\00", align 1
@.str.40 = private unnamed_addr constant [82 x i8] c"get a PathRecord for <sgid-dgid> where sgid and dgid are addresses in IPv6 format\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"node-name-map\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"specify a node name map file\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"smkey\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"<val>\00", align 1
@.str.46 = private unnamed_addr constant [207 x i8] c"SA SM_Key value for the query. If non-numeric value (like 'x') is specified then saquery will prompt for a value.  Default (when not specified here or in ibdiag.conf) is to  use SM_Key == 0 (or \22untrusted\22)\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"slid\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"<lid>\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Source LID (PathRecord)\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"dlid\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Destination LID (PathRecord)\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"mlid\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Multicast LID (MCMemberRecord)\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"sgid\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"Source GID (IPv6 format) (PathRecord)\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"dgid\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"Destination GID (IPv6 format) (PathRecord)\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Port GID (MCMemberRecord)\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"mgid\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"Multicast GID (MCMemberRecord)\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"reversible\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Reversible path (PathRecord)\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"numb_path\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Number of paths (PathRecord)\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.67 = private unnamed_addr constant [118 x i8] c"P_Key (PathRecord, MCMemberRecord). If non-numeric value (like 'x') is specified then saquery will prompt for a value\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"qos_class\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"QoS Class (PathRecord)\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"Service level (PathRecord, MCMemberRecord)\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"MTU and selector (PathRecord, MCMemberRecord)\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"Rate and selector (PathRecord, MCMemberRecord)\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"pkt_lifetime\00", align 1
@.str.77 = private unnamed_addr constant [58 x i8] c"Packet lifetime and selector (PathRecord, MCMemberRecord)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"qkey\00", align 1
@.str.79 = private unnamed_addr constant [106 x i8] c"Q_Key (MCMemberRecord). If non-numeric value (like 'x') is specified then saquery will prompt for a value\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"tclass\00", align 1
@.str.81 = private unnamed_addr constant [43 x i8] c"Traffic Class (PathRecord, MCMemberRecord)\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"flow_label\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"Flow Label (PathRecord, MCMemberRecord)\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"hop_limit\00", align 1
@.str.85 = private unnamed_addr constant [39 x i8] c"Hop limit (PathRecord, MCMemberRecord)\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"Scope (MCMemberRecord)\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"join_state\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Join state (MCMemberRecord)\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"proxy_join\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"Proxy join (MCMemberRecord)\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"service_id\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"ServiceID (PathRecord)\00", align 1
@__const.main.opts = private unnamed_addr constant [45 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8 112, i32 0, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8 78, i32 0, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8 76, i32 0, i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8 108, i32 0, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8 71, i32 0, i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8 79, i32 0, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8 85, i32 0, i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8 115, i32 0, i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8 103, i32 0, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8 109, i32 0, i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.19, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8 120, i32 0, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8 99, i32 0, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8 83, i32 0, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8 73, i32 0, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8 68, i32 0, i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8 23, i32 0, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8 24, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8 1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.37, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8 2, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.40, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i8 3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8 4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.46, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8 5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8 6, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8 7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8 14, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8 15, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8 16, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8 17, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8 114, i32 1, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8 110, i32 1, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8 18, i32 1, i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.67, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i8 81, i32 1, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i8 19, i32 1, i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.71, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8 77, i32 1, i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8 82, i32 1, i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.75, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8 20, i32 1, i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.77, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8 113, i32 1, i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.79, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8 84, i32 1, i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.81, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8 70, i32 1, i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8 72, i32 1, i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.85, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8 21, i32 1, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8 74, i32 1, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8 88, i32 1, i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8 22, i32 1, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@.str.94 = private unnamed_addr constant [78 x i8] c"[query-name] [<name> | <lid> | <guid>]\0A\0ASupported query names (and aliases):\0A\00", align 1
@query_cmds = common dso_local global %struct.query_cmd* null, align 8
@.str.95 = private unnamed_addr constant [14 x i8] c"  %s (%s) %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"\0A  Queries node records by default.\00", align 1
@DEFAULT_SA_TIMEOUT_MS = common dso_local global i32 0, align 4
@ibd_timeout = common dso_local global i32 0, align 4
@.str.98 = private unnamed_addr constant [6 x i8] c"DGLsy\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@query_type = common dso_local global i64 0, align 8
@command = common dso_local global i32 0, align 4
@SAQUERY_CMD_QUERY = common dso_local global i32 0, align 4
@IB_SA_ATTR_NODERECORD = common dso_local global i64 0, align 8
@node_print_desc = common dso_local global i64 0, align 8
@NAME_OF_LID = common dso_local global i64 0, align 8
@requested_lid = common dso_local global i64 0, align 8
@requested_lid_flag = common dso_local global i32 0, align 4
@NAME_OF_GUID = common dso_local global i64 0, align 8
@requested_guid = common dso_local global i64 0, align 8
@requested_guid_flag = common dso_local global i32 0, align 4
@requested_name = common dso_local global i8* null, align 8
@LID_ONLY = common dso_local global i64 0, align 8
@UNIQUE_LID_ONLY = common dso_local global i64 0, align 8
@GUID_ONLY = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.99 = private unnamed_addr constant [27 x i8] c"ERROR: name not specified\0A\00", align 1
@.str.100 = private unnamed_addr constant [26 x i8] c"ERROR: lid not specified\0A\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"ERROR: guid not specified\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"ERROR: lid invalid\0A\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"Failed to initialized umad library\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"Failed to bind to the SA\00", align 1
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@.str.105 = private unnamed_addr constant [28 x i8] c"can't resolve self port %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"Failed to query SA:PathRecord\0A\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"Failed to set GRH\0A\00", align 1
@node_name_map_file = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@src_lid = common dso_local global i64* null, align 8
@dst_lid = common dso_local global i64* null, align 8
@CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_SA_ATTR_SWITCHINFORECORD = common dso_local global i64 0, align 8
@.str.108 = private unnamed_addr constant [34 x i8] c"Failed to query SA:ClassPortInfo\0A\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Unknown query type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.sa_handle*, align 8
  %11 = alloca %struct.query_params, align 8
  %12 = alloca %struct.query_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [45 x %struct.ibdiag_opt], align 16
  %16 = alloca %struct.TYPE_10__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = bitcast [45 x %struct.ibdiag_opt]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([45 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 1440, i1 false)
  %19 = call i32 @memset(%struct.query_params* %11, i32 0, i32 64)
  %20 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 2
  store i32 -1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 3
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 4
  store i32 -1, i32* %25, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.94, i64 0, i64 0))
  store i32 %27, i32* %14, align 4
  %28 = load %struct.query_cmd*, %struct.query_cmd** @query_cmds, align 8
  store %struct.query_cmd* %28, %struct.query_cmd** %12, align 8
  br label %29

29:                                               ; preds = %79, %2
  %30 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %31 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %29
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 1024, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %44 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %47 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %52 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0), %54 ]
  %57 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %58 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %63 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i8* [ %64, %61 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0), %65 ]
  %68 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i64 0, i64 0), i8* %45, i8* %56, i8* %67)
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp uge i64 %74, 1024
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @exit(i32 -1) #4
  unreachable

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %81 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %80, i32 1
  store %struct.query_cmd* %81, %struct.query_cmd** %12, align 8
  br label %29

82:                                               ; preds = %29
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 1024, %88
  %90 = trunc i64 %89 to i32
  %91 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.97, i64 0, i64 0))
  store %struct.query_cmd* null, %struct.query_cmd** %12, align 8
  %92 = load i32, i32* @DEFAULT_SA_TIMEOUT_MS, align 4
  store i32 %92, i32* @ibd_timeout, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds [45 x %struct.ibdiag_opt], [45 x %struct.ibdiag_opt]* %15, i64 0, i64 0
  %96 = load i32, i32* @process_opt, align 4
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %98 = call i32 @ibdiag_process_opts(i32 %93, i8** %94, %struct.query_params* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), %struct.ibdiag_opt* %95, i32 %96, i8* %97, i32* null)
  %99 = load i64, i64* @optind, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load i64, i64* @optind, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 %104
  store i8** %106, i8*** %5, align 8
  %107 = load i64, i64* @query_type, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %82
  %110 = load i32, i32* @command, align 4
  %111 = load i32, i32* @SAQUERY_CMD_QUERY, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call %struct.query_cmd* @find_query(i8* %119)
  store %struct.query_cmd* %120, %struct.query_cmd** %12, align 8
  %121 = icmp ne %struct.query_cmd* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116, %113
  %123 = load i64, i64* @IB_SA_ATTR_NODERECORD, align 8
  store i64 %123, i64* @query_type, align 8
  br label %132

124:                                              ; preds = %116
  %125 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %126 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* @query_type, align 8
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %4, align 4
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %5, align 8
  br label %132

132:                                              ; preds = %124, %122
  br label %133

133:                                              ; preds = %132, %109, %82
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %133
  %137 = load i64, i64* @node_print_desc, align 8
  %138 = load i64, i64* @NAME_OF_LID, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strtoul(i8* %143, i32* null, i32 0)
  store i64 %144, i64* @requested_lid, align 8
  %145 = load i32, i32* @requested_lid_flag, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @requested_lid_flag, align 4
  br label %163

147:                                              ; preds = %136
  %148 = load i64, i64* @node_print_desc, align 8
  %149 = load i64, i64* @NAME_OF_GUID, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @strtoul(i8* %154, i32* null, i32 0)
  store i64 %155, i64* @requested_guid, align 8
  %156 = load i32, i32* @requested_guid_flag, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @requested_guid_flag, align 4
  br label %162

158:                                              ; preds = %147
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** @requested_name, align 8
  br label %162

162:                                              ; preds = %158, %151
  br label %163

163:                                              ; preds = %162, %140
  br label %164

164:                                              ; preds = %163, %133
  %165 = load i64, i64* @node_print_desc, align 8
  %166 = load i64, i64* @LID_ONLY, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* @node_print_desc, align 8
  %170 = load i64, i64* @UNIQUE_LID_ONLY, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* @node_print_desc, align 8
  %174 = load i64, i64* @GUID_ONLY, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172, %168, %164
  %177 = load i8*, i8** @requested_name, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i64 0, i64 0))
  %182 = call i32 (...) @ibdiag_show_usage()
  br label %183

183:                                              ; preds = %179, %176, %172
  %184 = load i64, i64* @node_print_desc, align 8
  %185 = load i64, i64* @NAME_OF_LID, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i32, i32* @requested_lid_flag, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i64 0, i64 0))
  %193 = call i32 (...) @ibdiag_show_usage()
  br label %194

194:                                              ; preds = %190, %187, %183
  %195 = load i64, i64* @node_print_desc, align 8
  %196 = load i64, i64* @NAME_OF_GUID, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* @requested_guid_flag, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* @stderr, align 4
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.101, i64 0, i64 0))
  %204 = call i32 (...) @ibdiag_show_usage()
  br label %205

205:                                              ; preds = %201, %198, %194
  %206 = load i64, i64* @node_print_desc, align 8
  %207 = load i64, i64* @NAME_OF_LID, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i64, i64* @requested_lid, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* @stderr, align 4
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0))
  %215 = call i32 (...) @ibdiag_show_usage()
  br label %216

216:                                              ; preds = %212, %209, %205
  %217 = call i64 (...) @umad_init()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 @IBEXIT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.103, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %216
  %222 = call %struct.sa_handle* (...) @sa_get_handle()
  store %struct.sa_handle* %222, %struct.sa_handle** %10, align 8
  %223 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %224 = icmp ne %struct.sa_handle* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call i32 @IBPANIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %221
  %228 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %272

231:                                              ; preds = %227
  %232 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %232, i8 0, i64 4, i1 false)
  %233 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 8
  %234 = call i32 @memcmp(%struct.TYPE_10__* %16, i32* %233, i32 4)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %261, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @ibd_ca, align 4
  %238 = load i32, i32* @ibd_ca_port, align 4
  %239 = call i32 @resolve_self(i32 %237, i32 %238, %struct.TYPE_11__* %6, i32* %7, i32 0)
  store i32 %239, i32* %13, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load i32, i32* @stderr, align 4
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i64 0, i64 0), i8* %245)
  br label %366

247:                                              ; preds = %236
  %248 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %252 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @sm_pr_query(%struct.sa_handle* %248, %struct.TYPE_10__* %16, i32 %250, i32 %254)
  store i32 %255, i32* %13, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = load i32, i32* @stderr, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.106, i64 0, i64 0))
  br label %366

260:                                              ; preds = %247
  br label %264

261:                                              ; preds = %231
  %262 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 8
  %263 = call i32 @memcpy(%struct.TYPE_10__* %16, i32* %262, i32 4)
  br label %264

264:                                              ; preds = %261, %260
  %265 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %266 = call i32 @sa_set_handle(%struct.sa_handle* %265, i32 1, %struct.TYPE_10__* %16)
  store i32 %266, i32* %13, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32, i32* @stderr, align 4
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i64 0, i64 0))
  br label %366

271:                                              ; preds = %264
  br label %272

272:                                              ; preds = %271, %227
  %273 = load i32, i32* @node_name_map_file, align 4
  %274 = call i32 @open_node_name_map(i32 %273)
  store i32 %274, i32* @node_name_map, align 4
  %275 = load i64*, i64** @src_lid, align 8
  %276 = icmp ne i64* %275, null
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = load i64*, i64** @src_lid, align 8
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %283 = load i64*, i64** @src_lid, align 8
  %284 = call i8* @get_lid(%struct.sa_handle* %282, i64* %283)
  %285 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 7
  store i8* %284, i8** %285, align 8
  br label %286

286:                                              ; preds = %281, %277, %272
  %287 = load i64*, i64** @dst_lid, align 8
  %288 = icmp ne i64* %287, null
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load i64*, i64** @dst_lid, align 8
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %295 = load i64*, i64** @dst_lid, align 8
  %296 = call i8* @get_lid(%struct.sa_handle* %294, i64* %295)
  %297 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 6
  store i8* %296, i8** %297, align 8
  br label %298

298:                                              ; preds = %293, %289, %286
  %299 = load i32, i32* @command, align 4
  %300 = icmp eq i32 %299, 132
  br i1 %300, label %309, label %301

301:                                              ; preds = %298
  %302 = load i64, i64* @query_type, align 8
  %303 = load i64, i64* @CLASS_PORT_INFO, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %309, label %305

305:                                              ; preds = %301
  %306 = load i64, i64* @query_type, align 8
  %307 = load i64, i64* @IB_SA_ATTR_SWITCHINFORECORD, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %305, %301, %298
  store i32 1, i32* %8, align 4
  br label %310

310:                                              ; preds = %309, %305
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %310
  %314 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %315 = call i32 @query_sa_cpi(%struct.sa_handle* %314, %struct.query_params* %11)
  store i32 %315, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load i32, i32* @stderr, align 4
  %319 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.108, i64 0, i64 0))
  br label %366

320:                                              ; preds = %313, %310
  %321 = load i32, i32* @command, align 4
  switch i32 %321, label %337 [
    i32 128, label %322
    i32 132, label %325
    i32 131, label %328
    i32 130, label %331
    i32 129, label %334
  ]

322:                                              ; preds = %320
  %323 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %324 = call i32 @print_node_records(%struct.sa_handle* %323, %struct.query_params* %11)
  store i32 %324, i32* %13, align 4
  br label %365

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.query_params, %struct.query_params* %11, i32 0, i32 5
  %327 = call i32 @dump_class_port_info(i32* %326)
  store i32 0, i32* %13, align 4
  br label %365

328:                                              ; preds = %320
  %329 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %330 = call i32 @print_issm_records(%struct.sa_handle* %329, %struct.query_params* %11)
  store i32 %330, i32* %13, align 4
  br label %365

331:                                              ; preds = %320
  %332 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %333 = call i32 @print_multicast_group_records(%struct.sa_handle* %332, %struct.query_params* %11)
  store i32 %333, i32* %13, align 4
  br label %365

334:                                              ; preds = %320
  %335 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %336 = call i32 @print_multicast_member_records(%struct.sa_handle* %335, %struct.query_params* %11)
  store i32 %336, i32* %13, align 4
  br label %365

337:                                              ; preds = %320
  %338 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %339 = icmp ne %struct.query_cmd* %338, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load i64, i64* @query_type, align 8
  %342 = call %struct.query_cmd* @find_query_by_type(i64 %341)
  store %struct.query_cmd* %342, %struct.query_cmd** %12, align 8
  %343 = icmp ne %struct.query_cmd* %342, null
  br i1 %343, label %344, label %349

344:                                              ; preds = %340, %337
  %345 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %346 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %345, i32 0, i32 4
  %347 = load i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)*, i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)** %346, align 8
  %348 = icmp ne i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* %347, null
  br i1 %348, label %355, label %349

349:                                              ; preds = %344, %340
  %350 = load i32, i32* @stderr, align 4
  %351 = load i64, i64* @query_type, align 8
  %352 = call i32 @ntohs(i64 %351)
  %353 = call i32 (i32, i8*, ...) @fprintf(i32 %350, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* @EINVAL, align 4
  store i32 %354, i32* %13, align 4
  br label %364

355:                                              ; preds = %344
  %356 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %357 = getelementptr inbounds %struct.query_cmd, %struct.query_cmd* %356, i32 0, i32 4
  %358 = load i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)*, i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)** %357, align 8
  %359 = load %struct.query_cmd*, %struct.query_cmd** %12, align 8
  %360 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %361 = load i32, i32* %4, align 4
  %362 = load i8**, i8*** %5, align 8
  %363 = call i32 %358(%struct.query_cmd* %359, %struct.sa_handle* %360, %struct.query_params* %11, i32 %361, i8** %362)
  store i32 %363, i32* %13, align 4
  br label %364

364:                                              ; preds = %355, %349
  br label %365

365:                                              ; preds = %364, %334, %331, %328, %325, %322
  br label %366

366:                                              ; preds = %365, %317, %268, %257, %241
  %367 = load i64*, i64** @src_lid, align 8
  %368 = icmp ne i64* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i64*, i64** @src_lid, align 8
  %371 = call i32 @free(i64* %370)
  br label %372

372:                                              ; preds = %369, %366
  %373 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %374 = call i32 @sa_free_handle(%struct.sa_handle* %373)
  %375 = call i32 (...) @umad_done()
  %376 = load i32, i32* @node_name_map, align 4
  %377 = call i32 @close_node_name_map(i32 %376)
  %378 = load i32, i32* %13, align 4
  ret i32 %378
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.query_params*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ibdiag_process_opts(i32, i8**, %struct.query_params*, i8*, %struct.ibdiag_opt*, i32, i8*, i32*) #2

declare dso_local %struct.query_cmd* @find_query(i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @ibdiag_show_usage(...) #2

declare dso_local i64 @umad_init(...) #2

declare dso_local i32 @IBEXIT(i8*) #2

declare dso_local %struct.sa_handle* @sa_get_handle(...) #2

declare dso_local i32 @IBPANIC(i8*) #2

declare dso_local i32 @memcmp(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @resolve_self(i32, i32, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @sm_pr_query(%struct.sa_handle*, %struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @sa_set_handle(%struct.sa_handle*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @open_node_name_map(i32) #2

declare dso_local i8* @get_lid(%struct.sa_handle*, i64*) #2

declare dso_local i32 @query_sa_cpi(%struct.sa_handle*, %struct.query_params*) #2

declare dso_local i32 @print_node_records(%struct.sa_handle*, %struct.query_params*) #2

declare dso_local i32 @dump_class_port_info(i32*) #2

declare dso_local i32 @print_issm_records(%struct.sa_handle*, %struct.query_params*) #2

declare dso_local i32 @print_multicast_group_records(%struct.sa_handle*, %struct.query_params*) #2

declare dso_local i32 @print_multicast_member_records(%struct.sa_handle*, %struct.query_params*) #2

declare dso_local %struct.query_cmd* @find_query_by_type(i64) #2

declare dso_local i32 @ntohs(i64) #2

declare dso_local i32 @free(i64*) #2

declare dso_local i32 @sa_free_handle(%struct.sa_handle*) #2

declare dso_local i32 @umad_done(...) #2

declare dso_local i32 @close_node_name_map(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
