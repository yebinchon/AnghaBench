; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c___icheckhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c___icheckhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i64, i32, %struct.sockaddr*, %struct.sockaddr_in*, i32, i32, i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.addrinfo = type { i32, i64, i32, %struct.sockaddr*, %struct.addrinfo*, i32, i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i8*)* @__icheckhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__icheckhost(%struct.sockaddr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32, i32* @NI_MAXHOST, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %3
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %32, %struct.sockaddr_in6** %9, align 8
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  %35 = call i64 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_2__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = call i32 @memset(%struct.sockaddr_in* %8, i32 0, i32 56)
  %39 = load i32, i32* @AF_INET, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 56, i32* %41, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 6
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 12
  %48 = call i32 @memcpy(i32* %42, i32* %47, i32 4)
  %49 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  store %struct.sockaddr* %49, %struct.sockaddr** %5, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %37, %30
  br label %53

53:                                               ; preds = %52, %3
  %54 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %54, align 16
  %55 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = trunc i64 %19 to i32
  %58 = load i32, i32* @NI_NUMERICHOST, align 4
  %59 = call i64 @getnameinfo(%struct.sockaddr* %55, i32 %56, i8* %21, i32 %57, i32* null, i32 0, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %112

62:                                               ; preds = %53
  %63 = bitcast %struct.addrinfo* %10 to %struct.sockaddr_in*
  %64 = call i32 @memset(%struct.sockaddr_in* %63, i32 0, i32 56)
  %65 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @SOCK_DGRAM, align 4
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast %struct.addrinfo* %10 to %struct.sockaddr_in*
  %73 = bitcast %struct.addrinfo** %11 to %struct.sockaddr_in**
  %74 = call i32 @getaddrinfo(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.sockaddr_in* %72, %struct.sockaddr_in** %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %112

78:                                               ; preds = %62
  %79 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %79, %struct.addrinfo** %12, align 8
  br label %80

80:                                               ; preds = %104, %78
  %81 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %82 = icmp ne %struct.addrinfo* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %84, align 16
  %85 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 3
  %87 = load %struct.sockaddr*, %struct.sockaddr** %86, align 8
  %88 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = trunc i64 %23 to i32
  %92 = load i32, i32* @NI_NUMERICHOST, align 4
  %93 = call i64 @getnameinfo(%struct.sockaddr* %87, i32 %90, i8* %24, i32 %91, i32* null, i32 0, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %104

96:                                               ; preds = %83
  %97 = call i64 @strcmp(i8* %21, i8* %24)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %101 = bitcast %struct.addrinfo* %100 to %struct.sockaddr_in*
  %102 = call i32 @freeaddrinfo(%struct.sockaddr_in* %101)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %112

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %95
  %105 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 4
  %107 = load %struct.addrinfo*, %struct.addrinfo** %106, align 8
  store %struct.addrinfo* %107, %struct.addrinfo** %12, align 8
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %110 = bitcast %struct.addrinfo* %109 to %struct.sockaddr_in*
  %111 = call i32 @freeaddrinfo(%struct.sockaddr_in* %110)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %112

112:                                              ; preds = %108, %99, %77, %61
  %113 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_2__*) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.sockaddr_in*, %struct.sockaddr_in**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_in*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
