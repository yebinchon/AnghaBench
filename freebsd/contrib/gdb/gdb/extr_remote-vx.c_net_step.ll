; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i64 0, align 8
@step_range_start = common dso_local global i64 0, align 8
@VX_SOURCE_STEP = common dso_local global i32 0, align 4
@xdr_SOURCE_STEP = common dso_local global i32 0, align 4
@xdr_int = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @net_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_step() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = load i32, i32* @inferior_ptid, align 4
  %6 = call i32 @PIDGET(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = load i64, i64* @step_range_end, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i64, i64* @step_range_start, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* @step_range_end, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  br label %18

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @VX_SOURCE_STEP, align 4
  %20 = load i32, i32* @xdr_SOURCE_STEP, align 4
  %21 = load i32, i32* @xdr_int, align 4
  %22 = call i32 @net_clnt_call(i32 %19, i32 %20, %struct.TYPE_3__* %4, i32 %21, i32* %3)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @RPC_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @rpcerr, align 4
  %30 = call i32 @error(i32 %29)
  br label %31

31:                                               ; preds = %26, %28
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @net_clnt_call(i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
