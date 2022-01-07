; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_getsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_getsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.addrinfo = type { %struct.sockaddr*, i32, i32, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't resolve %s:%s (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"allow v4 mapped\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"join group\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32 (i32, %struct.sockaddr*, i32)*, i32*, i32)* @getsocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsocket(i8* %0, i8* %1, i32 (i32, %struct.sockaddr*, i32)* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32, %struct.sockaddr*, i32)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i32, %struct.sockaddr*, i32)* %2, i32 (i32, %struct.sockaddr*, i32)** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 32)
  %19 = load i32, i32* @AF_UNSPEC, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @getaddrinfo(i8* %23, i8* %24, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @gai_strerror(i32 %32)
  %34 = call i32 (i32, i8*, i8*, i8*, ...) @ERRX(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %5
  store i32 -1, i32* %12, align 4
  %36 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %16, align 8
  br label %37

37:                                               ; preds = %99, %35
  %38 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %103

40:                                               ; preds = %37
  %41 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @socket(i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %13, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %99

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %58 = call i32 @allowv4mapped(i32 %56, %struct.addrinfo* %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %95

61:                                               ; preds = %55
  %62 = load i32 (i32, %struct.sockaddr*, i32)*, i32 (i32, %struct.sockaddr*, i32)** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load %struct.sockaddr*, %struct.sockaddr** %65, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %62(i32 %63, %struct.sockaddr* %66, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32 (i32, %struct.sockaddr*, i32)*, i32 (i32, %struct.sockaddr*, i32)** %8, align 8
  %74 = icmp eq i32 (i32, %struct.sockaddr*, i32)* %73, @bind
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  store i8* %76, i8** %17, align 8
  br label %95

77:                                               ; preds = %61
  %78 = load i32 (i32, %struct.sockaddr*, i32)*, i32 (i32, %struct.sockaddr*, i32)** %8, align 8
  %79 = icmp eq i32 (i32, %struct.sockaddr*, i32)* %78, @bind
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32 (i32, %struct.sockaddr*, i32)*, i32 (i32, %struct.sockaddr*, i32)** %8, align 8
  %82 = icmp eq i32 (i32, %struct.sockaddr*, i32)* %81, @connector
  br i1 %82, label %83, label %90

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @addmc(i32 %84, %struct.addrinfo* %85, i32 %86)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %95

90:                                               ; preds = %83, %80
  %91 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  br label %103

95:                                               ; preds = %89, %72, %60
  %96 = load i32, i32* @errno, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @close(i32 %97)
  store i32 -1, i32* %12, align 4
  br label %99

99:                                               ; preds = %95, %53
  %100 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 5
  %102 = load %struct.addrinfo*, %struct.addrinfo** %101, align 8
  store %struct.addrinfo* %102, %struct.addrinfo** %16, align 8
  br label %37

103:                                              ; preds = %90, %37
  %104 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %105 = call i32 @freeaddrinfo(%struct.addrinfo* %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = load i8*, i8** %17, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @strerror(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 (i32, i8*, i8*, i8*, ...) @ERRX(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %110, i8* %114)
  br label %116

116:                                              ; preds = %108, %103
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ERRX(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @allowv4mapped(i32, %struct.addrinfo*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @connector(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @addmc(i32, %struct.addrinfo*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
