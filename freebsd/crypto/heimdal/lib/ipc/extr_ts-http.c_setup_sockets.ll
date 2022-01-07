; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_ts-http.c_setup_sockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_ts-http.c_setup_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@HEIM_SIPC_TYPE_HTTP = common dso_local global i32 0, align 4
@test_service = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"heim_sipc_stream_listener: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sockets() #0 {
  %1 = alloca %struct.addrinfo, align 8
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @memset(%struct.addrinfo* %1, i32 0, i32 40)
  %8 = load i32, i32* @PF_UNSPEC, align 4
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @AI_PASSIVE, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 6
  store i32 %12, i32* %13, align 8
  %14 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %1, %struct.addrinfo** %3)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @gai_strerror(i32 %18)
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %0
  %22 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %22, %struct.addrinfo** %2, align 8
  br label %23

23:                                               ; preds = %72, %21
  %24 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %25 = icmp ne %struct.addrinfo* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %23
  %27 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @socket(i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %72

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @socket_set_reuseaddr(i32 %42, i32 1)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @socket_set_ipv6only(i32 %44, i32 1)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @bind(i32 %46, i32 %49, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @close(i32 %57)
  br label %72

59:                                               ; preds = %41
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @listen(i32 %60, i32 5)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HEIM_SIPC_TYPE_HTTP, align 4
  %64 = load i32, i32* @test_service, align 4
  %65 = call i32 @heim_sipc_stream_listener(i32 %62, i32 %63, i32 %64, i32* null, i32* %6)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %59
  br label %72

72:                                               ; preds = %71, %55, %39
  %73 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 5
  %75 = load %struct.addrinfo*, %struct.addrinfo** %74, align 8
  store %struct.addrinfo* %75, %struct.addrinfo** %2, align 8
  br label %23

76:                                               ; preds = %23
  %77 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %78 = call i32 @freeaddrinfo(%struct.addrinfo* %77)
  ret void
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @socket_set_reuseaddr(i32, i32) #1

declare dso_local i32 @socket_set_ipv6only(i32, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @heim_sipc_stream_listener(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
