; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypall_callback = type { i64, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.dom_binding = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i64 }
%struct.timeval = type { i64, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@YPERR_RPC = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"clnttcp_create failed\0A\00", align 1
@YPERR_PMAP = common dso_local global i32 0, align 4
@ypresp_allfn = common dso_local global i32 0, align 4
@ypresp_data = common dso_local global i8* null, align 8
@YPPROC_ALL = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_all_seq = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"yp_all: clnt_call\00", align 1
@YP_NOMORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_all(i8* %0, i8* %1, %struct.ypall_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ypall_callback*, align 8
  %8 = alloca %struct.ypreq_nokey, align 8
  %9 = alloca %struct.dom_binding*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.sockaddr_in, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ypall_callback* %2, %struct.ypall_callback** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %23, %19, %3
  %31 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %31, i32* %4, align 4
  br label %112

32:                                               ; preds = %26
  %33 = call i32 (...) @YPLOCK()
  br label %34

34:                                               ; preds = %88, %32
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @MAX_RETRIES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (...) @YPUNLOCK()
  %40 = load i32, i32* @YPERR_RPC, align 4
  store i32 %40, i32* %4, align 4
  br label %112

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @_yp_dobind(i8* %42, %struct.dom_binding** %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (...) @YPUNLOCK()
  %47 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %47, i32* %4, align 4
  br label %112

48:                                               ; preds = %41
  %49 = load i32, i32* @_yplib_timeout, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %52, i32* %15, align 4
  %53 = load %struct.dom_binding*, %struct.dom_binding** %9, align 8
  %54 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %53, i32 0, i32 0
  %55 = bitcast %struct.sockaddr_in* %11 to i8*
  %56 = bitcast %struct.sockaddr_in* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @YPPROG, align 4
  %59 = load i32, i32* @YPVERS, align 4
  %60 = call i32* @clnttcp_create(%struct.sockaddr_in* %11, i32 %58, i32 %59, i32* %15, i32 0, i32 0)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = call i32 (...) @YPUNLOCK()
  %65 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @YPERR_PMAP, align 4
  store i32 %66, i32* %4, align 4
  br label %112

67:                                               ; preds = %48
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %8, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %8, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load %struct.ypall_callback*, %struct.ypall_callback** %7, align 8
  %73 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* @ypresp_allfn, align 4
  %75 = load %struct.ypall_callback*, %struct.ypall_callback** %7, align 8
  %76 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** @ypresp_data, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* @YPPROC_ALL, align 4
  %81 = load i64, i64* @xdr_ypreq_nokey, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* @xdr_ypresp_all_seq, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @clnt_call(i32* %79, i32 %80, i32 %82, %struct.ypreq_nokey* %8, i32 %84, i64* %13, %struct.timeval* byval(%struct.timeval) align 8 %10)
  %86 = load i64, i64* @RPC_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %67
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @clnt_perror(i32* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @clnt_destroy(i32* %91)
  %93 = load %struct.dom_binding*, %struct.dom_binding** %9, align 8
  %94 = call i32 @_yp_unbind(%struct.dom_binding* %93)
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %34

97:                                               ; preds = %67
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @clnt_destroy(i32* %98)
  %100 = load i64, i64* %13, align 8
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* @xdr_ypresp_all_seq, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @xdr_free(i32 %102, i64* %13)
  %104 = call i32 (...) @YPUNLOCK()
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @YP_NOMORE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @ypprot_err(i64 %109)
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %108, %63, %45, %38, %30
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, %struct.ypreq_nokey*, i32, i64*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @xdr_free(i32, i64*) #1

declare dso_local i32 @ypprot_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
