; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_free_clients.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_free_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 }
%struct.radius_client = type { i32, i32, %struct.radius_client*, i32, %struct.radius_client* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_server_data*, %struct.radius_client*)* @radius_server_free_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_free_clients(%struct.radius_server_data* %0, %struct.radius_client* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca %struct.radius_client*, align 8
  %5 = alloca %struct.radius_client*, align 8
  %6 = alloca %struct.radius_client*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store %struct.radius_client* %1, %struct.radius_client** %4, align 8
  %7 = load %struct.radius_client*, %struct.radius_client** %4, align 8
  store %struct.radius_client* %7, %struct.radius_client** %5, align 8
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %10 = icmp ne %struct.radius_client* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  store %struct.radius_client* %12, %struct.radius_client** %6, align 8
  %13 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %14 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %13, i32 0, i32 4
  %15 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  store %struct.radius_client* %15, %struct.radius_client** %5, align 8
  %16 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %17 = load %struct.radius_client*, %struct.radius_client** %6, align 8
  %18 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @radius_server_free_sessions(%struct.radius_server_data* %16, i32 %19)
  %21 = load %struct.radius_client*, %struct.radius_client** %6, align 8
  %22 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %21, i32 0, i32 2
  %23 = load %struct.radius_client*, %struct.radius_client** %22, align 8
  %24 = call i32 @os_free(%struct.radius_client* %23)
  %25 = load %struct.radius_client*, %struct.radius_client** %6, align 8
  %26 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @radius_msg_free(i32 %27)
  %29 = load %struct.radius_client*, %struct.radius_client** %6, align 8
  %30 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @radius_msg_free(i32 %31)
  %33 = load %struct.radius_client*, %struct.radius_client** %6, align 8
  %34 = call i32 @os_free(%struct.radius_client* %33)
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i32 @radius_server_free_sessions(%struct.radius_server_data*, i32) #1

declare dso_local i32 @os_free(%struct.radius_client*) #1

declare dso_local i32 @radius_msg_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
