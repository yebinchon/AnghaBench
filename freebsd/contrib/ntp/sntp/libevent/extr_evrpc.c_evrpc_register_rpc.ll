; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_register_rpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_register_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_base = type { i32, i32 }
%struct.evrpc = type { void (%struct.evrpc_req_generic*, i8*)*, i8*, %struct.evrpc_base*, i32 }
%struct.evrpc_req_generic = type opaque
%struct.evrpc_req_generic.0 = type opaque

@next = common dso_local global i32 0, align 4
@evrpc_request_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evrpc_register_rpc(%struct.evrpc_base* %0, %struct.evrpc* %1, void (%struct.evrpc_req_generic.0*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.evrpc_base*, align 8
  %6 = alloca %struct.evrpc*, align 8
  %7 = alloca void (%struct.evrpc_req_generic.0*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.evrpc_base* %0, %struct.evrpc_base** %5, align 8
  store %struct.evrpc* %1, %struct.evrpc** %6, align 8
  store void (%struct.evrpc_req_generic.0*, i8*)* %2, void (%struct.evrpc_req_generic.0*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %11 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @evrpc_construct_uri(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.evrpc_base*, %struct.evrpc_base** %5, align 8
  %15 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %16 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %15, i32 0, i32 2
  store %struct.evrpc_base* %14, %struct.evrpc_base** %16, align 8
  %17 = load void (%struct.evrpc_req_generic.0*, i8*)*, void (%struct.evrpc_req_generic.0*, i8*)** %7, align 8
  %18 = bitcast void (%struct.evrpc_req_generic.0*, i8*)* %17 to void (%struct.evrpc_req_generic*, i8*)*
  %19 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %20 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %19, i32 0, i32 0
  store void (%struct.evrpc_req_generic*, i8*)* %18, void (%struct.evrpc_req_generic*, i8*)** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %23 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.evrpc_base*, %struct.evrpc_base** %5, align 8
  %25 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %24, i32 0, i32 1
  %26 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %27 = load i32, i32* @next, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.evrpc* %26, i32 %27)
  %29 = load %struct.evrpc_base*, %struct.evrpc_base** %5, align 8
  %30 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @evrpc_request_cb, align 4
  %34 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %35 = call i32 @evhttp_set_cb(i32 %31, i8* %32, i32 %33, %struct.evrpc* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mm_free(i8* %36)
  ret i32 0
}

declare dso_local i8* @evrpc_construct_uri(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evrpc*, i32) #1

declare dso_local i32 @evhttp_set_cb(i32, i8*, i32, %struct.evrpc*) #1

declare dso_local i32 @mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
