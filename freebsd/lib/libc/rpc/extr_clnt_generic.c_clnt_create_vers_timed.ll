; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_create_vers_timed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_generic.c_clnt_create_vers_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.rpc_err }
%struct.rpc_err = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@CLSET_VERS = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @clnt_create_vers_timed(i8* %0, i32 %1, i64* %2, i64 %3, i64 %4, i8* %5, %struct.timeval* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.timeval*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.rpc_err, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.timeval* %6, %struct.timeval** %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load %struct.timeval*, %struct.timeval** %15, align 8
  %27 = call i32* @clnt_create_timed(i8* %22, i32 %23, i64 %24, i8* %25, %struct.timeval* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %119

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 10, i32* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load i32, i32* @NULLPROC, align 4
  %36 = load i64, i64* @xdr_void, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* @xdr_void, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @clnt_call(i32* %34, i32 %35, i32 %37, i8* null, i32 %39, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @RPC_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i64, i64* %13, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %16, align 8
  store i32* %47, i32** %8, align 8
  br label %119

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %110, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp sgt i64 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %111

59:                                               ; preds = %57
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @clnt_geterr(i32* %60, %struct.rpc_err* %19)
  %62 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %19, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %20, align 4
  %65 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %19, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %13, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* %21, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %13, align 8
  br label %78

75:                                               ; preds = %59
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %20, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %12, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %20, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %114

91:                                               ; preds = %86
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* @CLSET_VERS, align 4
  %94 = bitcast i64* %13 to i8*
  %95 = call i32 @CLNT_CONTROL(i32* %92, i32 %93, i8* %94)
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* @NULLPROC, align 4
  %98 = load i64, i64* @xdr_void, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* @xdr_void, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @clnt_call(i32* %96, i32 %97, i32 %99, i8* null, i32 %101, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @RPC_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %91
  %107 = load i64, i64* %13, align 8
  %108 = load i64*, i64** %11, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i32*, i32** %16, align 8
  store i32* %109, i32** %8, align 8
  br label %119

110:                                              ; preds = %91
  br label %49

111:                                              ; preds = %57
  %112 = load i32*, i32** %16, align 8
  %113 = call i32 @clnt_geterr(i32* %112, %struct.rpc_err* %19)
  br label %114

114:                                              ; preds = %111, %90
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %116 = bitcast %struct.rpc_err* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.rpc_err* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 1) to i8*), i8* align 4 %116, i64 8, i1 false)
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @clnt_destroy(i32* %117)
  store i32* null, i32** %8, align 8
  br label %119

119:                                              ; preds = %114, %106, %44, %30
  %120 = load i32*, i32** %8, align 8
  ret i32* %120
}

declare dso_local i32* @clnt_create_timed(i8*, i32, i64, i8*, %struct.timeval*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_geterr(i32*, %struct.rpc_err*) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
