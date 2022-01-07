; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_maplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_maplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypmaplist = type { i32 }
%struct.dom_binding = type { i32 }
%struct.ypresp_maplist = type { %struct.ypmaplist*, i32 }
%struct.timeval = type { i64, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@YPPROC_MAPLIST = common dso_local global i32 0, align 4
@xdr_domainname = common dso_local global i64 0, align 8
@xdr_ypresp_maplist = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"yp_maplist: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_maplist(i8* %0, %struct.ypmaplist** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ypmaplist**, align 8
  %6 = alloca %struct.dom_binding*, align 8
  %7 = alloca %struct.ypresp_maplist, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ypmaplist** %1, %struct.ypmaplist*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %17, i32* %3, align 4
  br label %64

18:                                               ; preds = %12
  %19 = call i32 (...) @YPLOCK()
  br label %20

20:                                               ; preds = %45, %18
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @_yp_dobind(i8* %21, %struct.dom_binding** %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (...) @YPUNLOCK()
  %26 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %20
  %28 = load i32, i32* @_yplib_timeout, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = bitcast %struct.ypresp_maplist* %7 to i8*
  %32 = call i32 @bzero(i8* %31, i32 16)
  %33 = load %struct.dom_binding*, %struct.dom_binding** %6, align 8
  %34 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @YPPROC_MAPLIST, align 4
  %37 = load i64, i64* @xdr_domainname, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* @xdr_ypresp_maplist, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @clnt_call(i32 %35, i32 %36, i32 %38, i8** %4, i32 %40, %struct.ypresp_maplist* %7, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @RPC_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.dom_binding*, %struct.dom_binding** %6, align 8
  %47 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clnt_perror(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.dom_binding*, %struct.dom_binding** %6, align 8
  %51 = call i32 @_yp_unbind(%struct.dom_binding* %50)
  br label %20

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.ypresp_maplist, %struct.ypresp_maplist* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ypprot_err(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ypresp_maplist, %struct.ypresp_maplist* %7, i32 0, i32 0
  %59 = load %struct.ypmaplist*, %struct.ypmaplist** %58, align 8
  %60 = load %struct.ypmaplist**, %struct.ypmaplist*** %5, align 8
  store %struct.ypmaplist* %59, %struct.ypmaplist** %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = call i32 (...) @YPUNLOCK()
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %24, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, i8**, i32, %struct.ypresp_maplist*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32, i8*) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @ypprot_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
