; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_make_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_make_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"node %s:%s getaddrinfo: %s %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"bind: address already in use\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.addrinfo*, i32, i32*, i64, i64, i32*, i32, i32, i32, i32)* @make_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_sock(i32 %0, i8* %1, i8* %2, %struct.addrinfo* %3, i32 %4, i32* %5, i64 %6, i64 %7, i32* %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.addrinfo*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32* %5, i32** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %28, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %20, align 8
  store i32 0, i32* %36, align 4
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %40 = call i32 @getaddrinfo(i8* %37, i8* %38, %struct.addrinfo* %39, %struct.addrinfo** %28)
  store i32 %40, i32* %29, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %13
  %43 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42, %13
  %46 = load i8*, i8** %16, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** %16, align 8
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = load i8*, i8** %17, align 8
  %54 = load i32, i32* %29, align 4
  %55 = call i32 @gai_strerror(i32 %54)
  %56 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53, i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %137

57:                                               ; preds = %42
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @SOCK_DGRAM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %110

61:                                               ; preds = %57
  %62 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %63 = call i32 @verbose_print_addr(%struct.addrinfo* %62)
  %64 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.sockaddr*
  %74 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i64, i64* %21, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %22, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %23, align 8
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %27, align 4
  %86 = call i32 @create_udp_sock(i64 %66, i32 %69, %struct.sockaddr* %73, i32 %76, i32 %77, i32* %31, i32* %32, i32 %79, i32 %81, i32 1, i32* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %30, align 4
  %87 = load i32, i32* %30, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %61
  %90 = load i32, i32* %31, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %109

94:                                               ; preds = %89, %61
  %95 = load i32, i32* %30, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %32, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET6, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32*, i32** %20, align 8
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %106, %100, %97, %94
  br label %109

109:                                              ; preds = %108, %92
  br label %133

110:                                              ; preds = %57
  %111 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i32*, i32** %23, align 8
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load i32, i32* %27, align 4
  %118 = call i32 @create_tcp_accept_sock(%struct.addrinfo* %111, i32 %112, i32* %32, i32* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %30, align 4
  %119 = load i32, i32* %30, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %132

121:                                              ; preds = %110
  %122 = load i32, i32* %32, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AF_INET6, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32*, i32** %20, align 8
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %124, %121, %110
  br label %133

133:                                              ; preds = %132, %109
  %134 = load %struct.addrinfo*, %struct.addrinfo** %28, align 8
  %135 = call i32 @freeaddrinfo(%struct.addrinfo* %134)
  %136 = load i32, i32* %30, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %133, %51
  %138 = load i32, i32* %14, align 4
  ret i32 %138
}

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @verbose_print_addr(%struct.addrinfo*) #1

declare dso_local i32 @create_udp_sock(i64, i32, %struct.sockaddr*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @create_tcp_accept_sock(%struct.addrinfo*, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
