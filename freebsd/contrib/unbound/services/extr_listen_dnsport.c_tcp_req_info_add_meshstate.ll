; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_add_meshstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_add_meshstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i32, %struct.tcp_req_open_item* }
%struct.tcp_req_open_item = type { %struct.mesh_state*, %struct.mesh_area*, %struct.tcp_req_open_item* }
%struct.mesh_area = type { i32 }
%struct.mesh_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_req_info_add_meshstate(%struct.tcp_req_info* %0, %struct.mesh_area* %1, %struct.mesh_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_req_info*, align 8
  %6 = alloca %struct.mesh_area*, align 8
  %7 = alloca %struct.mesh_state*, align 8
  %8 = alloca %struct.tcp_req_open_item*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %5, align 8
  store %struct.mesh_area* %1, %struct.mesh_area** %6, align 8
  store %struct.mesh_state* %2, %struct.mesh_state** %7, align 8
  %9 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %10 = icmp ne %struct.tcp_req_info* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %13 = icmp ne %struct.mesh_area* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %16 = icmp ne %struct.mesh_state* %15, null
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i1 [ false, %11 ], [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  %21 = call i64 @malloc(i32 24)
  %22 = inttoptr i64 %21 to %struct.tcp_req_open_item*
  store %struct.tcp_req_open_item* %22, %struct.tcp_req_open_item** %8, align 8
  %23 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %8, align 8
  %24 = icmp ne %struct.tcp_req_open_item* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %27, i32 0, i32 1
  %29 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %28, align 8
  %30 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %8, align 8
  %31 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %30, i32 0, i32 2
  store %struct.tcp_req_open_item* %29, %struct.tcp_req_open_item** %31, align 8
  %32 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %33 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %8, align 8
  %34 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %33, i32 0, i32 1
  store %struct.mesh_area* %32, %struct.mesh_area** %34, align 8
  %35 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %36 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %8, align 8
  %37 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %36, i32 0, i32 0
  store %struct.mesh_state* %35, %struct.mesh_state** %37, align 8
  %38 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %8, align 8
  %39 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %39, i32 0, i32 1
  store %struct.tcp_req_open_item* %38, %struct.tcp_req_open_item** %40, align 8
  %41 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %26, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
