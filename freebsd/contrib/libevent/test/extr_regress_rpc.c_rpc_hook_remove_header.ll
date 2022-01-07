; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_hook_remove_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_hook_remove_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"X-Hook\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"X-Pool-Hook\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ran\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@EVRPC_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.evhttp_request*, %struct.evbuffer*, i8*)* @rpc_hook_remove_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_hook_remove_header(i8* %0, %struct.evhttp_request* %1, %struct.evbuffer* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %6, align 8
  store %struct.evbuffer* %2, %struct.evbuffer** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @evhttp_find_header(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strcmp(i8* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %27 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @evhttp_remove_header(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %31 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @evhttp_add_header(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @evrpc_hook_find_meta(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, i64* %11)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, 5
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32* @evrpc_hook_get_connection(i8* %47)
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* @EVRPC_CONTINUE, align 4
  ret i32 %52
}

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @evhttp_remove_header(i32, i8*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i64 @evrpc_hook_find_meta(i8*, i8*, i8**, i64*) #1

declare dso_local i32* @evrpc_hook_get_connection(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
