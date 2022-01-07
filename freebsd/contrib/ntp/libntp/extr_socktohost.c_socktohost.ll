; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktohost.c_socktohost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktohost.c_socktohost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i32, i32, i32, i32 }

@__const.socktohost.svc = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@NI_DGRAM = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s reversed to %s\0A\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s forward check lookup fail: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@EAI_BADFLAGS = common dso_local global i32 0, align 4
@EAI_NODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socktohost(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %15 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.socktohost.svc, i32 0, i32 0), i64 4, i1 false)
  %16 = call i32 (...) @socket_errno()
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @LIB_GETBUF(i8* %17)
  %19 = load i32, i32* @NI_DGRAM, align 4
  %20 = load i32, i32* @NI_NAMEREQD, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i32 @SOCKLEN(%struct.TYPE_10__* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @LIB_BUFLENGTH, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @getnameinfo(i32* %23, i32 %25, i8* %26, i32 %27, i32* null, i32 0, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* @errno, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i8* @stoa(%struct.TYPE_10__* %33)
  store i8* %34, i8** %2, align 8
  br label %120

35:                                               ; preds = %1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i8* @stoa(%struct.TYPE_10__* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @TRACE(i32 1, i8* %38)
  %40 = call i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8 %8)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @AF(%struct.TYPE_10__* %41)
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IPPROTO_UDP, align 4
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @SOCK_DGRAM, align 4
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 0, i32* %48, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %51 = call i32 @getaddrinfo(i8* %49, i8* %50, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @EAI_NONAME, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %35
  %56 = load i32, i32* @AI_CANONNAME, align 4
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %60 = call i32 @getaddrinfo(i8* %58, i8* %59, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %35
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %103

65:                                               ; preds = %61
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = icmp ne %struct.addrinfo* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @INSIST(i32 %68)
  %70 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %70, %struct.addrinfo** %10, align 8
  br label %71

71:                                               ; preds = %90, %65
  %72 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %73 = icmp ne %struct.addrinfo* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = call i32 @ZERO_SOCK(%struct.TYPE_10__* %11)
  %76 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @min(i32 4, i32 %78)
  store i64 %79, i64* %12, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @memcpy(%struct.TYPE_10__* %11, i32 %82, i64 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = call i64 @SOCK_EQ(%struct.TYPE_10__* %85, %struct.TYPE_10__* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %94

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 2
  %93 = load %struct.addrinfo*, %struct.addrinfo** %92, align 8
  store %struct.addrinfo* %93, %struct.addrinfo** %10, align 8
  br label %71

94:                                               ; preds = %88, %71
  %95 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %96 = call i32 @freeaddrinfo(%struct.addrinfo* %95)
  %97 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %98 = icmp ne %struct.addrinfo* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* @errno, align 4
  %101 = load i8*, i8** %5, align 8
  store i8* %101, i8** %2, align 8
  br label %120

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %64
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @gai_strerror(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @TRACE(i32 1, i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @LIB_GETBUF(i8* %110)
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* @LIB_BUFLENGTH, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = call i8* @stoa(%struct.TYPE_10__* %114)
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @snprintf(i8* %112, i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* @errno, align 4
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %2, align 8
  br label %120

120:                                              ; preds = %103, %99, %31
  %121 = load i8*, i8** %2, align 8
  ret i8* %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket_errno(...) #2

declare dso_local i32 @LIB_GETBUF(i8*) #2

declare dso_local i64 @getnameinfo(i32*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @SOCKLEN(%struct.TYPE_10__*) #2

declare dso_local i8* @stoa(%struct.TYPE_10__*) #2

declare dso_local i32 @TRACE(i32, i8*) #2

declare dso_local i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8) #2

declare dso_local i32 @AF(%struct.TYPE_10__*) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @INSIST(i32) #2

declare dso_local i32 @ZERO_SOCK(%struct.TYPE_10__*) #2

declare dso_local i64 @min(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32, i64) #2

declare dso_local i64 @SOCK_EQ(%struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
