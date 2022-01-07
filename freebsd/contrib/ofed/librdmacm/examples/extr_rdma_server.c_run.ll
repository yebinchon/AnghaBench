; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_server.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_server.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.rdma_addrinfo = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.ibv_qp_attr = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.ibv_wc = type { i32 }

@RAI_PASSIVE = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rdma_getaddrinfo: %s\0A\00", align 1
@listen_id = common dso_local global %struct.TYPE_17__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rdma_create_ep\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rdma_listen\00", align 1
@id = common dso_local global %struct.TYPE_17__* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"rdma_get_request\00", align 1
@IBV_QP_CAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ibv_query_qp\00", align 1
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@send_flags = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"rdma_server: device doesn't support IBV_SEND_INLINE, using sge sends\0A\00", align 1
@recv_msg = common dso_local global i32 0, align 4
@mr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"rdma_reg_msgs for recv_msg\00", align 1
@send_msg = common dso_local global i32 0, align 4
@send_mr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"rdma_reg_msgs for send_msg\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"rdma_post_recv\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"rdma_accept\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"rdma_get_recv_comp\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"rdma_post_send\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"rdma_get_send_comp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo, align 4
  %3 = alloca %struct.rdma_addrinfo*, align 8
  %4 = alloca %struct.ibv_qp_init_attr, align 4
  %5 = alloca %struct.ibv_qp_attr, align 4
  %6 = alloca %struct.ibv_wc, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @memset(%struct.rdma_addrinfo* %2, i32 0, i32 32)
  %9 = load i32, i32* @RAI_PASSIVE, align 4
  %10 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %2, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @RDMA_PS_TCP, align 4
  %12 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @port, align 4
  %14 = call i32 @rdma_getaddrinfo(i32* null, i32 %13, %struct.rdma_addrinfo* %2, %struct.rdma_addrinfo** %3)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @gai_strerror(i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %1, align 4
  br label %179

22:                                               ; preds = %0
  %23 = bitcast %struct.ibv_qp_init_attr* %4 to %struct.rdma_addrinfo*
  %24 = call i32 @memset(%struct.rdma_addrinfo* %23, i32 0, i32 32)
  %25 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  store i32 16, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %37 = bitcast %struct.ibv_qp_init_attr* %4 to %struct.rdma_addrinfo*
  %38 = call i32 @rdma_create_ep(%struct.TYPE_17__** @listen_id, %struct.rdma_addrinfo* %36, i32* null, %struct.rdma_addrinfo* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %175

43:                                               ; preds = %22
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @listen_id, align 8
  %45 = call i32 @rdma_listen(%struct.TYPE_17__* %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %172

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @listen_id, align 8
  %52 = call i32 @rdma_get_request(%struct.TYPE_17__* %51, %struct.TYPE_17__** @id)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %172

57:                                               ; preds = %50
  %58 = bitcast %struct.ibv_qp_attr* %5 to %struct.rdma_addrinfo*
  %59 = call i32 @memset(%struct.rdma_addrinfo* %58, i32 0, i32 32)
  %60 = bitcast %struct.ibv_qp_init_attr* %4 to %struct.rdma_addrinfo*
  %61 = call i32 @memset(%struct.rdma_addrinfo* %60, i32 0, i32 32)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %struct.ibv_qp_attr* %5 to %struct.rdma_addrinfo*
  %66 = load i32, i32* @IBV_QP_CAP, align 4
  %67 = bitcast %struct.ibv_qp_init_attr* %4 to %struct.rdma_addrinfo*
  %68 = call i32 @ibv_query_qp(i32 %64, %struct.rdma_addrinfo* %65, i32 %66, %struct.rdma_addrinfo* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %169

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 16
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @IBV_SEND_INLINE, align 4
  store i32 %79, i32* @send_flags, align 4
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %84 = load i32, i32* @recv_msg, align 4
  %85 = call i32 @rdma_reg_msgs(%struct.TYPE_17__* %83, i32 %84, i32 16)
  store i32 %85, i32* @mr, align 4
  %86 = load i32, i32* @mr, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  %89 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %169

90:                                               ; preds = %82
  %91 = load i32, i32* @send_flags, align 4
  %92 = load i32, i32* @IBV_SEND_INLINE, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %97 = load i32, i32* @send_msg, align 4
  %98 = call i32 @rdma_reg_msgs(%struct.TYPE_17__* %96, i32 %97, i32 16)
  store i32 %98, i32* @send_mr, align 4
  %99 = load i32, i32* @send_mr, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  store i32 -1, i32* %7, align 4
  %102 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %166

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %90
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %106 = load i32, i32* @recv_msg, align 4
  %107 = load i32, i32* @mr, align 4
  %108 = call i32 @rdma_post_recv(%struct.TYPE_17__* %105, i32* null, i32 %106, i32 16, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %157

113:                                              ; preds = %104
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %115 = call i32 @rdma_accept(%struct.TYPE_17__* %114, i32* null)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %157

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %125, %120
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %123 = call i32 @rdma_get_recv_comp(%struct.TYPE_17__* %122, %struct.ibv_wc* %6)
  store i32 %123, i32* %7, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %121

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %154

131:                                              ; preds = %126
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %133 = load i32, i32* @send_msg, align 4
  %134 = load i32, i32* @send_mr, align 4
  %135 = load i32, i32* @send_flags, align 4
  %136 = call i32 @rdma_post_send(%struct.TYPE_17__* %132, i32* null, i32 %133, i32 16, i32 %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %154

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %146, %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %144 = call i32 @rdma_get_send_comp(%struct.TYPE_17__* %143, %struct.ibv_wc* %6)
  store i32 %144, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %142

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %153

152:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %150
  br label %154

154:                                              ; preds = %153, %139, %129
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %156 = call i32 @rdma_disconnect(%struct.TYPE_17__* %155)
  br label %157

157:                                              ; preds = %154, %118, %111
  %158 = load i32, i32* @send_flags, align 4
  %159 = load i32, i32* @IBV_SEND_INLINE, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @send_mr, align 4
  %164 = call i32 @rdma_dereg_mr(i32 %163)
  br label %165

165:                                              ; preds = %162, %157
  br label %166

166:                                              ; preds = %165, %101
  %167 = load i32, i32* @mr, align 4
  %168 = call i32 @rdma_dereg_mr(i32 %167)
  br label %169

169:                                              ; preds = %166, %88, %71
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** @id, align 8
  %171 = call i32 @rdma_destroy_ep(%struct.TYPE_17__* %170)
  br label %172

172:                                              ; preds = %169, %55, %48
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** @listen_id, align 8
  %174 = call i32 @rdma_destroy_ep(%struct.TYPE_17__* %173)
  br label %175

175:                                              ; preds = %172, %41
  %176 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %177 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %176)
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %1, align 4
  br label %179

179:                                              ; preds = %175, %17
  %180 = load i32, i32* %1, align 4
  ret i32 %180
}

declare dso_local i32 @memset(%struct.rdma_addrinfo*, i32, i32) #1

declare dso_local i32 @rdma_getaddrinfo(i32*, i32, %struct.rdma_addrinfo*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_create_ep(%struct.TYPE_17__**, %struct.rdma_addrinfo*, i32*, %struct.rdma_addrinfo*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_listen(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @rdma_get_request(%struct.TYPE_17__*, %struct.TYPE_17__**) #1

declare dso_local i32 @ibv_query_qp(i32, %struct.rdma_addrinfo*, i32, %struct.rdma_addrinfo*) #1

declare dso_local i32 @rdma_reg_msgs(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @rdma_post_recv(%struct.TYPE_17__*, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_accept(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @rdma_get_recv_comp(%struct.TYPE_17__*, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_post_send(%struct.TYPE_17__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_get_send_comp(%struct.TYPE_17__*, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_17__*) #1

declare dso_local i32 @rdma_dereg_mr(i32) #1

declare dso_local i32 @rdma_destroy_ep(%struct.TYPE_17__*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
