; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_client.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_client.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.ibv_wc = type { i32 }

@RDMA_PS_TCP = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rdma_getaddrinfo: %s\0A\00", align 1
@id = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@send_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"rdma_client: device doesn't support IBV_SEND_INLINE, using sge sends\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rdma_create_ep\00", align 1
@recv_msg = common dso_local global i32 0, align 4
@mr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"rdma_reg_msgs for recv_msg\00", align 1
@send_msg = common dso_local global i32 0, align 4
@send_mr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"rdma_reg_msgs for send_msg\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"rdma_post_recv\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"rdma_connect\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"rdma_post_send\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"rdma_get_send_comp\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"rdma_get_recv_comp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run() #0 {
  %1 = alloca %struct.rdma_addrinfo, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.ibv_qp_init_attr, align 4
  %4 = alloca %struct.ibv_wc, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @memset(%struct.rdma_addrinfo* %1, i32 0, i32 32)
  %7 = load i32, i32* @RDMA_PS_TCP, align 4
  %8 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %1, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @server, align 4
  %10 = load i32, i32* @port, align 4
  %11 = call i32 @rdma_getaddrinfo(i32 %9, i32 %10, %struct.rdma_addrinfo* %1, %struct.rdma_addrinfo** %2)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @gai_strerror(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %143

18:                                               ; preds = %0
  %19 = bitcast %struct.ibv_qp_init_attr* %3 to %struct.rdma_addrinfo*
  %20 = call i32 @memset(%struct.rdma_addrinfo* %19, i32 0, i32 32)
  %21 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 16, i32* %30, align 4
  %31 = load i32, i32* @id, align 4
  %32 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %35 = bitcast %struct.ibv_qp_init_attr* %3 to %struct.rdma_addrinfo*
  %36 = call i32 @rdma_create_ep(i32* @id, %struct.rdma_addrinfo* %34, i32* null, %struct.rdma_addrinfo* %35)
  store i32 %36, i32* %5, align 4
  %37 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 16
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = load i32, i32* @IBV_SEND_INLINE, align 4
  store i32 %42, i32* @send_flags, align 4
  br label %45

43:                                               ; preds = %18
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %140

50:                                               ; preds = %45
  %51 = load i32, i32* @id, align 4
  %52 = load i32, i32* @recv_msg, align 4
  %53 = call i32 @rdma_reg_msgs(i32 %51, i32 %52, i32 16)
  store i32 %53, i32* @mr, align 4
  %54 = load i32, i32* @mr, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %137

58:                                               ; preds = %50
  %59 = load i32, i32* @send_flags, align 4
  %60 = load i32, i32* @IBV_SEND_INLINE, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* @id, align 4
  %65 = load i32, i32* @send_msg, align 4
  %66 = call i32 @rdma_reg_msgs(i32 %64, i32 %65, i32 16)
  store i32 %66, i32* @send_mr, align 4
  %67 = load i32, i32* @send_mr, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %134

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* @id, align 4
  %74 = load i32, i32* @recv_msg, align 4
  %75 = load i32, i32* @mr, align 4
  %76 = call i32 @rdma_post_recv(i32 %73, i32* null, i32 %74, i32 16, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %125

81:                                               ; preds = %72
  %82 = load i32, i32* @id, align 4
  %83 = call i32 @rdma_connect(i32 %82, i32* null)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %125

88:                                               ; preds = %81
  %89 = load i32, i32* @id, align 4
  %90 = load i32, i32* @send_msg, align 4
  %91 = load i32, i32* @send_mr, align 4
  %92 = load i32, i32* @send_flags, align 4
  %93 = call i32 @rdma_post_send(i32 %89, i32* null, i32 %90, i32 16, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %122

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %103, %98
  %100 = load i32, i32* @id, align 4
  %101 = call i32 @rdma_get_send_comp(i32 %100, %struct.ibv_wc* %4)
  store i32 %101, i32* %5, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %99

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %122

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* @id, align 4
  %112 = call i32 @rdma_get_recv_comp(i32 %111, %struct.ibv_wc* %4)
  store i32 %112, i32* %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %110

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %121

120:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %118
  br label %122

122:                                              ; preds = %121, %107, %96
  %123 = load i32, i32* @id, align 4
  %124 = call i32 @rdma_disconnect(i32 %123)
  br label %125

125:                                              ; preds = %122, %86, %79
  %126 = load i32, i32* @send_flags, align 4
  %127 = load i32, i32* @IBV_SEND_INLINE, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @send_mr, align 4
  %132 = call i32 @rdma_dereg_mr(i32 %131)
  br label %133

133:                                              ; preds = %130, %125
  br label %134

134:                                              ; preds = %133, %69
  %135 = load i32, i32* @mr, align 4
  %136 = call i32 @rdma_dereg_mr(i32 %135)
  br label %137

137:                                              ; preds = %134, %56
  %138 = load i32, i32* @id, align 4
  %139 = call i32 @rdma_destroy_ep(i32 %138)
  br label %140

140:                                              ; preds = %137, %48
  %141 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %142 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %141)
  br label %143

143:                                              ; preds = %140, %14
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.rdma_addrinfo*, i32, i32) #1

declare dso_local i32 @rdma_getaddrinfo(i32, i32, %struct.rdma_addrinfo*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_create_ep(i32*, %struct.rdma_addrinfo*, i32*, %struct.rdma_addrinfo*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_reg_msgs(i32, i32, i32) #1

declare dso_local i32 @rdma_post_recv(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_connect(i32, i32*) #1

declare dso_local i32 @rdma_post_send(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_get_send_comp(i32, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_get_recv_comp(i32, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @rdma_dereg_mr(i32) #1

declare dso_local i32 @rdma_destroy_ep(i32) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
