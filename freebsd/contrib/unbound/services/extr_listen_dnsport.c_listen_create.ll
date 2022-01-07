; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listen_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listen_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_dnsport = type { i32*, i32*, i8* }
%struct.comm_base = type { i32 }
%struct.listen_port = type { i64, %struct.listen_port*, i32 }
%struct.tcl_list = type { i32 }
%struct.dt_env = type { i32 }
%struct.comm_point = type { i32, i32, i32*, %struct.dt_env*, i8* }

@stream_wait_lock_inited = common dso_local global i32 0, align 4
@stream_wait_count_lock = common dso_local global i32 0, align 4
@listen_type_udp = common dso_local global i64 0, align 8
@listen_type_udp_dnscrypt = common dso_local global i64 0, align 8
@listen_type_tcp = common dso_local global i64 0, align 8
@listen_type_tcp_dnscrypt = common dso_local global i64 0, align 8
@listen_type_ssl = common dso_local global i64 0, align 8
@listen_type_udpancil = common dso_local global i64 0, align 8
@listen_type_udpancil_dnscrypt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"can't create commpoint\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not open sockets to accept queries.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.listen_dnsport* @listen_create(%struct.comm_base* %0, %struct.listen_port* %1, i64 %2, i32 %3, i32 %4, %struct.tcl_list* %5, i8* %6, %struct.dt_env* %7, i32* %8, i8* %9) #0 {
  %11 = alloca %struct.listen_dnsport*, align 8
  %12 = alloca %struct.comm_base*, align 8
  %13 = alloca %struct.listen_port*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcl_list*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.dt_env*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.listen_dnsport*, align 8
  %23 = alloca %struct.comm_point*, align 8
  store %struct.comm_base* %0, %struct.comm_base** %12, align 8
  store %struct.listen_port* %1, %struct.listen_port** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.tcl_list* %5, %struct.tcl_list** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.dt_env* %7, %struct.dt_env** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = call i64 @malloc(i32 24)
  %25 = inttoptr i64 %24 to %struct.listen_dnsport*
  store %struct.listen_dnsport* %25, %struct.listen_dnsport** %22, align 8
  %26 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %27 = icmp ne %struct.listen_dnsport* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  store %struct.listen_dnsport* null, %struct.listen_dnsport** %11, align 8
  br label %190

29:                                               ; preds = %10
  %30 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %31 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i8* @sldns_buffer_new(i64 %32)
  %34 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %35 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %37 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %42 = call i32 @free(%struct.listen_dnsport* %41)
  store %struct.listen_dnsport* null, %struct.listen_dnsport** %11, align 8
  br label %190

43:                                               ; preds = %29
  %44 = load i32, i32* @stream_wait_lock_inited, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @lock_basic_init(i32* @stream_wait_count_lock)
  store i32 1, i32* @stream_wait_lock_inited, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %175, %48
  %50 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %51 = icmp ne %struct.listen_port* %50, null
  br i1 %51, label %52, label %179

52:                                               ; preds = %49
  store %struct.comm_point* null, %struct.comm_point** %23, align 8
  %53 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %54 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @listen_type_udp, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %60 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @listen_type_udp_dnscrypt, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %52
  %65 = load %struct.comm_base*, %struct.comm_base** %12, align 8
  %66 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %67 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %70 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = call %struct.comm_point* @comm_point_create_udp(%struct.comm_base* %65, i32 %68, i8* %71, i32* %72, i8* %73)
  store %struct.comm_point* %74, %struct.comm_point** %23, align 8
  br label %152

75:                                               ; preds = %58
  %76 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %77 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @listen_type_tcp, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %83 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @listen_type_tcp_dnscrypt, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81, %75
  %88 = load %struct.comm_base*, %struct.comm_base** %12, align 8
  %89 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %90 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.tcl_list*, %struct.tcl_list** %17, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %97 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = load i8*, i8** %21, align 8
  %101 = call %struct.comm_point* @comm_point_create_tcp(%struct.comm_base* %88, i32 %91, i32 %92, i32 %93, %struct.tcl_list* %94, i64 %95, i8* %98, i32* %99, i8* %100)
  store %struct.comm_point* %101, %struct.comm_point** %23, align 8
  br label %151

