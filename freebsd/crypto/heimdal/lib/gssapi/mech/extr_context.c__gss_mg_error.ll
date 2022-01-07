; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mg_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mg_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.mg_thread_ctx = type { %struct.TYPE_7__, %struct.TYPE_7__, i8*, i8*, i32* }

@GSS_C_GSS_CODE = common dso_local global i32 0, align 4
@GSS_C_MECH_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gss_mg_error(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mg_thread_ctx*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)*, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)** %12, align 8
  %14 = icmp eq i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %79

16:                                               ; preds = %3
  %17 = call %struct.mg_thread_ctx* (...) @_gss_mechglue_thread()
  store %struct.mg_thread_ctx* %17, %struct.mg_thread_ctx** %10, align 8
  %18 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %19 = icmp eq %struct.mg_thread_ctx* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %79

21:                                               ; preds = %16
  %22 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %22, i32 0, i32 1
  %24 = call i32 @gss_release_buffer(i8** %8, %struct.TYPE_7__* %23)
  %25 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %25, i32 0, i32 0
  %27 = call i32 @gss_release_buffer(i8** %8, %struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)*, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @GSS_C_GSS_CODE, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %45, i32 0, i32 1
  %47 = call i8* %40(i8** %8, i8* %41, i32 %42, i32* %44, i8** %9, %struct.TYPE_7__* %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @GSS_ERROR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %21
  %52 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %21
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)*, i8* (i8**, i8*, i32, i32*, i8**, %struct.TYPE_7__*)** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @GSS_C_MECH_CODE, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %66, i32 0, i32 0
  %68 = call i8* %61(i8** %8, i8* %62, i32 %63, i32* %65, i8** %9, %struct.TYPE_7__* %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @GSS_ERROR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %77 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %15, %20, %72, %58
  ret void
}

declare dso_local %struct.mg_thread_ctx* @_gss_mechglue_thread(...) #1

declare dso_local i32 @gss_release_buffer(i8**, %struct.TYPE_7__*) #1

declare dso_local i64 @GSS_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
