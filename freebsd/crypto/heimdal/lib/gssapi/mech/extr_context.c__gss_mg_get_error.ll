; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mg_get_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mg_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.mg_thread_ctx = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@GSS_S_BAD_STATUS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gss_mg_get_error(i32* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
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
  %11 = call %struct.mg_thread_ctx* (...) @_gss_mechglue_thread()
  store %struct.mg_thread_ctx* %11, %struct.mg_thread_ctx** %10, align 8
  %12 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %13 = icmp eq %struct.mg_thread_ctx* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @GSS_S_BAD_STATUS, align 4
  store i32 %15, i32* %5, align 4
  br label %126

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %120 [
    i32 129, label %18
    i32 128, label %69
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %21 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  br label %120

31:                                               ; preds = %24
  %32 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i8* @malloc(i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32* %50, i32 %54, i64 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %68, i32* %5, align 4
  br label %126

69:                                               ; preds = %16
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %77 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %69
  br label %120

82:                                               ; preds = %75
  %83 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = call i8* @malloc(i32 %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %94 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %103 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.mg_thread_ctx, %struct.mg_thread_ctx* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @memcpy(i32* %101, i32 %105, i64 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %119, i32* %5, align 4
  br label %126

120:                                              ; preds = %16, %81, %30
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load i32, i32* @GSS_S_BAD_STATUS, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %82, %31, %14
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.mg_thread_ctx* @_gss_mechglue_thread(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
