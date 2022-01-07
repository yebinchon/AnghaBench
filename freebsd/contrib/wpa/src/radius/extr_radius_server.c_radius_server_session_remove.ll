; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 }
%struct.radius_session = type { %struct.radius_session*, %struct.radius_client* }
%struct.radius_client = type { %struct.radius_session* }

@radius_server_session_remove_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_server_data*, %struct.radius_session*)* @radius_server_session_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_session_remove(%struct.radius_server_data* %0, %struct.radius_session* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca %struct.radius_session*, align 8
  %5 = alloca %struct.radius_client*, align 8
  %6 = alloca %struct.radius_session*, align 8
  %7 = alloca %struct.radius_session*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store %struct.radius_session* %1, %struct.radius_session** %4, align 8
  %8 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %9 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %8, i32 0, i32 1
  %10 = load %struct.radius_client*, %struct.radius_client** %9, align 8
  store %struct.radius_client* %10, %struct.radius_client** %5, align 8
  %11 = load i32, i32* @radius_server_session_remove_timeout, align 4
  %12 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %13 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %14 = call i32 @eloop_cancel_timeout(i32 %11, %struct.radius_server_data* %12, %struct.radius_session* %13)
  store %struct.radius_session* null, %struct.radius_session** %7, align 8
  %15 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %16 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %15, i32 0, i32 0
  %17 = load %struct.radius_session*, %struct.radius_session** %16, align 8
  store %struct.radius_session* %17, %struct.radius_session** %6, align 8
  br label %18

18:                                               ; preds = %44, %2
  %19 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %20 = icmp ne %struct.radius_session* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %23 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %24 = icmp eq %struct.radius_session* %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %27 = icmp eq %struct.radius_session* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %30 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %29, i32 0, i32 0
  %31 = load %struct.radius_session*, %struct.radius_session** %30, align 8
  %32 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %33 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %32, i32 0, i32 0
  store %struct.radius_session* %31, %struct.radius_session** %33, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %36 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %35, i32 0, i32 0
  %37 = load %struct.radius_session*, %struct.radius_session** %36, align 8
  %38 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %39 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %38, i32 0, i32 0
  store %struct.radius_session* %37, %struct.radius_session** %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %42 = load %struct.radius_session*, %struct.radius_session** %4, align 8
  %43 = call i32 @radius_server_session_free(%struct.radius_server_data* %41, %struct.radius_session* %42)
  br label %49

44:                                               ; preds = %21
  %45 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  store %struct.radius_session* %45, %struct.radius_session** %7, align 8
  %46 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %47 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %46, i32 0, i32 0
  %48 = load %struct.radius_session*, %struct.radius_session** %47, align 8
  store %struct.radius_session* %48, %struct.radius_session** %6, align 8
  br label %18

49:                                               ; preds = %40, %18
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_server_data*, %struct.radius_session*) #1

declare dso_local i32 @radius_server_session_free(%struct.radius_server_data*, %struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
