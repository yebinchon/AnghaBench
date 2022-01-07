; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibroute.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibroute.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

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
@.str.10 = private unnamed_addr constant [60 x i8] c"4\09# dump all lids with valid out ports of switch with lid 4\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"-a 4\09# same, but dump all lids, even with invalid out ports\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"-n 4\09# simple dump format - no destination resolving\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"4 10\09# dump lids starting from 10\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"4 0x10 0x20\09# dump lid range\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"-G 0x08f1040023\09# resolve switch by GUID\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"-D 0,1\09# resolve switch by direct path\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c" -- Multicast examples:\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"-M 4\09# dump all non empty mlids of switch with lid 4\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"-M 4 0xc010 0xc020\09# same, but with range\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"-M -n 4\09# simple dump format\00", align 1
@__const.main.usage_examples = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* null], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@node_name_map_file = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"Failed to open '%s' port '%d'\00", align 1
@ibd_mkey = common dso_local global i32 0, align 4
@ibd_dest_type = common dso_local global i32 0, align 4
@ibd_sm_id = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"can't resolve destination port %s\00", align 1
@multicast = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"dump tables: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [5 x %struct.ibdiag_opt], align 16
  %12 = alloca [50 x i8], align 16
  %13 = alloca [13 x i8*], align 16
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
  %20 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = bitcast [5 x %struct.ibdiag_opt]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([5 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 160, i1 false)
  %22 = bitcast [50 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 getelementptr inbounds ([50 x i8], [50 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 50, i1 false)
  %23 = bitcast [13 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([13 x i8*]* @__const.main.usage_examples to i8*), i64 104, i1 false)
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds [5 x %struct.ibdiag_opt], [5 x %struct.ibdiag_opt]* %11, i64 0, i64 0
  %27 = load i32, i32* @process_opt, align 4
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [13 x i8*], [13 x i8*]* %13, i64 0, i64 0
  %30 = call i32 @ibdiag_process_opts(i32 %24, i8** %25, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct.ibdiag_opt* %26, i32 %27, i8* %28, i8** %29)
  %31 = load i64, i64* @optind, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* @optind, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  store i8** %38, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %2
  %42 = call i32 (...) @ibdiag_show_usage()
  br label %43

43:                                               ; preds = %41, %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strtoul(i8* %49, i32 0, i32 0)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strtoul(i8* %57, i32 0, i32 0)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* @node_name_map_file, align 4
  %61 = call i32 @open_node_name_map(i32 %60)
  store i32 %61, i32* @node_name_map, align 4
  %62 = load i32, i32* @ibd_ca, align 4
  %63 = load i32, i32* @ibd_ca_port, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %65 = call i32 @mad_rpc_open_port(i32 %62, i32 %63, i32* %64, i32 3)
  store i32 %65, i32* @srcport, align 4
  %66 = load i32, i32* @srcport, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ibd_ca, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* @ibd_ca_port, align 4
  %73 = call i32 (i8*, i8*, ...) @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %59
  %75 = load i32, i32* @srcport, align 4
  %76 = load i32, i32* @ibd_mkey, align 4
  %77 = call i32 @smp_mkey_set(i32 %75, i32 %76)
  %78 = load i32, i32* @ibd_ca, align 4
  %79 = load i32, i32* @ibd_ca_port, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @ibd_dest_type, align 4
  %84 = load i32, i32* @ibd_sm_id, align 4
  %85 = load i32, i32* @srcport, align 4
  %86 = call i64 @resolve_portid_str(i32 %78, i32 %79, %struct.TYPE_5__* %7, i8* %82, i32 %83, i32 %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, i8*, ...) @IBEXIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %88, %74
  %94 = load i64, i64* @multicast, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i8* @dump_multicast_tables(%struct.TYPE_5__* %7, i32 %97, i32 %98)
  store i8* %99, i8** %10, align 8
  br label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i8* @dump_unicast_tables(%struct.TYPE_5__* %7, i32 %101, i32 %102)
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 (i8*, i8*, ...) @IBEXIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @srcport, align 4
  %112 = call i32 @mad_rpc_close_port(i32 %111)
  %113 = load i32, i32* @node_name_map, align 4
  %114 = call i32 @close_node_name_map(i32 %113)
  %115 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i8**) #2

declare dso_local i32 @ibdiag_show_usage(...) #2

declare dso_local i32 @strtoul(i8*, i32, i32) #2

declare dso_local i32 @open_node_name_map(i32) #2

declare dso_local i32 @mad_rpc_open_port(i32, i32, i32*, i32) #2

declare dso_local i32 @IBEXIT(i8*, i8*, ...) #2

declare dso_local i32 @smp_mkey_set(i32, i32) #2

declare dso_local i64 @resolve_portid_str(i32, i32, %struct.TYPE_5__*, i8*, i32, i32, i32) #2

declare dso_local i8* @dump_multicast_tables(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i8* @dump_unicast_tables(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @mad_rpc_close_port(i32) #2

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
