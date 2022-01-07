; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.dom_binding = type { i32 }
%struct.timeval = type { i64, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@YPERR_RPC = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@YPPROC_FIRST = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_key_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"yp_first: clnt_call\00", align 1
@YPERR_RESRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_first(i8* %0, i8* %1, i8** %2, i32* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ypresp_key_val, align 4
  %15 = alloca %struct.ypreq_nokey, align 8
  %16 = alloca %struct.dom_binding*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %26, %22, %6
  %34 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %34, i32* %7, align 4
  br label %176

35:                                               ; preds = %29
  %36 = load i8**, i8*** %12, align 8
  store i8* null, i8** %36, align 8
  %37 = load i8**, i8*** %10, align 8
  store i8* null, i8** %37, align 8
  %38 = load i32*, i32** %13, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 0, i32* %39, align 4
  %40 = call i32 (...) @YPLOCK()
  br label %41

41:                                               ; preds = %77, %35
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @MAX_RETRIES, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (...) @YPUNLOCK()
  %47 = load i32, i32* @YPERR_RPC, align 4
  store i32 %47, i32* %7, align 4
  br label %176

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @_yp_dobind(i8* %49, %struct.dom_binding** %16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 (...) @YPUNLOCK()
  %54 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %54, i32* %7, align 4
  br label %176

55:                                               ; preds = %48
  %56 = load i32, i32* @_yplib_timeout, align 4
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %15, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %15, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = bitcast %struct.ypresp_key_val* %14 to i8*
  %64 = call i32 @bzero(i8* %63, i32 20)
  %65 = load %struct.dom_binding*, %struct.dom_binding** %16, align 8
  %66 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @YPPROC_FIRST, align 4
  %69 = load i64, i64* @xdr_ypreq_nokey, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @xdr_ypresp_key_val, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @clnt_call(i32 %67, i32 %68, i32 %70, %struct.ypreq_nokey* %15, i32 %72, %struct.ypresp_key_val* %14, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @RPC_SUCCESS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %55
  %78 = load %struct.dom_binding*, %struct.dom_binding** %16, align 8
  %79 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clnt_perror(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.dom_binding*, %struct.dom_binding** %16, align 8
  %83 = call i32 @_yp_unbind(%struct.dom_binding* %82)
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %41

86:                                               ; preds = %55
  %87 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %14, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ypprot_err(i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %170, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %14, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i64 @malloc(i32 %98)
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8**, i8*** %10, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %10, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %91
  %106 = load %struct.dom_binding*, %struct.dom_binding** %16, align 8
  %107 = call i32 @_yp_unbind(%struct.dom_binding* %106)
  %108 = load i32*, i32** %11, align 8
  store i32 0, i32* %108, align 4
  %109 = load i64, i64* @xdr_ypresp_key_val, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @xdr_free(i32 %110, %struct.ypresp_key_val* %14)
  %112 = call i32 (...) @YPUNLOCK()
  %113 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %113, i32* %7, align 4
  br label %176

114:                                              ; preds = %91
  %115 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %14, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8**, i8*** %10, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bcopy(i32 %117, i8* %119, i32 %121)
  %123 = load i8**, i8*** %10, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 0, i8* %128, align 1
  %129 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %14, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %13, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i64 @malloc(i32 %135)
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8**, i8*** %12, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i8**, i8*** %12, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %114
  %143 = load i8**, i8*** %10, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load %struct.dom_binding*, %struct.dom_binding** %16, align 8
  %147 = call i32 @_yp_unbind(%struct.dom_binding* %146)
  %148 = load i32*, i32** %13, align 8
  store i32 0, i32* %148, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 0, i32* %149, align 4
  %150 = load i64, i64* @xdr_ypresp_key_val, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @xdr_free(i32 %151, %struct.ypresp_key_val* %14)
  %153 = call i32 (...) @YPUNLOCK()
  %154 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %154, i32* %7, align 4
  br label %176

155:                                              ; preds = %114
  %156 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %14, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i8**, i8*** %12, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bcopy(i32 %158, i8* %160, i32 %162)
  %164 = load i8**, i8*** %12, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 0, i8* %169, align 1
  br label %170

170:                                              ; preds = %155, %86
  %171 = load i64, i64* @xdr_ypresp_key_val, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @xdr_free(i32 %172, %struct.ypresp_key_val* %14)
  %174 = call i32 (...) @YPUNLOCK()
  %175 = load i32, i32* %18, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %170, %142, %105, %52, %45, %33
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, %struct.ypreq_nokey*, i32, %struct.ypresp_key_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32, i8*) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xdr_free(i32, %struct.ypresp_key_val*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
