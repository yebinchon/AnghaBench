; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_tp_create_timed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_tp_create_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.netconfig = type { i32, i32 }
%struct.timeval = type { i32 }
%struct.netbuf = type { %struct.netbuf* }

@RPC_UNKNOWNPROTO = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@RPC_ANYFD = common dso_local global i32 0, align 4
@CLSET_SVC_ADDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CLSET_PROG = common dso_local global i32 0, align 4
@CLSET_VERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @clnt_tp_create_timed(i8* %0, i32 %1, i32 %2, %struct.netconfig* %3, %struct.timeval* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netconfig*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.netbuf*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.netconfig* %3, %struct.netconfig** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %14 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %15 = icmp eq %struct.netconfig* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @RPC_UNKNOWNPROTO, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rpc_createerr, i32 0, i32 0), align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %98

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.timeval*, %struct.timeval** %11, align 8
  %24 = call %struct.netbuf* @__rpcb_findaddr_timed(i32 %19, i32 %20, %struct.netconfig* %21, i8* %22, %struct.TYPE_8__** %13, %struct.timeval* %23)
  store %struct.netbuf* %24, %struct.netbuf** %12, align 8
  %25 = icmp eq %struct.netbuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %98

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* @RPC_ANYFD, align 4
  %32 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %33 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.TYPE_8__* @clnt_tli_create(i32 %31, %struct.netconfig* %32, %struct.netbuf* %33, i32 %34, i32 %35, i32 0, i32 0)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %13, align 8
  br label %90

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = load i32, i32* @CLSET_SVC_ADDR, align 4
  %40 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %41 = bitcast %struct.netbuf* %40 to i8*
  %42 = call i64 @CLNT_CONTROL(%struct.TYPE_8__* %38, i32 %39, i8* %41)
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %52 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @strdup(i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %65 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @strdup(i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = load i32, i32* @CLSET_PROG, align 4
  %74 = bitcast i32* %8 to i8*
  %75 = call i64 @CLNT_CONTROL(%struct.TYPE_8__* %72, i32 %73, i8* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = load i32, i32* @CLSET_VERS, align 4
  %78 = bitcast i32* %9 to i8*
  %79 = call i64 @CLNT_CONTROL(%struct.TYPE_8__* %76, i32 %77, i8* %78)
  br label %89

80:                                               ; preds = %37
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = call i32 @CLNT_DESTROY(%struct.TYPE_8__* %81)
  %83 = load i32, i32* @RPC_ANYFD, align 4
  %84 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %85 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call %struct.TYPE_8__* @clnt_tli_create(i32 %83, %struct.netconfig* %84, %struct.netbuf* %85, i32 %86, i32 %87, i32 0, i32 0)
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %13, align 8
  br label %89

89:                                               ; preds = %80, %71
  br label %90

90:                                               ; preds = %89, %30
  %91 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %92 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %91, i32 0, i32 0
  %93 = load %struct.netbuf*, %struct.netbuf** %92, align 8
  %94 = call i32 @free(%struct.netbuf* %93)
  %95 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %96 = call i32 @free(%struct.netbuf* %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %6, align 8
  br label %98

98:                                               ; preds = %90, %26, %16
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %99
}

declare dso_local %struct.netbuf* @__rpcb_findaddr_timed(i32, i32, %struct.netconfig*, i8*, %struct.TYPE_8__**, %struct.timeval*) #1

declare dso_local %struct.TYPE_8__* @clnt_tli_create(i32, %struct.netconfig*, %struct.netbuf*, i32, i32, i32, i32) #1

declare dso_local i64 @CLNT_CONTROL(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @CLNT_DESTROY(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
