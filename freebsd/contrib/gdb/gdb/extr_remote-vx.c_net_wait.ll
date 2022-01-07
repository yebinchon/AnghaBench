; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@inferior_ptid = common dso_local global i32 0, align 4
@PROCESS_WAIT = common dso_local global i32 0, align 4
@xdr_int = common dso_local global i32 0, align 4
@xdr_RDB_EVENT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @net_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_wait(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = bitcast %struct.TYPE_4__* %6 to i8*
  %8 = call i32 @memset(i8* %7, i8 signext 0, i32 8)
  %9 = load i32, i32* @inferior_ptid, align 4
  %10 = call i32 @PIDGET(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @PROCESS_WAIT, align 4
  %12 = load i32, i32* @xdr_int, align 4
  %13 = load i32, i32* @xdr_RDB_EVENT, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @net_clnt_call(i32 %11, i32 %12, i32* %4, i32 %13, %struct.TYPE_4__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RPC_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RPC_TIMEDOUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @net_clnt_call(i32, i32, i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
