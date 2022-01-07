; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_socket_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_socket_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.socket_call = type { %struct.client*, %struct.TYPE_4__, i64 }
%struct.client = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.socket_call* }

@WAITING_CLOSE = common dso_local global i32 0, align 4
@INCLUDE_ERROR_CODE = common dso_local global i32 0, align 4
@HTTP_REPLY = common dso_local global i32 0, align 4
@WAITING_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_5__*)* @socket_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_complete(i64 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.socket_call*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.socket_call*
  store %struct.socket_call* %11, %struct.socket_call** %7, align 8
  %12 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %13 = getelementptr inbounds %struct.socket_call, %struct.socket_call* %12, i32 0, i32 0
  %14 = load %struct.client*, %struct.client** %13, align 8
  store %struct.client* %14, %struct.client** %8, align 8
  %15 = load %struct.client*, %struct.client** %8, align 8
  %16 = icmp eq %struct.client* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %3
  %20 = load %struct.client*, %struct.client** %8, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WAITING_CLOSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @htonl(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.client*, %struct.client** %8, align 8
  %32 = call i32 @output_data(%struct.client* %31, i32* %9, i32 4)
  %33 = load %struct.client*, %struct.client** %8, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INCLUDE_ERROR_CODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @htonl(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.client*, %struct.client** %8, align 8
  %43 = call i32 @output_data(%struct.client* %42, i32* %9, i32 4)
  br label %44

44:                                               ; preds = %39, %26
  %45 = load %struct.client*, %struct.client** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @output_data(%struct.client* %45, i32* %48, i32 %51)
  %53 = load %struct.client*, %struct.client** %8, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HTTP_REPLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %44
  %60 = load i32, i32* @WAITING_CLOSE, align 4
  %61 = load %struct.client*, %struct.client** %8, align 8
  %62 = getelementptr inbounds %struct.client, %struct.client* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @WAITING_READ, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.client*, %struct.client** %8, align 8
  %68 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %59, %44
  br label %72

72:                                               ; preds = %71, %19
  %73 = load %struct.client*, %struct.client** %8, align 8
  %74 = getelementptr inbounds %struct.client, %struct.client* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %78 = getelementptr inbounds %struct.socket_call, %struct.socket_call* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %83 = getelementptr inbounds %struct.socket_call, %struct.socket_call* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @heim_ipc_free_cred(i64 %84)
  br label %86

86:                                               ; preds = %81, %72
  %87 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %88 = getelementptr inbounds %struct.socket_call, %struct.socket_call* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.socket_call*, %struct.socket_call** %89, align 8
  %91 = call i32 @free(%struct.socket_call* %90)
  %92 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %93 = getelementptr inbounds %struct.socket_call, %struct.socket_call* %92, i32 0, i32 0
  store %struct.client* null, %struct.client** %93, align 8
  %94 = load %struct.socket_call*, %struct.socket_call** %7, align 8
  %95 = call i32 @free(%struct.socket_call* %94)
  %96 = load %struct.client*, %struct.client** %8, align 8
  %97 = call i32 @maybe_close(%struct.client* %96)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @output_data(%struct.client*, i32*, i32) #2

declare dso_local i32 @heim_ipc_free_cred(i64) #2

declare dso_local i32 @free(%struct.socket_call*) #2

declare dso_local i32 @maybe_close(%struct.client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
