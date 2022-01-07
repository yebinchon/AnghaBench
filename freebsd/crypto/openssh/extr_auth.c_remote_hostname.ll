; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_remote_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_remote_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sockaddr_storage = type { i64, i64, i32, %struct.sockaddr*, %struct.sockaddr_storage*, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i64, i64, i32, %struct.sockaddr*, %struct.addrinfo*, i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"getpeername failed: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Trying to reverse map address %.100s.\00", align 1
@NI_NAMEREQD = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Nasty PTR record \22%s\22 is set up for %s, ignoring\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"reverse mapping checking getaddrinfo for %.700s [%s] failed.\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"Address %.100s maps to %.600s, but this does not map back to the address.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ssh*)* @remote_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @remote_hostname(%struct.ssh* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %14 = load i32, i32* @NI_MAXHOST, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load %struct.ssh*, %struct.ssh** %3, align 8
  %22 = call i8* @ssh_remote_ipaddr(%struct.ssh* %21)
  store i8* %22, i8** %12, align 8
  store i32 48, i32* %5, align 4
  %23 = call i32 @memset(%struct.sockaddr_storage* %4, i32 0, i32 48)
  %24 = load %struct.ssh*, %struct.ssh** %3, align 8
  %25 = call i32 @ssh_packet_get_connection_in(%struct.ssh* %24)
  %26 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %27 = call i64 @getpeername(i32 %25, %struct.sockaddr* %26, i32* %5)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

35:                                               ; preds = %1
  %36 = call i32 @ipv64_normalise_mapped(%struct.sockaddr_storage* %4, i32* %5)
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 4, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @debug3(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %46 = load i32, i32* %5, align 4
  %47 = trunc i64 %15 to i32
  %48 = load i32, i32* @NI_NAMEREQD, align 4
  %49 = call i64 @getnameinfo(%struct.sockaddr* %45, i32 %46, i8* %17, i32 %47, i32* null, i32 0, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strdup(i8* %52)
  store i8* %53, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

54:                                               ; preds = %42
  %55 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_storage*
  %56 = call i32 @memset(%struct.sockaddr_storage* %55, i32 0, i32 48)
  %57 = load i32, i32* @SOCK_DGRAM, align 4
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @AI_NUMERICHOST, align 4
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 6
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_storage*
  %62 = bitcast %struct.addrinfo** %7 to %struct.sockaddr_storage**
  %63 = call i64 @getaddrinfo(i8* %17, i32* null, %struct.sockaddr_storage* %61, %struct.sockaddr_storage** %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @logit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %17, i8* %66)
  %68 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %69 = bitcast %struct.addrinfo* %68 to %struct.sockaddr_storage*
  %70 = call i32 @freeaddrinfo(%struct.sockaddr_storage* %69)
  %71 = load i8*, i8** %12, align 8
  %72 = call i8* @strdup(i8* %71)
  store i8* %72, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

73:                                               ; preds = %54
  %74 = call i32 @lowercase(i8* %17)
  %75 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_storage*
  %76 = call i32 @memset(%struct.sockaddr_storage* %75, i32 0, i32 48)
  %77 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* @SOCK_STREAM, align 4
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 5
  store i32 %80, i32* %81, align 8
  %82 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_storage*
  %83 = bitcast %struct.addrinfo** %8 to %struct.sockaddr_storage**
  %84 = call i64 @getaddrinfo(i8* %17, i32* null, %struct.sockaddr_storage* %82, %struct.sockaddr_storage** %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @logit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %17, i8* %87)
  %89 = load i8*, i8** %12, align 8
  %90 = call i8* @strdup(i8* %89)
  store i8* %90, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

91:                                               ; preds = %73
  %92 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %92, %struct.addrinfo** %7, align 8
  br label %93

93:                                               ; preds = %113, %91
  %94 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %95 = icmp ne %struct.addrinfo* %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 3
  %99 = load %struct.sockaddr*, %struct.sockaddr** %98, align 8
  %100 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = trunc i64 %19 to i32
  %104 = load i32, i32* @NI_NUMERICHOST, align 4
  %105 = call i64 @getnameinfo(%struct.sockaddr* %99, i32 %102, i8* %20, i32 %103, i32* null, i32 0, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load i8*, i8** %12, align 8
  %109 = call i64 @strcmp(i8* %108, i8* %20)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %117

112:                                              ; preds = %107, %96
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 4
  %116 = load %struct.addrinfo*, %struct.addrinfo** %115, align 8
  store %struct.addrinfo* %116, %struct.addrinfo** %7, align 8
  br label %93

117:                                              ; preds = %111, %93
  %118 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %119 = bitcast %struct.addrinfo* %118 to %struct.sockaddr_storage*
  %120 = call i32 @freeaddrinfo(%struct.sockaddr_storage* %119)
  %121 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %122 = icmp eq %struct.addrinfo* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @logit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* %124, i8* %17)
  %126 = load i8*, i8** %12, align 8
  %127 = call i8* @strdup(i8* %126)
  store i8* %127, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

128:                                              ; preds = %117
  %129 = call i8* @strdup(i8* %17)
  store i8* %129, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %130

130:                                              ; preds = %128, %123, %86, %65, %51, %29
  %131 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i8*, i8** %2, align 8
  ret i8* %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ssh_remote_ipaddr(%struct.ssh*) #2

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @ssh_packet_get_connection_in(%struct.ssh*) #2

declare dso_local i32 @debug(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @ipv64_normalise_mapped(%struct.sockaddr_storage*, i32*) #2

declare dso_local i32 @debug3(i8*, i8*) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.sockaddr_storage*, %struct.sockaddr_storage**) #2

declare dso_local i32 @logit(i8*, i8*, i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_storage*) #2

declare dso_local i32 @lowercase(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
