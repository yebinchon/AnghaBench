; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, float, i32, i8*, i8* }
%struct.TYPE_9__ = type { i64, i32 }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SA_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no_info\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"simple format\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mlid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<mlid>\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"multicast trace of the mlid\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"node-name-map\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"node name map file\00", align 1
@__const.main.opts = private unnamed_addr constant [5 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), float 1.020000e+02, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), float 1.100000e+02, i32 0, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), float 1.090000e+02, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), float 1.000000e+00, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@__const.main.usage_args = private unnamed_addr constant [23 x i8] c"<src-addr> <dest-addr>\00", align 16
@.str.9 = private unnamed_addr constant [20 x i8] c"- Unicast examples:\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"4 16\09\09\09# show path between lids 4 and 16\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"-n 4 16\09\09# same, but using simple output format\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"-G 0x8f1040396522d 0x002c9000100d051\09# use guid addresses\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" - Multicast examples:\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"-m 0xc000 4 16\09# show multicast path of mlid 0xc000 between lids 4 and 16\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@process_opt = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@f = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ibd_timeout = common dso_local global i64 0, align 8
@timeout = common dso_local global i64 0, align 8
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"Failed to open '%s' port '%d'\00", align 1
@ibd_mkey = common dso_local global i32 0, align 4
@node_name_map_file = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@ibd_dest_type = common dso_local global i64 0, align 8
@ibd_sm_id = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"can't resolve source port %s\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"can't resolve destination port %s\00", align 1
@IB_DEST_DRPATH = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [33 x i8] c"cannot resolve lid for port '%s'\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"bad src/dest lid\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"can't find a route to the src port\00", align 1
@multicast = common dso_local global i32 0, align 4
@dumplevel = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"can't find a route from src to dest\00", align 1
@mlid = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"invalid MLID; must be 0xc000 or larger\00", align 1
@target_portguid = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [26 x i8] c"can't reach target lid %d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"can't find a multicast route from src to dest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [5 x %struct.ibdiag_opt], align 16
  %12 = alloca [23 x i8], align 16
  %13 = alloca [7 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @IB_SA_CLASS, align 4
  store i32 %19, i32* %18, align 4
  %20 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = bitcast [5 x %struct.ibdiag_opt]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([5 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 160, i1 false)
  %24 = bitcast [23 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 23, i1 false)
  %25 = bitcast [7 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 56, i1 false)
  %26 = bitcast i8* %25 to [7 x i8*]*
  %27 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8** %28, align 8
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 5
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i32 0, i32 0), i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds [5 x %struct.ibdiag_opt], [5 x %struct.ibdiag_opt]* %11, i64 0, i64 0
  %36 = load i32, i32* @process_opt, align 4
  %37 = getelementptr inbounds [23 x i8], [23 x i8]* %12, i64 0, i64 0
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 0
  %39 = call i32 @ibdiag_process_opts(i32 %33, i8** %34, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), %struct.ibdiag_opt* %35, i32 %36, i8* %37, i8** %38)
  %40 = load i32, i32* @stdout, align 4
  store i32 %40, i32* @f, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = call i32 (...) @ibdiag_show_usage()
  br label %53

