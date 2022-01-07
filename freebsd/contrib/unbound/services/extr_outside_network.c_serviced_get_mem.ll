; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i32, i64, %struct.service_callback* }
%struct.service_callback = type { %struct.service_callback* }

@serviced_query_UDP_EDNS = common dso_local global i64 0, align 8
@serviced_query_UDP = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_FRAG = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_fallback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serviced_get_mem(%struct.serviced_query* %0) #0 {
  %2 = alloca %struct.serviced_query*, align 8
  %3 = alloca %struct.service_callback*, align 8
  %4 = alloca i64, align 8
  store %struct.serviced_query* %0, %struct.serviced_query** %2, align 8
  %5 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %6 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = add i64 24, %8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %11 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %10, i32 0, i32 2
  %12 = load %struct.service_callback*, %struct.service_callback** %11, align 8
  store %struct.service_callback* %12, %struct.service_callback** %3, align 8
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.service_callback*, %struct.service_callback** %3, align 8
  %15 = icmp ne %struct.service_callback* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16
  %20 = load %struct.service_callback*, %struct.service_callback** %3, align 8
  %21 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %20, i32 0, i32 0
  %22 = load %struct.service_callback*, %struct.service_callback** %21, align 8
  store %struct.service_callback* %22, %struct.service_callback** %3, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %25 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %31 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @serviced_query_UDP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %37 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.serviced_query*, %struct.serviced_query** %2, align 8
  %43 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @serviced_query_UDP_EDNS_fallback, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41, %35, %29, %23
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %4, align 8
  %50 = call i64 @comm_timer_get_mem(i32* null)
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @comm_timer_get_mem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
