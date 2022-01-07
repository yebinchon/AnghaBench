; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_base = type { i32 }

@Message = common dso_local global i32 0, align 4
@NeverReply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evrpc_base*)* @rpc_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_teardown(%struct.evrpc_base* %0) #0 {
  %2 = alloca %struct.evrpc_base*, align 8
  store %struct.evrpc_base* %0, %struct.evrpc_base** %2, align 8
  %3 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %4 = load i32, i32* @Message, align 4
  %5 = call i64 @EVRPC_UNREGISTER(%struct.evrpc_base* %3, i32 %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %10 = load i32, i32* @NeverReply, align 4
  %11 = call i64 @EVRPC_UNREGISTER(%struct.evrpc_base* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %16 = call i32 @evrpc_free(%struct.evrpc_base* %15)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @EVRPC_UNREGISTER(%struct.evrpc_base*, i32) #1

declare dso_local i32 @evrpc_free(%struct.evrpc_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
