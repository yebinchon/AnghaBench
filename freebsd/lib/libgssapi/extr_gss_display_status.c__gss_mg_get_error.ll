; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c__gss_mg_get_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c__gss_mg_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_thread_ctx = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32* }

@last_error_context = common dso_local global %struct.mg_thread_ctx zeroinitializer, align 8
@GSS_S_BAD_STATUS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_7__*)* @_gss_mg_get_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gss_mg_get_error(i32* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.mg_thread_ctx*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store %struct.mg_thread_ctx* @last_error_context, %struct.mg_thread_ctx** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @gss_oid_equal(i32 %16, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @GSS_S_BAD_STATUS, align 4
  store i32 %21, i32* %5, align 4
  br label %112

22:                                               ; preds = %13, %4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %106 [
    i32 129, label %24
    i32 128, label %65
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24
  br label %106

37:                                               ; preds = %30
  %38 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @malloc(i64 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(i32* %54, i32 %58, i64 %62)
  %64 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %64, i32* %5, align 4
  br label %112

65:                                               ; preds = %22
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %73 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65
  br label %106

78:                                               ; preds = %71
  %79 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %80 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @malloc(i64 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %88 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %97 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %101 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @memcpy(i32* %95, i32 %99, i64 %103)
  %105 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %105, i32* %5, align 4
  br label %112

106:                                              ; preds = %22, %77, %36
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @GSS_S_BAD_STATUS, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %78, %37, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @gss_oid_equal(i32, i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
