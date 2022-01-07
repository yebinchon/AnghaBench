; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_getport.c_pmap_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_getport.c_pmap_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr_in = type { i64 }
%struct.pmap = type { i64, i32, i8*, i8* }

@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@RPCSMALLMSGSIZE = common dso_local global i32 0, align 4
@PMAPPROC_GETPORT = common dso_local global i64 0, align 8
@xdr_pmap = common dso_local global i64 0, align 8
@xdr_u_short = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPC_PMAPFAILURE = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RPC_PROGNOTREGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_getport(%struct.sockaddr_in* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pmap, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %14 = icmp ne %struct.sockaddr_in* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @PMAPPORT, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %22 = load i32, i32* @PMAPPROG, align 4
  %23 = load i32, i32* @PMAPVERS, align 4
  %24 = load i32, i32* @timeout, align 4
  %25 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %26 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %27 = call i32* @clntudp_bufcreate(%struct.sockaddr_in* %21, i32 %22, i32 %23, i32 %24, i32* %10, i32 %25, i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* @PMAPPROC_GETPORT, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @xdr_pmap, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* @xdr_u_short, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @tottimeout, align 4
  %46 = call i64 @CLNT_CALL(i32* %38, i32 %40, i32 %42, %struct.pmap* %12, i32 %44, i64* %9, i32 %45)
  %47 = load i64, i64* @RPC_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load i32, i32* @RPC_PMAPFAILURE, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @clnt_geterr(i32* %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1))
  br label %59

53:                                               ; preds = %30
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @RPC_PROGNOTREGISTERED, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @CLNT_DESTROY(i32* %60)
  br label %62

62:                                               ; preds = %59, %4
  %63 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  ret i64 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32* @clntudp_bufcreate(%struct.sockaddr_in*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @CLNT_CALL(i32*, i32, i32, %struct.pmap*, i32, i64*, i32) #1

declare dso_local i32 @clnt_geterr(i32*, i32*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
