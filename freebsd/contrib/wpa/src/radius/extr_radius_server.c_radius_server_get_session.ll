; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_session = type { i32, %struct.radius_session* }
%struct.radius_client = type { %struct.radius_session* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_session* (%struct.radius_client*, i32)* @radius_server_get_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_session* @radius_server_get_session(%struct.radius_client* %0, i32 %1) #0 {
  %3 = alloca %struct.radius_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_session*, align 8
  store %struct.radius_client* %0, %struct.radius_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radius_client*, %struct.radius_client** %3, align 8
  %7 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %6, i32 0, i32 0
  %8 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  store %struct.radius_session* %8, %struct.radius_session** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  %11 = icmp ne %struct.radius_session* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  %14 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  %21 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %20, i32 0, i32 1
  %22 = load %struct.radius_session*, %struct.radius_session** %21, align 8
  store %struct.radius_session* %22, %struct.radius_session** %5, align 8
  br label %9

23:                                               ; preds = %18, %9
  %24 = load %struct.radius_session*, %struct.radius_session** %5, align 8
  ret %struct.radius_session* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
