; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_get_connection_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_get_connection_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.connection_info = type { i32, i32, i32, i32, i32 }

@active_state = common dso_local global %struct.ssh* null, align 8
@get_connection_info.ci = internal global %struct.connection_info zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection_info* @get_connection_info(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.connection_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %7, %struct.ssh** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.connection_info* @get_connection_info.ci, %struct.connection_info** %3, align 8
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.ssh*, %struct.ssh** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @auth_get_canonical_hostname(%struct.ssh* %12, i32 %13)
  store i32 %14, i32* getelementptr inbounds (%struct.connection_info, %struct.connection_info* @get_connection_info.ci, i32 0, i32 4), align 4
  %15 = load %struct.ssh*, %struct.ssh** %6, align 8
  %16 = call i32 @ssh_remote_ipaddr(%struct.ssh* %15)
  store i32 %16, i32* getelementptr inbounds (%struct.connection_info, %struct.connection_info* @get_connection_info.ci, i32 0, i32 3), align 4
  %17 = load %struct.ssh*, %struct.ssh** %6, align 8
  %18 = call i32 @ssh_local_ipaddr(%struct.ssh* %17)
  store i32 %18, i32* getelementptr inbounds (%struct.connection_info, %struct.connection_info* @get_connection_info.ci, i32 0, i32 2), align 4
  %19 = load %struct.ssh*, %struct.ssh** %6, align 8
  %20 = call i32 @ssh_local_port(%struct.ssh* %19)
  store i32 %20, i32* getelementptr inbounds (%struct.connection_info, %struct.connection_info* @get_connection_info.ci, i32 0, i32 1), align 4
  %21 = load %struct.ssh*, %struct.ssh** %6, align 8
  %22 = call i32 @ssh_packet_rdomain_in(%struct.ssh* %21)
  store i32 %22, i32* getelementptr inbounds (%struct.connection_info, %struct.connection_info* @get_connection_info.ci, i32 0, i32 0), align 4
  store %struct.connection_info* @get_connection_info.ci, %struct.connection_info** %3, align 8
  br label %23

23:                                               ; preds = %11, %10
  %24 = load %struct.connection_info*, %struct.connection_info** %3, align 8
  ret %struct.connection_info* %24
}

declare dso_local i32 @auth_get_canonical_hostname(%struct.ssh*, i32) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_local_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_local_port(%struct.ssh*) #1

declare dso_local i32 @ssh_packet_rdomain_in(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
