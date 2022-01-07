; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_register_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_register_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc = type { i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.evbuffer*)*, i8* (i8*)*, void (i8*)*, i32 (i8*)*, void (%struct.evbuffer.0*, i8*)*, i8*, i8*, i32* }
%struct.evbuffer = type opaque
%struct.evbuffer.0 = type opaque
%struct.evbuffer.1 = type opaque
%struct.evbuffer.2 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evrpc* (i8*, i8* (i8*)*, i8*, void (i8*)*, i32 (i8*, %struct.evbuffer.1*)*, i8* (i8*)*, i8*, void (i8*)*, i32 (i8*)*, void (%struct.evbuffer.2*, i8*)*)* @evrpc_register_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evrpc* @evrpc_register_object(i8* %0, i8* (i8*)* %1, i8* %2, void (i8*)* %3, i32 (i8*, %struct.evbuffer.1*)* %4, i8* (i8*)* %5, i8* %6, void (i8*)* %7, i32 (i8*)* %8, void (%struct.evbuffer.2*, i8*)* %9) #0 {
  %11 = alloca %struct.evrpc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8* (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i32 (i8*, %struct.evbuffer.1*)*, align 8
  %17 = alloca i8* (i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca void (i8*)*, align 8
  %20 = alloca i32 (i8*)*, align 8
  %21 = alloca void (%struct.evbuffer.2*, i8*)*, align 8
  %22 = alloca %struct.evrpc*, align 8
  store i8* %0, i8** %12, align 8
  store i8* (i8*)* %1, i8* (i8*)** %13, align 8
  store i8* %2, i8** %14, align 8
  store void (i8*)* %3, void (i8*)** %15, align 8
  store i32 (i8*, %struct.evbuffer.1*)* %4, i32 (i8*, %struct.evbuffer.1*)** %16, align 8
  store i8* (i8*)* %5, i8* (i8*)** %17, align 8
  store i8* %6, i8** %18, align 8
  store void (i8*)* %7, void (i8*)** %19, align 8
  store i32 (i8*)* %8, i32 (i8*)** %20, align 8
  store void (%struct.evbuffer.2*, i8*)* %9, void (%struct.evbuffer.2*, i8*)** %21, align 8
  %23 = call i64 @mm_calloc(i32 1, i32 80)
  %24 = inttoptr i64 %23 to %struct.evrpc*
  store %struct.evrpc* %24, %struct.evrpc** %22, align 8
  %25 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %26 = icmp eq %struct.evrpc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store %struct.evrpc* null, %struct.evrpc** %11, align 8
  br label %71

28:                                               ; preds = %10
  %29 = load i8*, i8** %12, align 8
  %30 = call i32* @mm_strdup(i8* %29)
  %31 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %32 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %31, i32 0, i32 9
  store i32* %30, i32** %32, align 8
  %33 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %34 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %39 = call i32 @mm_free(%struct.evrpc* %38)
  store %struct.evrpc* null, %struct.evrpc** %11, align 8
  br label %71

40:                                               ; preds = %28
  %41 = load i8* (i8*)*, i8* (i8*)** %13, align 8
  %42 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %43 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %42, i32 0, i32 0
  store i8* (i8*)* %41, i8* (i8*)** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %46 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load void (i8*)*, void (i8*)** %15, align 8
  %48 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %49 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %48, i32 0, i32 1
  store void (i8*)* %47, void (i8*)** %49, align 8
  %50 = load i32 (i8*, %struct.evbuffer.1*)*, i32 (i8*, %struct.evbuffer.1*)** %16, align 8
  %51 = bitcast i32 (i8*, %struct.evbuffer.1*)* %50 to i32 (i8*, %struct.evbuffer*)*
  %52 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %53 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %52, i32 0, i32 2
  store i32 (i8*, %struct.evbuffer*)* %51, i32 (i8*, %struct.evbuffer*)** %53, align 8
  %54 = load i8* (i8*)*, i8* (i8*)** %17, align 8
  %55 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %56 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %55, i32 0, i32 3
  store i8* (i8*)* %54, i8* (i8*)** %56, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %59 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load void (i8*)*, void (i8*)** %19, align 8
  %61 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %62 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %61, i32 0, i32 4
  store void (i8*)* %60, void (i8*)** %62, align 8
  %63 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %64 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %65 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %64, i32 0, i32 5
  store i32 (i8*)* %63, i32 (i8*)** %65, align 8
  %66 = load void (%struct.evbuffer.2*, i8*)*, void (%struct.evbuffer.2*, i8*)** %21, align 8
  %67 = bitcast void (%struct.evbuffer.2*, i8*)* %66 to void (%struct.evbuffer.0*, i8*)*
  %68 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  %69 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %68, i32 0, i32 6
  store void (%struct.evbuffer.0*, i8*)* %67, void (%struct.evbuffer.0*, i8*)** %69, align 8
  %70 = load %struct.evrpc*, %struct.evrpc** %22, align 8
  store %struct.evrpc* %70, %struct.evrpc** %11, align 8
  br label %71

71:                                               ; preds = %40, %37, %27
  %72 = load %struct.evrpc*, %struct.evrpc** %11, align 8
  ret %struct.evrpc* %72
}

declare dso_local i64 @mm_calloc(i32, i32) #1

declare dso_local i32* @mm_strdup(i8*) #1

declare dso_local i32 @mm_free(%struct.evrpc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
