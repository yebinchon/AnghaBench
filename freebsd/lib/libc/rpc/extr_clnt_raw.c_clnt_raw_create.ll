; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clntraw_private = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rpc_msg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@clntraw_lock = common dso_local global i32 0, align 4
@clntraw_private = common dso_local global %struct.clntraw_private* null, align 8
@__rpc_rawcombuf = common dso_local global i8* null, align 8
@UDPMSGSIZE = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@RPC_MSG_VERSION = common dso_local global i32 0, align 4
@MCALL_MSG_SIZE = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"clntraw_create - Fatal header serialization error.\00", align 1
@XDR_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @clnt_raw_create(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clntraw_private*, align 8
  %7 = alloca %struct.rpc_msg, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i32 @mutex_lock(i32* @clntraw_lock)
  %11 = load %struct.clntraw_private*, %struct.clntraw_private** @clntraw_private, align 8
  store %struct.clntraw_private* %11, %struct.clntraw_private** %6, align 8
  %12 = icmp eq %struct.clntraw_private* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = call i64 @calloc(i32 1, i32 40)
  %15 = inttoptr i64 %14 to %struct.clntraw_private*
  store %struct.clntraw_private* %15, %struct.clntraw_private** %6, align 8
  %16 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %17 = icmp eq %struct.clntraw_private* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @mutex_unlock(i32* @clntraw_lock)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %85

20:                                               ; preds = %13
  %21 = load i8*, i8** @__rpc_rawcombuf, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @UDPMSGSIZE, align 4
  %25 = call i64 @calloc(i32 %24, i32 1)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @__rpc_rawcombuf, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i8*, i8** @__rpc_rawcombuf, align 8
  %29 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %30 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  store %struct.clntraw_private* %31, %struct.clntraw_private** @clntraw_private, align 8
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %34 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %33, i32 0, i32 4
  store i32* %34, i32** %8, align 8
  %35 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %36 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %35, i32 0, i32 3
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %9, align 8
  %37 = load i32, i32* @CALL, align 4
  %38 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @RPC_MSG_VERSION, align 4
  %40 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %7, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %52 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @MCALL_MSG_SIZE, align 4
  %56 = load i32, i32* @XDR_ENCODE, align 4
  %57 = call i32 @xdrmem_create(i32* %50, i8* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @xdr_callhdr(i32* %58, %struct.rpc_msg* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %32
  %62 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %32
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @XDR_GETPOS(i32* %64)
  %66 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %67 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @XDR_DESTROY(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.clntraw_private*, %struct.clntraw_private** %6, align 8
  %72 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @UDPMSGSIZE, align 4
  %75 = load i32, i32* @XDR_FREE, align 4
  %76 = call i32 @xdrmem_create(i32* %70, i8* %73, i32 %74, i32 %75)
  %77 = call i32 (...) @clnt_raw_ops()
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = call i32 (...) @authnone_create()
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = call i32 @mutex_unlock(i32* @clntraw_lock)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %3, align 8
  br label %85

85:                                               ; preds = %63, %18
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #1

declare dso_local i32 @xdr_callhdr(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i32 @clnt_raw_ops(...) #1

declare dso_local i32 @authnone_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
