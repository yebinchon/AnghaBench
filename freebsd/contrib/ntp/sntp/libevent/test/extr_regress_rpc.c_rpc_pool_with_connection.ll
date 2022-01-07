; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_pool_with_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_pool_with_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32 }
%struct.evhttp_connection = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evrpc_pool* (i32)* @rpc_pool_with_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evrpc_pool* @rpc_pool_with_connection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evrpc_pool*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.evrpc_pool* @evrpc_pool_new(i32* null)
  store %struct.evrpc_pool* %5, %struct.evrpc_pool** %4, align 8
  %6 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %7 = icmp ne %struct.evrpc_pool* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.evhttp_connection* @evhttp_connection_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.evhttp_connection* %11, %struct.evhttp_connection** %3, align 8
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = icmp ne %struct.evhttp_connection* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %17 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %18 = call i32 @evrpc_pool_add_connection(%struct.evrpc_pool* %16, %struct.evhttp_connection* %17)
  %19 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  ret %struct.evrpc_pool* %19
}

declare dso_local %struct.evrpc_pool* @evrpc_pool_new(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_new(i8*, i32) #1

declare dso_local i32 @evrpc_pool_add_connection(%struct.evrpc_pool*, %struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
