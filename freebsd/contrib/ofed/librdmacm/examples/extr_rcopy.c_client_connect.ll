; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"getaddrinfo failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rsocket failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rconnect failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @dst_addr, align 4
  %6 = load i32, i32* @port, align 4
  %7 = call i32 @getaddrinfo(i32 %5, i32 %6, i32* null, %struct.addrinfo** %2)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @gai_strerror(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %1, align 4
  br label %51

15:                                               ; preds = %0
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rsocket(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %47

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rconnect(i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rclose(i32 %43)
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %30
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %49 = call i32 @freeaddrinfo(%struct.addrinfo* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %10
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @getaddrinfo(i32, i32, i32*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rsocket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rconnect(i32, i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
