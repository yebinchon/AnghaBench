; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_dns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { i64, %struct.node_host*, %struct.node_host*, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.addrinfo = type { i64, i64, %struct.addrinfo*, i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"host_dns: strdup\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":0\00", align 1
@PF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"host_dns: calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @host_dns(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.node_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.node_host*, align 8
  %12 = alloca %struct.node_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.node_host* null, %struct.node_host** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %18, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i8*, i8** %18, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %17, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  %33 = load i8*, i8** %17, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 32)
  %36 = load i64, i64* @PF_UNSPEC, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %18, align 8
  %41 = call i32 @getaddrinfo(i8* %40, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i8*, i8** %18, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.node_host*, %struct.node_host** %12, align 8
  store %struct.node_host* %47, %struct.node_host** %4, align 8
  br label %175

48:                                               ; preds = %34
  %49 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %49, %struct.addrinfo** %10, align 8
  br label %50

50:                                               ; preds = %165, %48
  %51 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %52 = icmp ne %struct.addrinfo* %51, null
  br i1 %52, label %53, label %169

53:                                               ; preds = %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF_INET, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AF_INET6, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %165

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_INET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %165

79:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %85

80:                                               ; preds = %69
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %165

84:                                               ; preds = %80
  store i32 1, i32* %16, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %66
  %87 = call %struct.node_host* @calloc(i32 1, i32 40)
  store %struct.node_host* %87, %struct.node_host** %11, align 8
  %88 = load %struct.node_host*, %struct.node_host** %11, align 8
  %89 = icmp eq %struct.node_host* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.node_host*, %struct.node_host** %11, align 8
  %94 = getelementptr inbounds %struct.node_host, %struct.node_host* %93, i32 0, i32 5
  store i32* null, i32** %94, align 8
  %95 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.node_host*, %struct.node_host** %11, align 8
  %99 = getelementptr inbounds %struct.node_host, %struct.node_host* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AF_INET, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %92
  %106 = load %struct.node_host*, %struct.node_host** %11, align 8
  %107 = getelementptr inbounds %struct.node_host, %struct.node_host* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.sockaddr_in*
  %115 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = call i32 @memcpy(i32* %110, i32* %116, i32 4)
  %118 = load %struct.node_host*, %struct.node_host** %11, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @set_ipmask(%struct.node_host* %118, i32 %119)
  br label %145

121:                                              ; preds = %92
  %122 = load %struct.node_host*, %struct.node_host** %11, align 8
  %123 = getelementptr inbounds %struct.node_host, %struct.node_host* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.sockaddr_in6*
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = call i32 @memcpy(i32* %126, i32* %132, i32 4)
  %134 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.sockaddr_in6*
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.node_host*, %struct.node_host** %11, align 8
  %141 = getelementptr inbounds %struct.node_host, %struct.node_host* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.node_host*, %struct.node_host** %11, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @set_ipmask(%struct.node_host* %142, i32 %143)
  br label %145

145:                                              ; preds = %121, %105
  %146 = load %struct.node_host*, %struct.node_host** %11, align 8
  %147 = getelementptr inbounds %struct.node_host, %struct.node_host* %146, i32 0, i32 2
  store %struct.node_host* null, %struct.node_host** %147, align 8
  %148 = load %struct.node_host*, %struct.node_host** %11, align 8
  %149 = load %struct.node_host*, %struct.node_host** %11, align 8
  %150 = getelementptr inbounds %struct.node_host, %struct.node_host* %149, i32 0, i32 1
  store %struct.node_host* %148, %struct.node_host** %150, align 8
  %151 = load %struct.node_host*, %struct.node_host** %12, align 8
  %152 = icmp eq %struct.node_host* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load %struct.node_host*, %struct.node_host** %11, align 8
  store %struct.node_host* %154, %struct.node_host** %12, align 8
  br label %164

155:                                              ; preds = %145
  %156 = load %struct.node_host*, %struct.node_host** %11, align 8
  %157 = load %struct.node_host*, %struct.node_host** %12, align 8
  %158 = getelementptr inbounds %struct.node_host, %struct.node_host* %157, i32 0, i32 1
  %159 = load %struct.node_host*, %struct.node_host** %158, align 8
  %160 = getelementptr inbounds %struct.node_host, %struct.node_host* %159, i32 0, i32 2
  store %struct.node_host* %156, %struct.node_host** %160, align 8
  %161 = load %struct.node_host*, %struct.node_host** %11, align 8
  %162 = load %struct.node_host*, %struct.node_host** %12, align 8
  %163 = getelementptr inbounds %struct.node_host, %struct.node_host* %162, i32 0, i32 1
  store %struct.node_host* %161, %struct.node_host** %163, align 8
  br label %164

164:                                              ; preds = %155, %153
  br label %165

165:                                              ; preds = %164, %83, %78, %65
  %166 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %166, i32 0, i32 2
  %168 = load %struct.addrinfo*, %struct.addrinfo** %167, align 8
  store %struct.addrinfo* %168, %struct.addrinfo** %10, align 8
  br label %50

169:                                              ; preds = %50
  %170 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %171 = call i32 @freeaddrinfo(%struct.addrinfo* %170)
  %172 = load i8*, i8** %18, align 8
  %173 = call i32 @free(i8* %172)
  %174 = load %struct.node_host*, %struct.node_host** %12, align 8
  store %struct.node_host* %174, %struct.node_host** %4, align 8
  br label %175

175:                                              ; preds = %169, %44
  %176 = load %struct.node_host*, %struct.node_host** %4, align 8
  ret %struct.node_host* %176
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.node_host* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
