; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client = type { %struct.radius_client*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.radius_server_data = type { %struct.radius_client* }
%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_client* (%struct.radius_server_data*, %struct.in_addr*, i32)* @radius_server_get_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_client* @radius_server_get_client(%struct.radius_server_data* %0, %struct.in_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.radius_server_data*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_client*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %9 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %8, i32 0, i32 0
  %10 = load %struct.radius_client*, %struct.radius_client** %9, align 8
  store %struct.radius_client* %10, %struct.radius_client** %7, align 8
  br label %11

11:                                               ; preds = %37, %3
  %12 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %13 = icmp ne %struct.radius_client* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %19 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %23 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %21, %25
  %27 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %31 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %29, %33
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %41

37:                                               ; preds = %17, %14
  %38 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %39 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %38, i32 0, i32 0
  %40 = load %struct.radius_client*, %struct.radius_client** %39, align 8
  store %struct.radius_client* %40, %struct.radius_client** %7, align 8
  br label %11

41:                                               ; preds = %36, %11
  %42 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  ret %struct.radius_client* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
