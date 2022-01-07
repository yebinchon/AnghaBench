; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_raw.c_svc_raw_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_raw.c_svc_raw_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_raw_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_msg = type { i32 }

@svcraw_lock = common dso_local global i32 0, align 4
@svc_raw_private = common dso_local global %struct.svc_raw_private* null, align 8
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rpc_msg*)* @svc_raw_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_raw_recv(i32* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca %struct.svc_raw_private*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %8 = call i32 @mutex_lock(i32* @svcraw_lock)
  %9 = load %struct.svc_raw_private*, %struct.svc_raw_private** @svc_raw_private, align 8
  store %struct.svc_raw_private* %9, %struct.svc_raw_private** %6, align 8
  %10 = load %struct.svc_raw_private*, %struct.svc_raw_private** %6, align 8
  %11 = icmp eq %struct.svc_raw_private* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @mutex_unlock(i32* @svcraw_lock)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = call i32 @mutex_unlock(i32* @svcraw_lock)
  %17 = load %struct.svc_raw_private*, %struct.svc_raw_private** %6, align 8
  %18 = getelementptr inbounds %struct.svc_raw_private, %struct.svc_raw_private* %17, i32 0, i32 0
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load i32, i32* @XDR_DECODE, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = call i32 @XDR_SETPOS(%struct.TYPE_4__* %22, i32 0)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %26 = call i32 @xdr_callmsg(%struct.TYPE_4__* %24, %struct.rpc_msg* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %28, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @XDR_SETPOS(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @xdr_callmsg(%struct.TYPE_4__*, %struct.rpc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
