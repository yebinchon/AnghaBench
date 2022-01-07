; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_handle_readdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_handle_readdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i32, i64, i64, i32, %struct.comm_point* }
%struct.comm_point = type { i32, i32, i64, i32, i32, i64 (%struct.comm_point*, i32, i32, i32*)* }

@NETEVENT_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_req_info_handle_readdone(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca %struct.comm_point*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  %4 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %4, i32 0, i32 4
  %6 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  store %struct.comm_point* %6, %struct.comm_point** %3, align 8
  %7 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %8 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %10 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %14 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sldns_buffer_set_limit(i32 %15, i32 0)
  %17 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 5
  %19 = load i64 (%struct.comm_point*, i32, i32, i32*)*, i64 (%struct.comm_point*, i32, i32, i32*)** %18, align 8
  %20 = call i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, i32*)* %19)
  %21 = call i32 @fptr_ok(i32 %20)
  %22 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %23 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %22, i32 0, i32 5
  %24 = load i64 (%struct.comm_point*, i32, i32, i32*)*, i64 (%struct.comm_point*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %26 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %27 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NETEVENT_NOERROR, align 4
  %30 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %31 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %30, i32 0, i32 3
  %32 = call i64 %24(%struct.comm_point* %25, i32 %28, i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %1
  %35 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %36 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %60, %34
  %38 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %39 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %41 = call i32 @comm_point_stop_listening(%struct.comm_point* %40)
  %42 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @comm_point_start_listening(%struct.comm_point* %42, i32 -1, i32 %45)
  br label %70

47:                                               ; preds = %1
  %48 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %49 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %51 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %70

55:                                               ; preds = %47
  %56 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %57 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %37

61:                                               ; preds = %55
  %62 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %63 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sldns_buffer_clear(i32 %64)
  %66 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %67 = call i32 @tcp_req_pickup_next_result(%struct.tcp_req_info* %66)
  %68 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %69 = call i32 @tcp_req_info_setup_listen(%struct.tcp_req_info* %68)
  br label %70

70:                                               ; preds = %61, %54, %37
  ret void
}

declare dso_local i32 @sldns_buffer_set_limit(i32, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @comm_point_stop_listening(%struct.comm_point*) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @tcp_req_pickup_next_result(%struct.tcp_req_info*) #1

declare dso_local i32 @tcp_req_info_setup_listen(%struct.tcp_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
