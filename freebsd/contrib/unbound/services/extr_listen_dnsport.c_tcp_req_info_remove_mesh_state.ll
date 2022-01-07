; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_remove_mesh_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_remove_mesh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i32, %struct.tcp_req_open_item* }
%struct.tcp_req_open_item = type { %struct.tcp_req_open_item*, %struct.mesh_state* }
%struct.mesh_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_req_info_remove_mesh_state(%struct.tcp_req_info* %0, %struct.mesh_state* %1) #0 {
  %3 = alloca %struct.tcp_req_info*, align 8
  %4 = alloca %struct.mesh_state*, align 8
  %5 = alloca %struct.tcp_req_open_item*, align 8
  %6 = alloca %struct.tcp_req_open_item*, align 8
  %7 = alloca %struct.tcp_req_open_item*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %3, align 8
  store %struct.mesh_state* %1, %struct.mesh_state** %4, align 8
  store %struct.tcp_req_open_item* null, %struct.tcp_req_open_item** %6, align 8
  %8 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %9 = icmp ne %struct.tcp_req_info* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %12 = icmp ne %struct.mesh_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %58

14:                                               ; preds = %10
  %15 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %15, i32 0, i32 1
  %17 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %16, align 8
  store %struct.tcp_req_open_item* %17, %struct.tcp_req_open_item** %5, align 8
  br label %18

18:                                               ; preds = %53, %42, %14
  %19 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %20 = icmp ne %struct.tcp_req_open_item* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %22, i32 0, i32 1
  %24 = load %struct.mesh_state*, %struct.mesh_state** %23, align 8
  %25 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %26 = icmp eq %struct.mesh_state* %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %6, align 8
  %29 = icmp ne %struct.tcp_req_open_item* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %31, i32 0, i32 0
  %33 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %32, align 8
  %34 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %34, i32 0, i32 0
  store %struct.tcp_req_open_item* %33, %struct.tcp_req_open_item** %35, align 8
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %37, i32 0, i32 0
  %39 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %38, align 8
  %40 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %41 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %40, i32 0, i32 1
  store %struct.tcp_req_open_item* %39, %struct.tcp_req_open_item** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %43, i32 0, i32 0
  %45 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %44, align 8
  store %struct.tcp_req_open_item* %45, %struct.tcp_req_open_item** %7, align 8
  %46 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %47 = call i32 @free(%struct.tcp_req_open_item* %46)
  %48 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %49 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %7, align 8
  store %struct.tcp_req_open_item* %52, %struct.tcp_req_open_item** %5, align 8
  br label %18

53:                                               ; preds = %21
  %54 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  store %struct.tcp_req_open_item* %54, %struct.tcp_req_open_item** %6, align 8
  %55 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %55, i32 0, i32 0
  %57 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %56, align 8
  store %struct.tcp_req_open_item* %57, %struct.tcp_req_open_item** %5, align 8
  br label %18

58:                                               ; preds = %13, %18
  ret void
}

declare dso_local i32 @free(%struct.tcp_req_open_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
