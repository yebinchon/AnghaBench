; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoport.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.TYPE_2__*, %struct.addrinfo*, i8*, i32, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in = type { i32 }

@PF_UNSPEC = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i8* null, align 8
@EAI_NONAME = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i8* null, align 8
@PROTO_UNDEF = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_nametoport(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %15 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 40)
  %16 = load i8*, i8** @PF_UNSPEC, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** @IPPROTO_TCP, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @getaddrinfo(i32* null, i8* %22, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @EAI_NONAME, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %152

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %3
  %33 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %33, %struct.addrinfo** %10, align 8
  br label %34

34:                                               ; preds = %61, %32
  %35 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %36 = icmp ne %struct.addrinfo* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = bitcast %struct.TYPE_2__* %53 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %12, align 8
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohs(i32 %57)
  store i32 %58, i32* %13, align 4
  br label %65

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 1
  %64 = load %struct.addrinfo*, %struct.addrinfo** %63, align 8
  store %struct.addrinfo* %64, %struct.addrinfo** %10, align 8
  br label %34

65:                                               ; preds = %50, %34
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = call i32 @freeaddrinfo(%struct.addrinfo* %66)
  br label %68

68:                                               ; preds = %65, %31
  %69 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 40)
  %70 = load i8*, i8** @PF_UNSPEC, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @SOCK_DGRAM, align 4
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** @IPPROTO_UDP, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @getaddrinfo(i32* null, i8* %76, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @EAI_NONAME, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %152

85:                                               ; preds = %80
  br label %122

86:                                               ; preds = %68
  %87 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %87, %struct.addrinfo** %10, align 8
  br label %88

88:                                               ; preds = %115, %86
  %89 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %90 = icmp ne %struct.addrinfo* %89, null
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AF_INET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = bitcast %struct.TYPE_2__* %107 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %108, %struct.sockaddr_in** %12, align 8
  %109 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntohs(i32 %111)
  store i32 %112, i32* %14, align 4
  br label %119

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 1
  %118 = load %struct.addrinfo*, %struct.addrinfo** %117, align 8
  store %struct.addrinfo* %118, %struct.addrinfo** %10, align 8
  br label %88

119:                                              ; preds = %104, %88
  %120 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  br label %122

122:                                              ; preds = %119, %85
  %123 = load i32, i32* %13, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i8*, i8** @IPPROTO_TCP, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @PROTO_UNDEF, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %140, %125
  store i32 1, i32* %4, align 4
  br label %152

142:                                              ; preds = %122
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = load i32*, i32** %6, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i8*, i8** @IPPROTO_UDP, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  store i32 1, i32* %4, align 4
  br label %152

151:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %145, %141, %84, %30
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
