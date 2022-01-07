; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_register_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_register_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_base = type { i32 }
%struct.evrpc_req_generic = type opaque
%struct.evbuffer = type opaque
%struct.evbuffer.0 = type opaque
%struct.evrpc = type { i32 }
%struct.evbuffer.1 = type opaque
%struct.evbuffer.2 = type opaque
%struct.evrpc_req_generic.4 = type opaque
%struct.evrpc_req_generic.3 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evrpc_register_generic(%struct.evrpc_base* %0, i8* %1, void (%struct.evrpc_req_generic*, i8*)* %2, i8* %3, i8* (i8*)* %4, i8* %5, void (i8*)* %6, i32 (i8*, %struct.evbuffer*)* %7, i8* (i8*)* %8, i8* %9, void (i8*)* %10, i32 (i8*)* %11, void (%struct.evbuffer.0*, i8*)* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.evrpc_base*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca void (%struct.evrpc_req_generic*, i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8* (i8*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca void (i8*)*, align 8
  %22 = alloca i32 (i8*, %struct.evbuffer*)*, align 8
  %23 = alloca i8* (i8*)*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca void (i8*)*, align 8
  %26 = alloca i32 (i8*)*, align 8
  %27 = alloca void (%struct.evbuffer.0*, i8*)*, align 8
  %28 = alloca %struct.evrpc*, align 8
  store %struct.evrpc_base* %0, %struct.evrpc_base** %15, align 8
  store i8* %1, i8** %16, align 8
  store void (%struct.evrpc_req_generic*, i8*)* %2, void (%struct.evrpc_req_generic*, i8*)** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* (i8*)* %4, i8* (i8*)** %19, align 8
  store i8* %5, i8** %20, align 8
  store void (i8*)* %6, void (i8*)** %21, align 8
  store i32 (i8*, %struct.evbuffer*)* %7, i32 (i8*, %struct.evbuffer*)** %22, align 8
  store i8* (i8*)* %8, i8* (i8*)** %23, align 8
  store i8* %9, i8** %24, align 8
  store void (i8*)* %10, void (i8*)** %25, align 8
  store i32 (i8*)* %11, i32 (i8*)** %26, align 8
  store void (%struct.evbuffer.0*, i8*)* %12, void (%struct.evbuffer.0*, i8*)** %27, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load i8* (i8*)*, i8* (i8*)** %19, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = load void (i8*)*, void (i8*)** %21, align 8
  %33 = load i32 (i8*, %struct.evbuffer*)*, i32 (i8*, %struct.evbuffer*)** %22, align 8
  %34 = bitcast i32 (i8*, %struct.evbuffer*)* %33 to i32 (i8*, %struct.evbuffer.1*)*
  %35 = load i8* (i8*)*, i8* (i8*)** %23, align 8
  %36 = load i8*, i8** %24, align 8
  %37 = load void (i8*)*, void (i8*)** %25, align 8
  %38 = load i32 (i8*)*, i32 (i8*)** %26, align 8
  %39 = load void (%struct.evbuffer.0*, i8*)*, void (%struct.evbuffer.0*, i8*)** %27, align 8
  %40 = bitcast void (%struct.evbuffer.0*, i8*)* %39 to void (%struct.evbuffer.2*, i8*)*
  %41 = call %struct.evrpc* @evrpc_register_object(i8* %29, i8* (i8*)* %30, i8* %31, void (i8*)* %32, i32 (i8*, %struct.evbuffer.1*)* %34, i8* (i8*)* %35, i8* %36, void (i8*)* %37, i32 (i8*)* %38, void (%struct.evbuffer.2*, i8*)* %40)
  store %struct.evrpc* %41, %struct.evrpc** %28, align 8
  %42 = load %struct.evrpc*, %struct.evrpc** %28, align 8
  %43 = icmp eq %struct.evrpc* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %13
  store i32 -1, i32* %14, align 4
  br label %53

45:                                               ; preds = %13
  %46 = load %struct.evrpc_base*, %struct.evrpc_base** %15, align 8
  %47 = load %struct.evrpc*, %struct.evrpc** %28, align 8
  %48 = load void (%struct.evrpc_req_generic*, i8*)*, void (%struct.evrpc_req_generic*, i8*)** %17, align 8
  %49 = bitcast void (%struct.evrpc_req_generic*, i8*)* %48 to void (%struct.evrpc_req_generic.4*, i8*)*
  %50 = bitcast void (%struct.evrpc_req_generic.4*, i8*)* %49 to void (%struct.evrpc_req_generic.3*, i8*)*
  %51 = load i8*, i8** %18, align 8
  %52 = call i32 @evrpc_register_rpc(%struct.evrpc_base* %46, %struct.evrpc* %47, void (%struct.evrpc_req_generic.3*, i8*)* %50, i8* %51)
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i32, i32* %14, align 4
  ret i32 %54
}

declare dso_local %struct.evrpc* @evrpc_register_object(i8*, i8* (i8*)*, i8*, void (i8*)*, i32 (i8*, %struct.evbuffer.1*)*, i8* (i8*)*, i8*, void (i8*)*, i32 (i8*)*, void (%struct.evbuffer.2*, i8*)*) #1

declare dso_local i32 @evrpc_register_rpc(%struct.evrpc_base*, %struct.evrpc*, void (%struct.evrpc_req_generic.3*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
