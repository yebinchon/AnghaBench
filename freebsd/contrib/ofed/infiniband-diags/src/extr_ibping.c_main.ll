; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibping.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibping.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@IB_SA_CLASS = common dso_local global i32 0, align 4
@IB_VENDOR_OPENIB_PING_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<num>\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"stop after count packets\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"flood destination\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oui\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"use specified OUI number\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"start in server mode\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dgid\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"remote gid (IPv6 format)\00", align 1
@__const.main.opts = private unnamed_addr constant [6 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 99, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 102, i32 0, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8 111, i32 1, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 83, i32 0, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8 25, i32 1, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@__const.main.usage_args = private unnamed_addr constant [16 x i8] c"<dest lid|guid>\00", align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"DKy\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@server = common dso_local global i64 0, align 8
@ibd_ca = common dso_local global i32 0, align 4
@ibd_ca_port = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to open '%s' port '%d'\00", align 1
@oui = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"can't serve class %d on this port\00", align 1
@host_and_domain = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"ibping to %s: %s\00", align 1
@portid = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"can't register ping class %d on this port\00", align 1
@with_grh = common dso_local global i64 0, align 8
@ibd_dest_type = common dso_local global i64 0, align 8
@IB_DEST_LID = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [39 x i8] c"When using GRH, LID should be provided\00", align 1
@ibd_sm_id = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"can't resolve destination port %s\00", align 1
@dgid = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@ntrans = common dso_local global i32 0, align 4
@flood = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"ibping to %s failed\00", align 1
@lost = common dso_local global i32 0, align 4
@minrtt = common dso_local global i64 0, align 8
@maxrtt = common dso_local global i64 0, align 8
@total_rtt = common dso_local global i32 0, align 4
@replied = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [6 x %struct.ibdiag_opt], align 16
  %11 = alloca [16 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @IB_SA_CLASS, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @IB_VENDOR_OPENIB_PING_CLASS, align 4
  store i32 %14, i32* %7, align 4
  %15 = bitcast [6 x %struct.ibdiag_opt]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 192, i1 false)
  %16 = bitcast [16 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 16, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds [6 x %struct.ibdiag_opt], [6 x %struct.ibdiag_opt]* %10, i64 0, i64 0
  %20 = load i32, i32* @process_opt, align 4
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %22 = call i32 @ibdiag_process_opts(i32 %17, i8** %18, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ibdiag_opt* %19, i32 %20, i8* %21, i32* null)
  %23 = load i64, i64* @optind, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* @optind, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 %28
  store i8** %30, i8*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load i64, i64* @server, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @ibdiag_show_usage()
  br label %38

38:                                               ; preds = %36, %33, %2
  %39 = load i32, i32* @ibd_ca, align 4
  %40 = load i32, i32* @ibd_ca_port, align 4
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %42 = call i32 @mad_rpc_open_port(i32 %39, i32 %40, i32* %41, i32 1)
  store i32 %42, i32* @srcport, align 4
  %43 = load i32, i32* @srcport, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ibd_ca, align 4
  %47 = load i32, i32* @ibd_ca_port, align 4
  %48 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i64, i64* @server, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @oui, align 4
  %55 = load i32, i32* @srcport, align 4
  %56 = call i64 @mad_register_server_via(i32 %53, i32 0, i32 0, i32 %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* @host_and_domain, align 4
  %63 = call i32 @get_host_and_domain(i32 %62, i32 4)
  %64 = call i8* (...) @ibping_serv()
  store i8* %64, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call i32 @portid2str(%struct.TYPE_5__* @portid)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = call i32 @exit(i32 0) #4
  unreachable

72:                                               ; preds = %49
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @srcport, align 4
  %75 = call i64 @mad_register_client_via(i32 %73, i32 0, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64, i64* @with_grh, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i64, i64* @ibd_dest_type, align 8
  %85 = load i64, i64* @IB_DEST_LID, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = load i32, i32* @ibd_ca, align 4
  %91 = load i32, i32* @ibd_ca_port, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* @ibd_dest_type, align 8
  %96 = load i32, i32* @ibd_sm_id, align 4
  %97 = load i32, i32* @srcport, align 4
  %98 = call i64 @resolve_portid_str(i32 %90, i32 %91, %struct.TYPE_5__* @portid, i8* %94, i64 %95, i32 %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %100, %89
  %106 = load i64, i64* @with_grh, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @portid, i32 0, i32 0), align 4
  %109 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @portid, i32 0, i32 1), i32* @dgid, i32 4)
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* @SIGINT, align 4
  %112 = call i32 @signal(i32 %111, i32 (i32)* @report)
  %113 = load i32, i32* @SIGTERM, align 4
  %114 = call i32 @signal(i32 %113, i32 (i32)* @report)
  %115 = call i32 (...) @cl_get_time_stamp()
  store i32 %115, i32* @start, align 4
  br label %116

116:                                              ; preds = %156, %110
  %117 = load i32, i32* @count, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* @count, align 4
  %119 = icmp sgt i32 %117, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %116
  %121 = load i32, i32* @ntrans, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @ntrans, align 4
  %123 = load i32, i32* @flood, align 4
  %124 = call i64 @ibping(%struct.TYPE_5__* @portid, i32 %123)
  store i64 %124, i64* %8, align 8
  %125 = icmp eq i64 %124, -1
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = call i32 @portid2str(%struct.TYPE_5__* @portid)
  %128 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @lost, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @lost, align 4
  br label %151

131:                                              ; preds = %120
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @minrtt, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i64, i64* %8, align 8
  store i64 %136, i64* @minrtt, align 8
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @maxrtt, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i64, i64* %8, align 8
  store i64 %142, i64* @maxrtt, align 8
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i64, i64* %8, align 8
  %145 = load i32, i32* @total_rtt, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* @total_rtt, align 4
  %149 = load i32, i32* @replied, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @replied, align 4
  br label %151

151:                                              ; preds = %143, %126
  %152 = load i32, i32* @flood, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = call i32 @sleep(i32 1)
  br label %156

156:                                              ; preds = %154, %151
  br label %116

157:                                              ; preds = %116
  %158 = call i32 @report(i32 0)
  %159 = load i32, i32* @srcport, align 4
  %160 = call i32 @mad_rpc_close_port(i32 %159)
  %161 = call i32 @exit(i32 -1) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i32*) #2

declare dso_local i32 @ibdiag_show_usage(...) #2

declare dso_local i32 @mad_rpc_open_port(i32, i32, i32*, i32) #2

declare dso_local i32 @IBEXIT(i8*, ...) #2

declare dso_local i64 @mad_register_server_via(i32, i32, i32, i32, i32) #2

declare dso_local i32 @get_host_and_domain(i32, i32) #2

declare dso_local i8* @ibping_serv(...) #2

declare dso_local i32 @portid2str(%struct.TYPE_5__*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @mad_register_client_via(i32, i32, i32) #2

declare dso_local i64 @resolve_portid_str(i32, i32, %struct.TYPE_5__*, i8*, i64, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @signal(i32, i32 (i32)*) #2

declare dso_local i32 @report(i32) #2

declare dso_local i32 @cl_get_time_stamp(...) #2

declare dso_local i64 @ibping(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @DEBUG(i8*, i32) #2

declare dso_local i32 @sleep(i32) #2

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
