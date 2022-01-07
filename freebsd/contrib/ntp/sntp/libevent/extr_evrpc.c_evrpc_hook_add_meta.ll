; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_hook_add_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_hook_add_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_request_wrapper = type { %struct.evrpc_hook_meta* }
%struct.evrpc_hook_meta = type { i32 }
%struct.evrpc_meta = type { i64, i32*, i32* }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_hook_add_meta(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.evrpc_request_wrapper*, align 8
  %10 = alloca %struct.evrpc_hook_meta*, align 8
  %11 = alloca %struct.evrpc_meta*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %13, %struct.evrpc_request_wrapper** %9, align 8
  store %struct.evrpc_hook_meta* null, %struct.evrpc_hook_meta** %10, align 8
  store %struct.evrpc_meta* null, %struct.evrpc_meta** %11, align 8
  %14 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %9, align 8
  %15 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %14, i32 0, i32 0
  %16 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %15, align 8
  store %struct.evrpc_hook_meta* %16, %struct.evrpc_hook_meta** %10, align 8
  %17 = icmp eq %struct.evrpc_hook_meta* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = call %struct.evrpc_hook_meta* (...) @evrpc_hook_meta_new_()
  %20 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %9, align 8
  %21 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %20, i32 0, i32 0
  store %struct.evrpc_hook_meta* %19, %struct.evrpc_hook_meta** %21, align 8
  store %struct.evrpc_hook_meta* %19, %struct.evrpc_hook_meta** %10, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = call i8* @mm_malloc(i64 24)
  %24 = bitcast i8* %23 to %struct.evrpc_meta*
  store %struct.evrpc_meta* %24, %struct.evrpc_meta** %11, align 8
  %25 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %26 = icmp ne %struct.evrpc_meta* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @EVUTIL_ASSERT(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32* @mm_strdup(i8* %29)
  %31 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %32 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %34 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @EVUTIL_ASSERT(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %41 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @mm_malloc(i64 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %46 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %48 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @EVUTIL_ASSERT(i32 %51)
  %53 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %54 = getelementptr inbounds %struct.evrpc_meta, %struct.evrpc_meta* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy(i32* %55, i8* %56, i64 %57)
  %59 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %10, align 8
  %60 = getelementptr inbounds %struct.evrpc_hook_meta, %struct.evrpc_hook_meta* %59, i32 0, i32 0
  %61 = load %struct.evrpc_meta*, %struct.evrpc_meta** %11, align 8
  %62 = load i32, i32* @next, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* %60, %struct.evrpc_meta* %61, i32 %62)
  ret void
}

declare dso_local %struct.evrpc_hook_meta* @evrpc_hook_meta_new_(...) #1

declare dso_local i8* @mm_malloc(i64) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32* @mm_strdup(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evrpc_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
