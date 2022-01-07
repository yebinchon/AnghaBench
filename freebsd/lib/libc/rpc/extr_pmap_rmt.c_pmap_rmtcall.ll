; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_rmt.c_pmap_rmtcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_rmt.c_pmap_rmtcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64 }
%struct.timeval = type { i32 }
%struct.rmtcallargs = type { i8*, i8*, i8*, i8*, i8* }
%struct.rmtcallres = type { i8**, i8*, i8* }

@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@PMAPPROC_CALLIT = common dso_local global i64 0, align 8
@xdr_rmtcall_args = common dso_local global i64 0, align 8
@xdr_rmtcallres = common dso_local global i64 0, align 8
@RPC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_rmtcall(%struct.sockaddr_in* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8, i8** %9) #0 {
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.rmtcallargs, align 8
  %24 = alloca %struct.rmtcallres, align 8
  %25 = alloca i32, align 4
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %8, i32* %26, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8** %9, i8*** %20, align 8
  store i32 -1, i32* %21, align 4
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %28 = icmp ne %struct.sockaddr_in* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8**, i8*** %20, align 8
  %32 = icmp ne i8** %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @PMAPPORT, align 4
  %36 = call i64 @htons(i32 %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %40 = load i32, i32* @PMAPPROG, align 4
  %41 = load i32, i32* @PMAPVERS, align 4
  %42 = load i32, i32* @timeout, align 4
  %43 = call i32* @clntudp_create(%struct.sockaddr_in* %39, i32 %40, i32 %41, i32 %42, i32* %21)
  store i32* %43, i32** %22, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %10
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %23, i32 0, i32 4
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %23, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %23, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %23, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds %struct.rmtcallargs, %struct.rmtcallargs* %23, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load i8**, i8*** %20, align 8
  %58 = getelementptr inbounds %struct.rmtcallres, %struct.rmtcallres* %24, i32 0, i32 0
  store i8** %57, i8*** %58, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = getelementptr inbounds %struct.rmtcallres, %struct.rmtcallres* %24, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = getelementptr inbounds %struct.rmtcallres, %struct.rmtcallres* %24, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = load i64, i64* @PMAPPROC_CALLIT, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @xdr_rmtcall_args, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i64, i64* @xdr_rmtcallres, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CLNT_CALL(i32* %63, i32 %65, i8* %67, %struct.rmtcallargs* %23, i8* %69, %struct.rmtcallres* %24, i32 %71)
  store i32 %72, i32* %25, align 4
  %73 = load i32*, i32** %22, align 8
  %74 = call i32 @CLNT_DESTROY(i32* %73)
  br label %77

75:                                               ; preds = %10
  %76 = load i32, i32* @RPC_FAILED, align 4
  store i32 %76, i32* %25, align 4
  br label %77

77:                                               ; preds = %75, %46
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %25, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i32*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i8*, %struct.rmtcallargs*, i8*, %struct.rmtcallres*, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
