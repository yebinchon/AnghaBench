; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rsocket_address = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"waiting for connection...\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"client: %s\0A\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @server_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.rsocket_address, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @server_listen()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  ret i32 %9

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %11
  store i32 4, i32* %4, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @fflush(i32* null)
  %14 = load i32, i32* %1, align 4
  %15 = bitcast %union.rsocket_address* %3 to i32*
  %16 = call i32 @raccept(i32 %14, i32* %15, i32* %4)
  store i32 %16, i32* %2, align 4
  %17 = call i8* @_ntop(%union.rsocket_address* %3)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @server_process(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SHUT_RDWR, align 4
  %23 = call i32 @rshutdown(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @rclose(i32 %24)
  br label %11
}

declare dso_local i32 @server_listen(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @raccept(i32, i32*, i32*) #1

declare dso_local i8* @_ntop(%union.rsocket_address*) #1

declare dso_local i32 @server_process(i32) #1

declare dso_local i32 @rshutdown(i32, i32) #1

declare dso_local i32 @rclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
