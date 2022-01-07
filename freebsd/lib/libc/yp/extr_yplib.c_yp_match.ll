; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { i32 }
%struct.ypresp_val = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timeval = type { i64, i32 }
%struct.ypreq_key = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@YPERR_RPC = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@YPPROC_MATCH = common dso_local global i32 0, align 4
@xdr_ypreq_key = common dso_local global i64 0, align 8
@xdr_ypresp_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"yp_match: clnt_call\00", align 1
@YPERR_RESRC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_match(i8* %0, i8* %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dom_binding*, align 8
  %15 = alloca %struct.ypresp_val, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.ypreq_key, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8**, i8*** %12, align 8
  store i8* null, i8** %20, align 8
  %21 = load i32*, i32** %13, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %38, %34, %31, %28, %24, %6
  %46 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %46, i32* %7, align 4
  br label %156

47:                                               ; preds = %41
  %48 = call i32 (...) @YPLOCK()
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @_yp_dobind(i8* %49, %struct.dom_binding** %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 (...) @YPUNLOCK()
  %54 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %54, i32* %7, align 4
  br label %156

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %17, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %17, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %17, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %17, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %98, %55
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @MAX_RETRIES, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (...) @YPUNLOCK()
  %72 = load i32, i32* @YPERR_RPC, align 4
  store i32 %72, i32* %7, align 4
  br label %156

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @_yp_dobind(i8* %74, %struct.dom_binding** %14)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32 (...) @YPUNLOCK()
  %79 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %79, i32* %7, align 4
  br label %156

80:                                               ; preds = %73
  %81 = load i32, i32* @_yplib_timeout, align 4
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = bitcast %struct.ypresp_val* %15 to i8*
  %85 = call i32 @bzero(i8* %84, i32 12)
  %86 = load %struct.dom_binding*, %struct.dom_binding** %14, align 8
  %87 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @YPPROC_MATCH, align 4
  %90 = load i64, i64* @xdr_ypreq_key, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* @xdr_ypresp_val, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @clnt_call(i32 %88, i32 %89, i32 %91, %struct.ypreq_key* %17, i32 %93, %struct.ypresp_val* %15, %struct.timeval* byval(%struct.timeval) align 8 %16)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @RPC_SUCCESS, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %80
  %99 = load %struct.dom_binding*, %struct.dom_binding** %14, align 8
  %100 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clnt_perror(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.dom_binding*, %struct.dom_binding** %14, align 8
  %104 = call i32 @_yp_unbind(%struct.dom_binding* %103)
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %66

107:                                              ; preds = %80
  %108 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ypprot_err(i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i64 @malloc(i32 %119)
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8**, i8*** %12, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i8**, i8*** %12, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %112
  %127 = load %struct.dom_binding*, %struct.dom_binding** %14, align 8
  %128 = call i32 @_yp_unbind(%struct.dom_binding* %127)
  %129 = load i32*, i32** %13, align 8
  store i32 0, i32* %129, align 4
  %130 = load i64, i64* @xdr_ypresp_val, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @xdr_free(i32 %131, %struct.ypresp_val* %15)
  %133 = call i32 (...) @YPUNLOCK()
  %134 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %134, i32* %7, align 4
  br label %156

135:                                              ; preds = %112
  %136 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i8**, i8*** %12, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bcopy(i32 %138, i8* %140, i32 %142)
  %144 = load i8**, i8*** %12, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 0, i8* %149, align 1
  br label %150

150:                                              ; preds = %135, %107
  %151 = load i64, i64* @xdr_ypresp_val, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @xdr_free(i32 %152, %struct.ypresp_val* %15)
  %154 = call i32 (...) @YPUNLOCK()
  %155 = load i32, i32* %18, align 4
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %150, %126, %77, %70, %52, %45
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, %struct.ypreq_key*, i32, %struct.ypresp_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32, i8*) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xdr_free(i32, %struct.ypresp_val*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
