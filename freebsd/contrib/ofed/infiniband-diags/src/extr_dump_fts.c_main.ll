; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_dump_fts.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_dump_fts.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i32, i8*, i8* }
%struct.ibnd_config = type { i32, i32, i64, i32 }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SA_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"show all lids, even invalid entries\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no_dests\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"do not try to resolve destinations\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Multicast\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"show multicast forwarding tables\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"node-name-map\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"node name map file\00", align 1
@__const.main.opts = private unnamed_addr constant [5 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 97, i32 0, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 110, i32 0, i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 77, i32 0, i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8 1, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@__const.main.usage_args = private unnamed_addr constant [50 x i8] c"[<dest dr_path|lid|guid> [<startlid> [<endlid>]]]\00", align 16
@.str.9 = private unnamed_addr constant [22 x i8] c" -- Unicast examples:\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"-a\09# same, but dump all lids, even with invalid out ports\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"-n\09# simple dump format - no destination resolving\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"10\09# dump lids starting from 10\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"0x10 0x20\09# dump lid range\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c" -- Multicast examples:\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"-M\09# dump all non empty mlids of switch with lid 4\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"-M 0xc010 0xc020\09# same, but with range\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"-M -n\09# simple dump format\00", align 1
@__const.main.usage_examples = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"KGDLs\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@startlid = common dso_local global i8* null, align 8
@endlid = common dso_local global i8* null, align 8
@node_name_map_file = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@ibd_timeout = common dso_local global i64 0, align 8
@ibd_ibnetdisc_flags = common dso_local global i32 0, align 4
@ibd_mkey = common dso_local global i32 0, align 4
@ibd_ca = common dso_local global i8* null, align 8
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"Failed to open '%s' port '%d'\0A\00", align 1
@process_switch = common dso_local global i32 0, align 4
@IB_NODE_SWITCH = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"Failed to discover fabric\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.ibnd_config, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [5 x %struct.ibdiag_opt], align 16
  %11 = alloca [50 x i8], align 16
  %12 = alloca [10 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %14 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @IB_SA_CLASS, align 4
  store i32 %18, i32* %17, align 4
  %19 = bitcast %struct.ibnd_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i32* null, i32** %9, align 8
  %20 = bitcast [5 x %struct.ibdiag_opt]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([5 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 160, i1 false)
  %21 = bitcast [50 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([50 x i8], [50 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 50, i1 false)
  %22 = bitcast [10 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([10 x i8*]* @__const.main.usage_examples to i8*), i64 80, i1 false)
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds [5 x %struct.ibdiag_opt], [5 x %struct.ibdiag_opt]* %10, i64 0, i64 0
  %26 = load i32, i32* @process_opt, align 4
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %28 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 0
  %29 = call i32 @ibdiag_process_opts(i32 %23, i8** %24, %struct.ibnd_config* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), %struct.ibdiag_opt* %25, i32 %26, i8* %27, i8** %28)
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strtoul(i8* %43, i32 0, i32 0)
  store i8* %44, i8** @startlid, align 8
  br label %45

45:                                               ; preds = %40, %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strtoul(i8* %51, i32 0, i32 0)
  store i8* %52, i8** @endlid, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @node_name_map_file, align 4
  %55 = call i32 @open_node_name_map(i32 %54)
  store i32 %55, i32* @node_name_map, align 4
  %56 = load i64, i64* @ibd_timeout, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* @ibd_timeout, align 8
  %60 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %8, i32 0, i32 2
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @ibd_ibnetdisc_flags, align 4
  %63 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %8, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @ibd_mkey, align 4
  %65 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** @ibd_ca, align 8
  %67 = load i32, i32* @ibd_ca_port, align 4
  %68 = call i32* @ibnd_discover_fabric(i8* %66, i32 %67, i32* null, %struct.ibnd_config* %8)
  store i32* %68, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %100

70:                                               ; preds = %61
  %71 = load i8*, i8** @ibd_ca, align 8
  %72 = load i32, i32* @ibd_ca_port, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %74 = call i32 @mad_rpc_open_port(i8* %71, i32 %72, i32* %73, i32 3)
  store i32 %74, i32* @srcport, align 4
  %75 = load i32, i32* @srcport, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @ibd_ca, align 8
  %80 = load i32, i32* @ibd_ca_port, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %79, i32 %80)
  store i32 -1, i32* %6, align 4
  br label %104

82:                                               ; preds = %70
  %83 = load i32, i32* @srcport, align 4
  %84 = load i32, i32* @ibd_mkey, align 4
  %85 = call i32 @smp_mkey_set(i32 %83, i32 %84)
  %86 = load i64, i64* @ibd_timeout, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @srcport, align 4
  %90 = load i64, i64* @ibd_timeout, align 8
  %91 = call i32 @mad_rpc_set_timeout(i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @process_switch, align 4
  %95 = load i32, i32* @IB_NODE_SWITCH, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @ibnd_iter_nodes_type(i32* %93, i32 %94, i32 %95, i32* %96)
  %98 = load i32, i32* @srcport, align 4
  %99 = call i32 @mad_rpc_close_port(i32 %98)
  br label %103

100:                                              ; preds = %61
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %92
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @ibnd_destroy_fabric(i32* %105)
  %107 = load i32, i32* @node_name_map, align 4
  %108 = call i32 @close_node_name_map(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @exit(i32 %109) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, %struct.ibnd_config*, i8*, %struct.ibdiag_opt*, i32, i8*, i8**) #2

declare dso_local i8* @strtoul(i8*, i32, i32) #2

declare dso_local i32 @open_node_name_map(i32) #2

declare dso_local i32* @ibnd_discover_fabric(i8*, i32, i32*, %struct.ibnd_config*) #2

declare dso_local i32 @mad_rpc_open_port(i8*, i32, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @smp_mkey_set(i32, i32) #2

declare dso_local i32 @mad_rpc_set_timeout(i32, i64) #2

declare dso_local i32 @ibnd_iter_nodes_type(i32*, i32, i32, i32*) #2

declare dso_local i32 @mad_rpc_close_port(i32) #2

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
