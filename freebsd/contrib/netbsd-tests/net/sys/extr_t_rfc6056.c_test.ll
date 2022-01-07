; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/sys/extr_t_rfc6056.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/sys/extr_t_rfc6056.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@test.hello = internal constant [7 x i8] c"hello\0A\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_PORTALGO = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_PORTALGO = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot get address for %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.addrinfo, align 4
  %15 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = bitcast %struct.addrinfo* %14 to %struct.sockaddr_storage*
  %17 = call i32 @memset(%struct.sockaddr_storage* %16, i32 0, i32 28)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @SOCK_DGRAM, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @IPPROTO_IP, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @IP_PORTALGO, align 4
  store i32 %25, i32* %12, align 4
  br label %31

26:                                               ; preds = %4
  %27 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @IPV6_PORTALGO, align 4
  store i32 %28, i32* %12, align 4
  br label %31

29:                                               ; preds = %4
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %26, %23
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast %struct.addrinfo* %14 to %struct.sockaddr_storage*
  %35 = bitcast %struct.addrinfo** %15 to %struct.sockaddr_storage**
  %36 = call i32 @getaddrinfo(i8* %32, i8* %33, %struct.sockaddr_storage* %34, %struct.sockaddr_storage** %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @gai_strerror(i32 %42)
  %44 = call i32 @errx(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @socket(i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @err(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @setsockopt(i32 %62, i32 %63, i32 %64, i32* %8, i32 4)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @err(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61
  %71 = call i32 @memset(%struct.sockaddr_storage* %13, i32 0, i32 28)
  %72 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 6
  store i32 %74, i32* %75, align 4
  %76 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  %82 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bind(i32 %80, %struct.sockaddr* %81, i32 %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  %88 = call i32 @err(i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %70
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sendto(i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test.hello, i64 0, i64 0), i32 6, i32 0, i32 %93, i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* @EXIT_FAILURE, align 4
  %101 = call i32 @err(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @close(i32 %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @EXIT_FAILURE, align 4
  %108 = call i32 @err(i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @socket(i32 %112, i32 %115, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = load i32, i32* @EXIT_FAILURE, align 4
  %124 = call i32 @err(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %109
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @setsockopt(i32 %126, i32 %127, i32 %128, i32* %8, i32 4)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @EXIT_FAILURE, align 4
  %133 = call i32 @err(i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %140 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @connect(i32 %135, i32 %138, i32 %141)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* @EXIT_FAILURE, align 4
  %146 = call i32 @err(i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %134
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @send(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test.hello, i64 0, i64 0), i32 6, i32 0)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @EXIT_FAILURE, align 4
  %153 = call i32 @err(i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @close(i32 %155)
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  %160 = call i32 @err(i32 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %163 = bitcast %struct.addrinfo* %162 to %struct.sockaddr_storage*
  %164 = call i32 @freeaddrinfo(%struct.sockaddr_storage* %163)
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.sockaddr_storage*, %struct.sockaddr_storage**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_storage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
