; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i64, i32, i32, i64 }
%struct.pending = type { i64 }
%struct.waiting_tcp = type { i64, i32* }
%struct.pending_tcp = type { i32 }

@serviced_query_UDP_EDNS = common dso_local global i64 0, align 8
@serviced_query_UDP = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_FRAG = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_fallback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serviced_query*)* @serviced_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serviced_delete(%struct.serviced_query* %0) #0 {
  %2 = alloca %struct.serviced_query*, align 8
  %3 = alloca %struct.pending*, align 8
  %4 = alloca %struct.waiting_tcp*, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %2, align 8
  %5 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %6 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %88

9:                                                ; preds = %1
  %10 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %11 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @serviced_query_UDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %23 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %29 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @serviced_query_UDP_EDNS_fallback, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %27, %21, %15, %9
  %34 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %35 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.pending*
  store %struct.pending* %37, %struct.pending** %3, align 8
  %38 = load %struct.pending*, %struct.pending** %3, align 8
  %39 = getelementptr inbounds %struct.pending, %struct.pending* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %44 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pending*, %struct.pending** %3, align 8
  %47 = getelementptr inbounds %struct.pending, %struct.pending* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @portcomm_loweruse(i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %42, %33
  %51 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %52 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pending*, %struct.pending** %3, align 8
  %55 = call i32 @pending_delete(i32 %53, %struct.pending* %54)
  %56 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %57 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @outnet_send_wait_udp(i32 %58)
  br label %87

60:                                               ; preds = %27
  %61 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %62 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.waiting_tcp*
  store %struct.waiting_tcp* %64, %struct.waiting_tcp** %4, align 8
  %65 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %66 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %71 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %74 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.pending_tcp*
  %77 = call i32 @decommission_pending_tcp(i32 %72, %struct.pending_tcp* %76)
  br label %86

78:                                               ; preds = %60
  %79 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %80 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %83 = call i32 @waiting_list_remove(i32 %81, %struct.waiting_tcp* %82)
  %84 = load %struct.waiting_tcp*, %struct.waiting_tcp** %4, align 8
  %85 = call i32 @waiting_tcp_delete(%struct.waiting_tcp* %84)
  br label %86

86:                                               ; preds = %78, %69
  br label %87

87:                                               ; preds = %86, %50
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %90 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %89, i32 0, i32 1
  %91 = call i32 @serviced_node_del(i32* %90, i32* null)
  ret void
}

declare dso_local i32 @portcomm_loweruse(i32, i64) #1

declare dso_local i32 @pending_delete(i32, %struct.pending*) #1

declare dso_local i32 @outnet_send_wait_udp(i32) #1

declare dso_local i32 @decommission_pending_tcp(i32, %struct.pending_tcp*) #1

declare dso_local i32 @waiting_list_remove(i32, %struct.waiting_tcp*) #1

declare dso_local i32 @waiting_tcp_delete(%struct.waiting_tcp*) #1

declare dso_local i32 @serviced_node_del(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
