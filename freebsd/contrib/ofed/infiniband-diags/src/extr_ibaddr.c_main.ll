; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibaddr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibaddr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ibdiag_opt = type { i8*, i8, i8*, i32*, i32 }

@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SA_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gid_show\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"show gid address only\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lid_show\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"show lid range only\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Lid_show\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"show lid range (in decimal) only\00", align 1
@__const.main.usage_args = private unnamed_addr constant [21 x i8] c"[<lid|dr_path|guid>]\00", align 16
@.str.6 = private unnamed_addr constant [25 x i8] c"\09\09# local port's address\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"32\09\09# show lid range and gid of lid 32\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"-G 0x8f1040023\09# same but using guid address\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"-l 32\09\09# show lid range only\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"-L 32\09\09# show decimal lid range only\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"-g 32\09\09# show gid address only\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"KL\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@show_lid = common dso_local global i32 0, align 4
@show_gid = common dso_local global i32 0, align 4
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"Failed to open '%s' port '%d'\00", align 1
@ibd_mkey = common dso_local global i32 0, align 4
@ibd_dest_type = common dso_local global i32 0, align 4
@ibd_sm_id = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"can't resolve destination port %s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"can't resolve self port %s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"can't resolve requested address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x %struct.ibdiag_opt], align 16
  %10 = alloca [21 x i8], align 16
  %11 = alloca [7 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @IB_SMI_CLASS, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @IB_SA_CLASS, align 4
  store i32 %17, i32* %16, align 4
  %18 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %19 = bitcast [4 x %struct.ibdiag_opt]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 160, i1 false)
  %20 = getelementptr inbounds [4 x %struct.ibdiag_opt], [4 x %struct.ibdiag_opt]* %9, i64 0, i64 0
  %21 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %20, i32 0, i32 1
  store i8 103, i8* %22, align 8
  %23 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %20, i32 0, i32 4
  store i32 ptrtoint ([22 x i8]* @.str.1 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %20, i64 1
  %25 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 1
  store i8 108, i8* %26, align 8
  %27 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 4
  store i32 ptrtoint ([20 x i8]* @.str.3 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i64 1
  %29 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 1
  store i8 76, i8* %30, align 8
  %31 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 4
  store i32 ptrtoint ([33 x i8]* @.str.5 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i64 1
  %33 = bitcast [21 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 21, i1 false)
  %34 = bitcast [7 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 56, i1 false)
  %35 = bitcast i8* %34 to [7 x i8*]*
  %36 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8** %36, align 16
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8** %37, align 8
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 2
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i8** %38, align 16
  %39 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 3
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8** %39, align 8
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8** %40, align 16
  %41 = getelementptr inbounds [7 x i8*], [7 x i8*]* %35, i32 0, i32 5
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds [4 x %struct.ibdiag_opt], [4 x %struct.ibdiag_opt]* %9, i64 0, i64 0
  %45 = load i32, i32* @process_opt, align 4
  %46 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i64 0, i64 0
  %48 = call i32 @ibdiag_process_opts(i32 %42, i8** %43, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), %struct.ibdiag_opt* %44, i32 %45, i8* %46, i8** %47)
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %2
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strtoul(i8* %62, i32 0, i32 0)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %2
  %65 = load i32, i32* @show_lid, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @show_gid, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* @show_gid, align 4
  store i32 1, i32* @show_lid, align 4
  br label %71

71:                                               ; preds = %70, %67, %64
  %72 = load i32, i32* @ibd_ca, align 4
  %73 = load i32, i32* @ibd_ca_port, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %75 = call i32 @mad_rpc_open_port(i32 %72, i32 %73, i32* %74, i32 3)
  store i32 %75, i32* @srcport, align 4
  %76 = load i32, i32* @srcport, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @ibd_ca, align 4
  %80 = load i32, i32* @ibd_ca_port, align 4
  %81 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* @srcport, align 4
  %84 = load i32, i32* @ibd_mkey, align 4
  %85 = call i32 @smp_mkey_set(i32 %83, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i32, i32* @ibd_ca, align 4
  %90 = load i32, i32* @ibd_ca_port, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @ibd_dest_type, align 4
  %95 = load i32, i32* @ibd_sm_id, align 4
  %96 = load i32, i32* @srcport, align 4
  %97 = call i64 @resolve_portid_str(i32 %89, i32 %90, %struct.TYPE_5__* %7, i8* %93, i32 %94, i32 %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %88
  br label %116

105:                                              ; preds = %82
  %106 = load i32, i32* @ibd_ca, align 4
  %107 = load i32, i32* @ibd_ca_port, align 4
  %108 = call i64 @resolve_self(i32 %106, i32 %107, %struct.TYPE_5__* %7, i32* %8, i32* null)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @show_lid, align 4
  %119 = load i32, i32* @show_gid, align 4
  %120 = call i64 @ib_resolve_addr(%struct.TYPE_5__* %7, i32 %117, i32 %118, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i32, i32* @srcport, align 4
  %126 = call i32 @mad_rpc_close_port(i32 %125)
  %127 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i8**) #2

declare dso_local i32 @strtoul(i8*, i32, i32) #2

declare dso_local i32 @mad_rpc_open_port(i32, i32, i32*, i32) #2

declare dso_local i32 @IBEXIT(i8*, ...) #2

declare dso_local i32 @smp_mkey_set(i32, i32) #2

declare dso_local i64 @resolve_portid_str(i32, i32, %struct.TYPE_5__*, i8*, i32, i32, i32) #2

declare dso_local i64 @resolve_self(i32, i32, %struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i64 @ib_resolve_addr(%struct.TYPE_5__*, i32, i32, i32) #2

declare dso_local i32 @mad_rpc_close_port(i32) #2

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