102:                                              ; preds = %81
  %103 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %104 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @listen_type_ssl, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.comm_base*, %struct.comm_base** %12, align 8
  %110 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %111 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.tcl_list*, %struct.tcl_list** %17, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %118 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = call %struct.comm_point* @comm_point_create_tcp(%struct.comm_base* %109, i32 %112, i32 %113, i32 %114, %struct.tcl_list* %115, i64 %116, i8* %119, i32* %120, i8* %121)
  store %struct.comm_point* %122, %struct.comm_point** %23, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %125 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %150

126:                                              ; preds = %102
  %127 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %128 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @listen_type_udpancil, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %134 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @listen_type_udpancil_dnscrypt, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132, %126
  %139 = load %struct.comm_base*, %struct.comm_base** %12, align 8
  %140 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %141 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %144 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32*, i32** %20, align 8
  %147 = load i8*, i8** %21, align 8
  %148 = call %struct.comm_point* @comm_point_create_udp_ancil(%struct.comm_base* %139, i32 %142, i8* %145, i32* %146, i8* %147)
  store %struct.comm_point* %148, %struct.comm_point** %23, align 8
  br label %149

149:                                              ; preds = %138, %132
  br label %150

150:                                              ; preds = %149, %108
  br label %151

151:                                              ; preds = %150, %87
  br label %152

152:                                              ; preds = %151, %64
  %153 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %154 = icmp ne %struct.comm_point* %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %157 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %158 = call i32 @listen_delete(%struct.listen_dnsport* %157)
  store %struct.listen_dnsport* null, %struct.listen_dnsport** %11, align 8
  br label %190

159:                                              ; preds = %152
  %160 = load %struct.dt_env*, %struct.dt_env** %19, align 8
  %161 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %162 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %161, i32 0, i32 3
  store %struct.dt_env* %160, %struct.dt_env** %162, align 8
  %163 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %164 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %166 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %167 = call i32 @listen_cp_insert(%struct.comm_point* %165, %struct.listen_dnsport* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %159
  %170 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %171 = load %struct.comm_point*, %struct.comm_point** %23, align 8
  %172 = call i32 @comm_point_delete(%struct.comm_point* %171)
  %173 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %174 = call i32 @listen_delete(%struct.listen_dnsport* %173)
  store %struct.listen_dnsport* null, %struct.listen_dnsport** %11, align 8
  br label %190

175:                                              ; preds = %159
  %176 = load %struct.listen_port*, %struct.listen_port** %13, align 8
  %177 = getelementptr inbounds %struct.listen_port, %struct.listen_port* %176, i32 0, i32 1
  %178 = load %struct.listen_port*, %struct.listen_port** %177, align 8
  store %struct.listen_port* %178, %struct.listen_port** %13, align 8
  br label %49

179:                                              ; preds = %49
  %180 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %181 = getelementptr inbounds %struct.listen_dnsport, %struct.listen_dnsport* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %186 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  %187 = call i32 @listen_delete(%struct.listen_dnsport* %186)
  store %struct.listen_dnsport* null, %struct.listen_dnsport** %11, align 8
  br label %190

188:                                              ; preds = %179
  %189 = load %struct.listen_dnsport*, %struct.listen_dnsport** %22, align 8
  store %struct.listen_dnsport* %189, %struct.listen_dnsport** %11, align 8
  br label %190

190:                                              ; preds = %188, %184, %169, %155, %40, %28
  %191 = load %struct.listen_dnsport*, %struct.listen_dnsport** %11, align 8
  ret %struct.listen_dnsport* %191
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @sldns_buffer_new(i64) #1

declare dso_local i32 @free(%struct.listen_dnsport*) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local %struct.comm_point* @comm_point_create_udp(%struct.comm_base*, i32, i8*, i32*, i8*) #1

declare dso_local %struct.comm_point* @comm_point_create_tcp(%struct.comm_base*, i32, i32, i32, %struct.tcl_list*, i64, i8*, i32*, i8*) #1

declare dso_local %struct.comm_point* @comm_point_create_udp_ancil(%struct.comm_base*, i32, i8*, i32*, i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @listen_delete(%struct.listen_dnsport*) #1

declare dso_local i32 @listen_cp_insert(%struct.comm_point*, %struct.listen_dnsport*) #1

declare dso_local i32 @comm_point_delete(%struct.comm_point*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
