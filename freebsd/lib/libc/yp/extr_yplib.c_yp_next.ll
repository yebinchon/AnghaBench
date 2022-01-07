; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ypreq_key = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.dom_binding = type { i32 }
%struct.timeval = type { i64, i32 }

@YPERR_BADARGS = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@YPERR_RPC = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@_yplib_timeout = common dso_local global i32 0, align 4
@YPPROC_NEXT = common dso_local global i32 0, align 4
@xdr_ypreq_key = common dso_local global i64 0, align 8
@xdr_ypresp_key_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"yp_next: clnt_call\00", align 1
@YPERR_RESRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_next(i8* %0, i8* %1, i8* %2, i32 %3, i8** %4, i32* %5, i8** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ypresp_key_val, align 4
  %19 = alloca %struct.ypreq_key, align 8
  %20 = alloca %struct.dom_binding*, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %23, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %40, %36, %33, %30, %26, %8
  %48 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %48, i32* %9, align 4
  br label %196

49:                                               ; preds = %43
  %50 = load i8**, i8*** %16, align 8
  store i8* null, i8** %50, align 8
  %51 = load i8**, i8*** %14, align 8
  store i8* null, i8** %51, align 8
  %52 = load i32*, i32** %17, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %15, align 8
  store i32 0, i32* %53, align 4
  %54 = call i32 (...) @YPLOCK()
  br label %55

55:                                               ; preds = %97, %49
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* @MAX_RETRIES, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 (...) @YPUNLOCK()
  %61 = load i32, i32* @YPERR_RPC, align 4
  store i32 %61, i32* %9, align 4
  br label %196

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @_yp_dobind(i8* %63, %struct.dom_binding** %20)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 (...) @YPUNLOCK()
  %68 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %68, i32* %9, align 4
  br label %196

69:                                               ; preds = %62
  %70 = load i32, i32* @_yplib_timeout, align 4
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %19, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %19, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %19, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %19, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = bitcast %struct.ypresp_key_val* %18 to i8*
  %84 = call i32 @bzero(i8* %83, i32 20)
  %85 = load %struct.dom_binding*, %struct.dom_binding** %20, align 8
  %86 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @YPPROC_NEXT, align 4
  %89 = load i64, i64* @xdr_ypreq_key, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* @xdr_ypresp_key_val, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @clnt_call(i32 %87, i32 %88, i32 %90, %struct.ypreq_key* %19, i32 %92, %struct.ypresp_key_val* %18, %struct.timeval* byval(%struct.timeval) align 8 %21)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* @RPC_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %69
  %98 = load %struct.dom_binding*, %struct.dom_binding** %20, align 8
  %99 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clnt_perror(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.dom_binding*, %struct.dom_binding** %20, align 8
  %103 = call i32 @_yp_unbind(%struct.dom_binding* %102)
  %104 = load i32, i32* %23, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %23, align 4
  br label %55

106:                                              ; preds = %69
  %107 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %18, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ypprot_err(i32 %108)
  store i32 %109, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %190, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %18, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i64 @malloc(i32 %118)
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8**, i8*** %14, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i8**, i8*** %14, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %111
  %126 = load %struct.dom_binding*, %struct.dom_binding** %20, align 8
  %127 = call i32 @_yp_unbind(%struct.dom_binding* %126)
  %128 = load i32*, i32** %15, align 8
  store i32 0, i32* %128, align 4
  %129 = load i64, i64* @xdr_ypresp_key_val, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @xdr_free(i32 %130, %struct.ypresp_key_val* %18)
  %132 = call i32 (...) @YPUNLOCK()
  %133 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %133, i32* %9, align 4
  br label %196

134:                                              ; preds = %111
  %135 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %18, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i8**, i8*** %14, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @bcopy(i32 %137, i8* %139, i32 %141)
  %143 = load i8**, i8*** %14, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 0, i8* %148, align 1
  %149 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %18, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %17, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i64 @malloc(i32 %155)
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8**, i8*** %16, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i8**, i8*** %16, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %134
  %163 = load i8**, i8*** %14, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load %struct.dom_binding*, %struct.dom_binding** %20, align 8
  %167 = call i32 @_yp_unbind(%struct.dom_binding* %166)
  %168 = load i32*, i32** %17, align 8
  store i32 0, i32* %168, align 4
  %169 = load i32*, i32** %15, align 8
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* @xdr_ypresp_key_val, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @xdr_free(i32 %171, %struct.ypresp_key_val* %18)
  %173 = call i32 (...) @YPUNLOCK()
  %174 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %174, i32* %9, align 4
  br label %196

175:                                              ; preds = %134
  %176 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %18, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i8**, i8*** %16, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = load i32*, i32** %17, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @bcopy(i32 %178, i8* %180, i32 %182)
  %184 = load i8**, i8*** %16, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %175, %106
  %191 = load i64, i64* @xdr_ypresp_key_val, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @xdr_free(i32 %192, %struct.ypresp_key_val* %18)
  %194 = call i32 (...) @YPUNLOCK()
  %195 = load i32, i32* %22, align 4
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %190, %162, %125, %66, %59, %47
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i64 @_yp_dobind(i8*, %struct.dom_binding**) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, %struct.ypreq_key*, i32, %struct.ypresp_key_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

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
