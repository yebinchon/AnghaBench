; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { i32 }
%struct.ypresp_order = type { i32, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.timeval = type { i64, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@YPPROC_ORDER = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_order = common dso_local global i64 0, align 8
@RPC_PROCUNAVAIL = common dso_local global i32 0, align 4
@YPERR_YPERR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"yp_order: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_order(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dom_binding*, align 8
  %9 = alloca %struct.ypresp_order, align 4
  %10 = alloca %struct.ypreq_nokey, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %19, %15, %3
  %27 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %27, i32* %4, align 4
  br label %88

28:                                               ; preds = %22
  %29 = call i32 (...) @YPLOCK()
  br label %30

30:                                               ; preds = %66, %28
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @_yp_dobind(i8* %31, %struct.dom_binding** %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 (...) @YPUNLOCK()
  %36 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %30
  %38 = load i32, i32* @_yplib_timeout, align 4
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = bitcast %struct.ypresp_order* %9 to i8*
  %46 = call i32 @bzero(i8* %45, i32 8)
  %47 = load %struct.dom_binding*, %struct.dom_binding** %8, align 8
  %48 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @YPPROC_ORDER, align 4
  %51 = load i64, i64* @xdr_ypreq_nokey, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @xdr_ypresp_order, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @clnt_call(i32 %49, i32 %50, i32 %52, %struct.ypreq_nokey* %10, i32 %54, %struct.ypresp_order* %9, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @RPC_PROCUNAVAIL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = call i32 (...) @YPUNLOCK()
  %61 = load i32, i32* @YPERR_YPERR, align 4
  store i32 %61, i32* %4, align 4
  br label %88

62:                                               ; preds = %37
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @RPC_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.dom_binding*, %struct.dom_binding** %8, align 8
  %68 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clnt_perror(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.dom_binding*, %struct.dom_binding** %8, align 8
  %72 = call i32 @_yp_unbind(%struct.dom_binding* %71)
  br label %30

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ypprot_err(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i64, i64* @xdr_ypresp_order, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @xdr_free(i32 %84, %struct.ypresp_order* %9)
  %86 = call i32 (...) @YPUNLOCK()
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %59, %34, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, %struct.ypreq_nokey*, i32, %struct.ypresp_order*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32, i8*) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i32 @xdr_free(i32, %struct.ypresp_order*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
