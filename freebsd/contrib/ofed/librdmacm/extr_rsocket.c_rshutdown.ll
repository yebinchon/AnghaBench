; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rshutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rshutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@idm = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@tcp_svc = common dso_local global i32 0, align 4
@RS_SVC_REM_KEEPALIVE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@rs_connected = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@RS_CTRL_DISCONNECT = common dso_local global i32 0, align 4
@rs_readable = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@RS_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@rs_conn_can_send_ctrl = common dso_local global i32 0, align 4
@RS_OP_CTRL = common dso_local global i32 0, align 4
@rs_conn_all_sends_done = common dso_local global i32 0, align 4
@rs_disconnected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rshutdown(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %9)
  store %struct.rsocket* %10, %struct.rsocket** %6, align 8
  %11 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %12 = icmp ne %struct.rsocket* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EBADF, align 4
  %15 = call i32 @ERR(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %184

16:                                               ; preds = %2
  %17 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %25 = load i32, i32* @RS_SVC_REM_KEEPALIVE, align 4
  %26 = call i32 @rs_notify_svc(i32* @tcp_svc, %struct.rsocket* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %29 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %36 = call i32 @rs_set_nonblocking(%struct.rsocket* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %39 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @rs_connected, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SHUT_RDWR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* @RS_CTRL_DISCONNECT, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @rs_readable, align 4
  %51 = load i32, i32* @rs_writable, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %55 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %98

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SHUT_WR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* @rs_writable, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %66 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %70 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @rs_readable, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @RS_CTRL_SHUTDOWN, align 4
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @RS_CTRL_DISCONNECT, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %7, align 4
  br label %97

81:                                               ; preds = %58
  %82 = load i32, i32* @rs_readable, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %85 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %89 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @rs_writable, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %144

95:                                               ; preds = %81
  %96 = load i32, i32* @RS_CTRL_DISCONNECT, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %79
  br label %98

98:                                               ; preds = %97, %48
  %99 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %100 = call i64 @rs_ctrl_avail(%struct.rsocket* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %104 = load i32, i32* @rs_conn_can_send_ctrl, align 4
  %105 = call i32 @rs_process_cq(%struct.rsocket* %103, i32 0, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %144

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %98
  %111 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %112 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @rs_connected, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %119 = call i64 @rs_ctrl_avail(%struct.rsocket* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %123 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %127 = load i32, i32* @RS_OP_CTRL, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @rs_msg_set(i32 %127, i32 %128)
  %130 = call i32 @rs_post_msg(%struct.rsocket* %126, i32 %129)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %121, %117, %110
  br label %132

132:                                              ; preds = %131, %37
  %133 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %134 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @rs_connected, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %141 = load i32, i32* @rs_conn_all_sends_done, align 4
  %142 = call i32 @rs_process_cq(%struct.rsocket* %140, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %139, %132
  br label %144

144:                                              ; preds = %143, %108, %94
  %145 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %146 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @O_NONBLOCK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %153 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @rs_connected, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %160 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %161 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rs_set_nonblocking(%struct.rsocket* %159, i32 %162)
  br label %164

164:                                              ; preds = %158, %151, %144
  %165 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %166 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @rs_disconnected, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %164
  %172 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %173 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ibv_req_notify_cq(i32 %176, i32 0)
  %178 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %179 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %178, i32 0, i32 3
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = call i32 @ucma_shutdown(%struct.TYPE_2__* %180)
  br label %182

182:                                              ; preds = %171, %164
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %13
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_notify_svc(i32*, %struct.rsocket*, i32) #1

declare dso_local i32 @rs_set_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i64 @rs_ctrl_avail(%struct.rsocket*) #1

declare dso_local i32 @rs_process_cq(%struct.rsocket*, i32, i32) #1

declare dso_local i32 @rs_post_msg(%struct.rsocket*, i32) #1

declare dso_local i32 @rs_msg_set(i32, i32) #1

declare dso_local i32 @ibv_req_notify_cq(i32, i32) #1

declare dso_local i32 @ucma_shutdown(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
