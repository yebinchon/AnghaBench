; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_getmaps.c_pmap_getmaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_getmaps.c_pmap_getmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmaplist = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.timeval = type { i32, i64 }

@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i32 0, align 4
@PMAPPROC_DUMP = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@xdr_pmaplist = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"pmap_getmaps rpc problem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmaplist* @pmap_getmaps(%struct.sockaddr_in* %0) #0 {
  %2 = alloca %struct.sockaddr_in*, align 8
  %3 = alloca %struct.pmaplist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %2, align 8
  store %struct.pmaplist* null, %struct.pmaplist** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %8 = icmp ne %struct.sockaddr_in* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 60, i32* %11, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @PMAPPORT, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %18 = load i32, i32* @PMAPPROG, align 4
  %19 = load i32, i32* @PMAPVERS, align 4
  %20 = call i32* @clnttcp_create(%struct.sockaddr_in* %17, i32 %18, i32 %19, i32* %4, i32 50, i32 500)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* @PMAPPROC_DUMP, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @xdr_void, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* @xdr_pmaplist, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @CLNT_CALL(i32* %24, i32 %26, i32 %28, i32* null, i32 %30, %struct.pmaplist** %3, %struct.timeval* byval(%struct.timeval) align 8 %5)
  %32 = load i64, i64* @RPC_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @clnt_perror(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @CLNT_DESTROY(i32* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.pmaplist*, %struct.pmaplist** %3, align 8
  ret %struct.pmaplist* %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @CLNT_CALL(i32*, i32, i32, i32*, i32, %struct.pmaplist**, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
