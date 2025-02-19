; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svcerr_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svcerr_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.rpc_msg = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@REPLY = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i32 0, align 4
@GARBAGE_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svcerr_decode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.rpc_msg, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = icmp ne %struct.TYPE_8__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @REPLY, align 4
  %9 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @MSG_ACCEPTED, align 4
  %11 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @GARBAGE_ARGS, align 4
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %3, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i32 @SVC_REPLY(%struct.TYPE_8__* %21, %struct.rpc_msg* %3)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVC_REPLY(%struct.TYPE_8__*, %struct.rpc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