53:                                               ; preds = %51, %2
  %54 = load i64, i64* @ibd_timeout, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @ibd_timeout, align 8
  store i64 %57, i64* @timeout, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* @ibd_ca, align 4
  %60 = load i32, i32* @ibd_ca_port, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %62 = call i32 @mad_rpc_open_port(i32 %59, i32 %60, i32* %61, i32 3)
  store i32 %62, i32* @srcport, align 4
  %63 = load i32, i32* @srcport, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ibd_ca, align 4
  %67 = load i32, i32* @ibd_ca_port, align 4
  %68 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* @srcport, align 4
  %71 = load i32, i32* @ibd_mkey, align 4
  %72 = call i32 @smp_mkey_set(i32 %70, i32 %71)
  %73 = load i32, i32* @node_name_map_file, align 4
  %74 = call i32 @open_node_name_map(i32 %73)
  store i32 %74, i32* @node_name_map, align 4
  %75 = load i32, i32* @ibd_ca, align 4
  %76 = load i32, i32* @ibd_ca_port, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* @ibd_dest_type, align 8
  %81 = load i32, i32* @ibd_sm_id, align 4
  %82 = load i32, i32* @srcport, align 4
  %83 = call i64 @resolve_portid_str(i32 %75, i32 %76, %struct.TYPE_9__* %8, i8* %79, i64 %80, i32 %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %85, %69
  %91 = load i32, i32* @ibd_ca, align 4
  %92 = load i32, i32* @ibd_ca_port, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* @ibd_dest_type, align 8
  %97 = load i32, i32* @ibd_sm_id, align 4
  %98 = load i32, i32* @srcport, align 4
  %99 = call i64 @resolve_portid_str(i32 %91, i32 %92, %struct.TYPE_9__* %9, i8* %95, i64 %96, i32 %97, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %90
  %107 = load i64, i64* @ibd_dest_type, align 8
  %108 = load i64, i64* @IB_DEST_DRPATH, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = call i64 @resolve_lid(%struct.TYPE_9__* %8, i32* null)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = call i32 @portid2str(%struct.TYPE_9__* %8)
  %115 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = call i64 @resolve_lid(%struct.TYPE_9__* %9, i32* null)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = call i32 @portid2str(%struct.TYPE_9__* %9)
  %121 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %106
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %123
  %132 = call i32 @IBWARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %133 = call i32 (...) @ibdiag_show_usage()
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i64, i64* @ibd_dest_type, align 8
  %136 = load i64, i64* @IB_DEST_DRPATH, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = call i64 @find_route(%struct.TYPE_9__* %7, %struct.TYPE_9__* %8, i32 0)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  %144 = bitcast %struct.TYPE_9__* %8 to i8*
  %145 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 16, i1 false)
  br label %146

146:                                              ; preds = %143, %134
  %147 = load i32, i32* @multicast, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @dumplevel, align 4
  %151 = call i64 @find_route(%struct.TYPE_9__* %8, %struct.TYPE_9__* %9, i32 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %149
  %156 = call i32 @exit(i32 0) #4
  unreachable

157:                                              ; preds = %146
  %158 = load i32, i32* @mlid, align 4
  %159 = icmp slt i32 %158, 49152
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 @IBWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %157
  br label %163

163:                                              ; preds = %162
  %164 = call i32 @find_target_portguid(%struct.TYPE_9__* %9)
  store i32 %164, i32* @target_portguid, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* @mlid, align 4
  %172 = call i32* @find_mcpath(%struct.TYPE_9__* %8, i32 %171)
  store i32* %172, i32** %10, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* @dumplevel, align 4
  %179 = call i32 @dump_mcpath(i32* %177, i32 %178)
  %180 = load i32, i32* @node_name_map, align 4
  %181 = call i32 @close_node_name_map(i32 %180)
  %182 = load i32, i32* @srcport, align 4
  %183 = call i32 @mad_rpc_close_port(i32 %182)
  %184 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i8**) #2

declare dso_local i32 @ibdiag_show_usage(...) #2

declare dso_local i32 @mad_rpc_open_port(i32, i32, i32*, i32) #2

declare dso_local i32 @IBEXIT(i8*, ...) #2

declare dso_local i32 @smp_mkey_set(i32, i32) #2

declare dso_local i32 @open_node_name_map(i32) #2

declare dso_local i64 @resolve_portid_str(i32, i32, %struct.TYPE_9__*, i8*, i64, i32, i32) #2

declare dso_local i64 @resolve_lid(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @portid2str(%struct.TYPE_9__*) #2

declare dso_local i32 @IBWARN(i8*) #2

declare dso_local i64 @find_route(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @find_target_portguid(%struct.TYPE_9__*) #2

declare dso_local i32* @find_mcpath(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @dump_mcpath(i32*, i32) #2

declare dso_local i32 @close_node_name_map(i32) #2

declare dso_local i32 @mad_rpc_close_port(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
