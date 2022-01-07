; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_lookup_serviced.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_lookup_serviced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i32, %struct.edns_option*, %struct.outside_network*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.serviced_query* }
%struct.outside_network = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.edns_option = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.serviced_query* (%struct.outside_network*, i32*, i32, %struct.sockaddr_storage*, i32, %struct.edns_option*)* @lookup_serviced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.serviced_query* @lookup_serviced(%struct.outside_network* %0, i32* %1, i32 %2, %struct.sockaddr_storage* %3, i32 %4, %struct.edns_option* %5) #0 {
  %7 = alloca %struct.outside_network*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.edns_option*, align 8
  %13 = alloca %struct.serviced_query, align 8
  store %struct.outside_network* %0, %struct.outside_network** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.edns_option* %5, %struct.edns_option** %12, align 8
  %14 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.serviced_query* %13, %struct.serviced_query** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @sldns_buffer_begin(i32* %16)
  %18 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @sldns_buffer_limit(i32* %19)
  %21 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 4
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @memcpy(i32* %24, %struct.sockaddr_storage* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %31 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 2
  store %struct.outside_network* %30, %struct.outside_network** %31, align 8
  %32 = load %struct.edns_option*, %struct.edns_option** %12, align 8
  %33 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %13, i32 0, i32 1
  store %struct.edns_option* %32, %struct.edns_option** %33, align 8
  %34 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %35 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @rbtree_search(i32 %36, %struct.serviced_query* %13)
  %38 = inttoptr i64 %37 to %struct.serviced_query*
  ret %struct.serviced_query* %38
}

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @rbtree_search(i32, %struct.serviced_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
