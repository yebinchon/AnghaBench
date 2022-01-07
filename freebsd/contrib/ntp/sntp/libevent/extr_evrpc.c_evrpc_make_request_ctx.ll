; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_make_request_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_make_request_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_request_wrapper = type { void (%struct.evrpc_status*, i8*, i8*, i8*)*, void (%struct.evbuffer*, i8*)*, void (i8*)*, i32 (i8*, %struct.evbuffer.0*)*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.evrpc_pool* }
%struct.evrpc_status = type opaque
%struct.evbuffer = type opaque
%struct.evbuffer.0 = type opaque
%struct.evrpc_pool = type { i32 }
%struct.evbuffer.1 = type opaque
%struct.evbuffer.2 = type opaque
%struct.evrpc_status.3 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evrpc_request_wrapper* @evrpc_make_request_ctx(%struct.evrpc_pool* %0, i8* %1, i8* %2, i8* %3, void (%struct.evbuffer.1*, i8*)* %4, void (i8*)* %5, i32 (i8*, %struct.evbuffer.2*)* %6, void (%struct.evrpc_status.3*, i8*, i8*, i8*)* %7, i8* %8) #0 {
  %10 = alloca %struct.evrpc_request_wrapper*, align 8
  %11 = alloca %struct.evrpc_pool*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca void (%struct.evbuffer.1*, i8*)*, align 8
  %16 = alloca void (i8*)*, align 8
  %17 = alloca i32 (i8*, %struct.evbuffer.2*)*, align 8
  %18 = alloca void (%struct.evrpc_status.3*, i8*, i8*, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.evrpc_request_wrapper*, align 8
  store %struct.evrpc_pool* %0, %struct.evrpc_pool** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store void (%struct.evbuffer.1*, i8*)* %4, void (%struct.evbuffer.1*, i8*)** %15, align 8
  store void (i8*)* %5, void (i8*)** %16, align 8
  store i32 (i8*, %struct.evbuffer.2*)* %6, i32 (i8*, %struct.evbuffer.2*)** %17, align 8
  store void (%struct.evrpc_status.3*, i8*, i8*, i8*)* %7, void (%struct.evrpc_status.3*, i8*, i8*, i8*)** %18, align 8
  store i8* %8, i8** %19, align 8
  %21 = call i64 @mm_malloc(i32 88)
  %22 = inttoptr i64 %21 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %22, %struct.evrpc_request_wrapper** %20, align 8
  %23 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %24 = icmp eq %struct.evrpc_request_wrapper* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  store %struct.evrpc_request_wrapper* null, %struct.evrpc_request_wrapper** %10, align 8
  br label %71

26:                                               ; preds = %9
  %27 = load %struct.evrpc_pool*, %struct.evrpc_pool** %11, align 8
  %28 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %29 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %28, i32 0, i32 10
  store %struct.evrpc_pool* %27, %struct.evrpc_pool** %29, align 8
  %30 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %31 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %30, i32 0, i32 9
  store i32* null, i32** %31, align 8
  %32 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %33 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %32, i32 0, i32 8
  store i32* null, i32** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32* @mm_strdup(i8* %34)
  %36 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %37 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %36, i32 0, i32 7
  store i32* %35, i32** %37, align 8
  %38 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %39 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %44 = call i32 @mm_free(%struct.evrpc_request_wrapper* %43)
  store %struct.evrpc_request_wrapper* null, %struct.evrpc_request_wrapper** %10, align 8
  br label %71

45:                                               ; preds = %26
  %46 = load void (%struct.evrpc_status.3*, i8*, i8*, i8*)*, void (%struct.evrpc_status.3*, i8*, i8*, i8*)** %18, align 8
  %47 = bitcast void (%struct.evrpc_status.3*, i8*, i8*, i8*)* %46 to void (%struct.evrpc_status*, i8*, i8*, i8*)*
  %48 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %49 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %48, i32 0, i32 0
  store void (%struct.evrpc_status*, i8*, i8*, i8*)* %47, void (%struct.evrpc_status*, i8*, i8*, i8*)** %49, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %52 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %55 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %58 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load void (%struct.evbuffer.1*, i8*)*, void (%struct.evbuffer.1*, i8*)** %15, align 8
  %60 = bitcast void (%struct.evbuffer.1*, i8*)* %59 to void (%struct.evbuffer*, i8*)*
  %61 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %62 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %61, i32 0, i32 1
  store void (%struct.evbuffer*, i8*)* %60, void (%struct.evbuffer*, i8*)** %62, align 8
  %63 = load void (i8*)*, void (i8*)** %16, align 8
  %64 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %65 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %64, i32 0, i32 2
  store void (i8*)* %63, void (i8*)** %65, align 8
  %66 = load i32 (i8*, %struct.evbuffer.2*)*, i32 (i8*, %struct.evbuffer.2*)** %17, align 8
  %67 = bitcast i32 (i8*, %struct.evbuffer.2*)* %66 to i32 (i8*, %struct.evbuffer.0*)*
  %68 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  %69 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %68, i32 0, i32 3
  store i32 (i8*, %struct.evbuffer.0*)* %67, i32 (i8*, %struct.evbuffer.0*)** %69, align 8
  %70 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %20, align 8
  store %struct.evrpc_request_wrapper* %70, %struct.evrpc_request_wrapper** %10, align 8
  br label %71

71:                                               ; preds = %45, %42, %25
  %72 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %10, align 8
  ret %struct.evrpc_request_wrapper* %72
}

declare dso_local i64 @mm_malloc(i32) #1

declare dso_local i32* @mm_strdup(i8*) #1

declare dso_local i32 @mm_free(%struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
