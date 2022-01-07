; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcb_rmtcallres.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcb_rmtcallres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcb_rmtcallres = type { i32 }
%struct.r_rpcb_rmtcallres = type { %struct.TYPE_2__, i32 (i32*, i32)*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpcb_rmtcallres(i32* %0, %struct.rpcb_rmtcallres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rpcb_rmtcallres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r_rpcb_rmtcallres*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.rpcb_rmtcallres* %1, %struct.rpcb_rmtcallres** %5, align 8
  %8 = load %struct.rpcb_rmtcallres*, %struct.rpcb_rmtcallres** %5, align 8
  %9 = bitcast %struct.rpcb_rmtcallres* %8 to i8*
  %10 = bitcast i8* %9 to %struct.r_rpcb_rmtcallres*
  store %struct.r_rpcb_rmtcallres* %10, %struct.r_rpcb_rmtcallres** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.r_rpcb_rmtcallres*, %struct.r_rpcb_rmtcallres** %7, align 8
  %13 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %12, i32 0, i32 2
  %14 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %15 = call i32 @xdr_string(i32* %11, i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.r_rpcb_rmtcallres*, %struct.r_rpcb_rmtcallres** %7, align 8
  %22 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @xdr_u_int(i32* %20, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %19
  %29 = load %struct.r_rpcb_rmtcallres*, %struct.r_rpcb_rmtcallres** %7, align 8
  %30 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %29, i32 0, i32 1
  %31 = load i32 (i32*, i32)*, i32 (i32*, i32)** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.r_rpcb_rmtcallres*, %struct.r_rpcb_rmtcallres** %7, align 8
  %34 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %31(i32* %32, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %26, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @xdr_string(i32*, i32*, i32) #1

declare dso_local i32 @xdr_u_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
