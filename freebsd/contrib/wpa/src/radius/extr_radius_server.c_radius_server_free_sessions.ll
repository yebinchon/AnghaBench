; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_free_sessions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_free_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 }
%struct.radius_session = type { %struct.radius_session* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_server_data*, %struct.radius_session*)* @radius_server_free_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_free_sessions(%struct.radius_server_data* %0, %struct.radius_session* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca %struct.radius_session*, align 8
  %5 = alloca %struct.radius_session*, align 8
  %6 = alloca %struct.radius_session*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store %struct.radius_session* %1, %struct.radius_session** %4, align 8
  %7 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  store %struct.radius_session* %7, %struct.radius_session** %5, align 8
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  %10 = icmp ne %struct.radius_session* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  store %struct.radius_session* %12, %struct.radius_session** %6, align 8
  %13 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  %14 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %13, i32 0, i32 0
  %15 = load %struct.radius_session*, %struct.radius_session** %14, align 8
  store %struct.radius_session* %15, %struct.radius_session** %5, align 8
  %16 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %17 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %18 = call i32 @radius_server_session_free(%struct.radius_server_data* %16, %struct.radius_session* %17)
  br label %8

19:                                               ; preds = %8
  ret void
}

declare dso_local i32 @radius_server_session_free(%struct.radius_server_data*, %struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
