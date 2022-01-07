; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, i32 }

@RAI_PASSIVE = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"getaddrinfo failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rsocket failed\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"rsetsockopt failed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rbind failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"rlisten failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @server_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_listen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.addrinfo, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @memset(%struct.addrinfo* %2, i32 0, i32 24)
  %7 = load i32, i32* @RAI_PASSIVE, align 4
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i32 0, i32 5
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @port, align 4
  %10 = call i32 @getaddrinfo(i32* null, i32 %9, %struct.addrinfo* %2, %struct.addrinfo** %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @gai_strerror(i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %1, align 4
  br label %72

18:                                               ; preds = %0
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rsocket(i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SOL_SOCKET, align 4
  %37 = load i32, i32* @SO_REUSEADDR, align 4
  %38 = call i32 @rsetsockopt(i32 %35, i32 %36, i32 %37, i32* %4, i32 4)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %65

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rbind(i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %65

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @rlisten(i32 %57, i32 1)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %61, %54, %41
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @rclose(i32 %66)
  br label %68

68:                                               ; preds = %65, %63, %31
  %69 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %70 = call i32 @freeaddrinfo(%struct.addrinfo* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %68, %13
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rsocket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rsetsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rbind(i32, i32, i32) #1

declare dso_local i32 @rlisten(i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
