; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_hook_add_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_rpc.c_rpc_hook_add_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@EVRPC_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.evhttp_request*, %struct.evbuffer*, i8*)* @rpc_hook_add_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_hook_add_meta(i8* %0, %struct.evhttp_request* %1, %struct.evbuffer* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %6, align 8
  store %struct.evbuffer* %2, %struct.evbuffer** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @evrpc_hook_add_meta(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @evrpc_hook_get_connection(i8* %11)
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @EVRPC_CONTINUE, align 4
  ret i32 %16
}

declare dso_local i32 @evrpc_hook_add_meta(i8*, i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @evrpc_hook_get_connection(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
