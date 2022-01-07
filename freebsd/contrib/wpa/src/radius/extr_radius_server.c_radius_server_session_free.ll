; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 }
%struct.radius_session = type { %struct.radius_session*, %struct.radius_session*, i32, %struct.radius_session*, i32, i32 }

@radius_server_session_timeout = common dso_local global i32 0, align 4
@radius_server_session_remove_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_server_data*, %struct.radius_session*)* @radius_server_session_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_session_free(%struct.radius_server_data* %0, %struct.radius_session* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca %struct.radius_session*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store %struct.radius_session* %1, %struct.radius_session** %4, align 8
  %5 = load i32, i32* @radius_server_session_timeout, align 4
  %6 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %7 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %8 = call i32 @eloop_cancel_timeout(i32 %5, %struct.radius_server_data* %6, %struct.radius_session* %7)
  %9 = load i32, i32* @radius_server_session_remove_timeout, align 4
  %10 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %11 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %9, %struct.radius_server_data* %10, %struct.radius_session* %11)
  %13 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %14 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eap_server_sm_deinit(i32 %15)
  %17 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %18 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @radius_msg_free(i32 %19)
  %21 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %22 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %21, i32 0, i32 3
  %23 = load %struct.radius_session*, %struct.radius_session** %22, align 8
  %24 = call i32 @os_free(%struct.radius_session* %23)
  %25 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %26 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @radius_msg_free(i32 %27)
  %29 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %30 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %29, i32 0, i32 1
  %31 = load %struct.radius_session*, %struct.radius_session** %30, align 8
  %32 = call i32 @os_free(%struct.radius_session* %31)
  %33 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %34 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %33, i32 0, i32 0
  %35 = load %struct.radius_session*, %struct.radius_session** %34, align 8
  %36 = call i32 @os_free(%struct.radius_session* %35)
  %37 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %38 = call i32 @os_free(%struct.radius_session* %37)
  %39 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %40 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_server_data*, %struct.radius_session*) #1

declare dso_local i32 @eap_server_sm_deinit(i32) #1

declare dso_local i32 @radius_msg_free(i32) #1

declare dso_local i32 @os_free(%struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
