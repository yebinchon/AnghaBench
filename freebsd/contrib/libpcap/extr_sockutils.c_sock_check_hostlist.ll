; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_check_hostlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_check_hostlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { %struct.addrinfo*, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"sock_check_hostlist(), malloc() failed\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"getaddrinfo() %s\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"The host is not in the allowed host list. Connection refused.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_check_hostlist(i8* %0, i8* %1, %struct.sockaddr_storage* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.addrinfo, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %110

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %110

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @sock_geterror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  store i32 -2, i32* %6, align 4
  br label %111

36:                                               ; preds = %27
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @pcap_strtok_r(i8* %37, i8* %38, i8** %16)
  store i8* %39, i8** %12, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  br label %40

40:                                               ; preds = %89, %62, %36
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  %44 = call i32 @memset(%struct.addrinfo* %17, i32 0, i32 24)
  %45 = load i32, i32* @PF_UNSPEC, align 4
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @getaddrinfo(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %17, %struct.addrinfo** %13)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @gai_strerror(i32 %59)
  %61 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @SOCK_DEBUG_MESSAGE(i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @pcap_strtok_r(i8* null, i8* %65, i8** %16)
  store i8* %66, i8** %12, align 8
  br label %40

67:                                               ; preds = %43
  %68 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %68, %struct.addrinfo** %14, align 8
  br label %69

69:                                               ; preds = %85, %67
  %70 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %71 = icmp ne %struct.addrinfo* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %74 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.sockaddr_storage*
  %78 = call i64 @sock_cmpaddr(%struct.sockaddr_storage* %73, %struct.sockaddr_storage* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %84 = call i32 @freeaddrinfo(%struct.addrinfo* %83)
  store i32 0, i32* %6, align 4
  br label %111

85:                                               ; preds = %72
  %86 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 0
  %88 = load %struct.addrinfo*, %struct.addrinfo** %87, align 8
  store %struct.addrinfo* %88, %struct.addrinfo** %14, align 8
  br label %69

89:                                               ; preds = %69
  %90 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %91 = call i32 @freeaddrinfo(%struct.addrinfo* %90)
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @pcap_strtok_r(i8* null, i8* %92, i8** %16)
  store i8* %93, i8** %12, align 8
  br label %40

94:                                               ; preds = %40
  %95 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %96 = icmp ne %struct.addrinfo* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %99 = call i32 @freeaddrinfo(%struct.addrinfo* %98)
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @free(i8* %108)
  store i32 -1, i32* %6, align 4
  br label %111

110:                                              ; preds = %21, %5
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %107, %80, %32
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sock_geterror(i8*, i8*, i32) #1

declare dso_local i8* @pcap_strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @SOCK_DEBUG_MESSAGE(i8*) #1

declare dso_local i64 @sock_cmpaddr(%struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
