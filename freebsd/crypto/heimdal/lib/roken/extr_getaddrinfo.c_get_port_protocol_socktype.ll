; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_port_protocol_socktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_port_protocol_socktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32 }
%struct.servent = type { i32 }
%struct.protoent = type { i8*, i32 }

@EAI_SOCKTYPE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo*, i32*, i32*, i32*)* @get_port_protocol_socktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_protocol_socktype(i8* %0, %struct.addrinfo* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.servent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.protoent*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %18 = icmp ne %struct.addrinfo* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.protoent* @getprotobynumber(i64 %27)
  store %struct.protoent* %28, %struct.protoent** %14, align 8
  %29 = load %struct.protoent*, %struct.protoent** %14, align 8
  %30 = icmp eq %struct.protoent* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %32, i32* %6, align 4
  br label %144

33:                                               ; preds = %24
  %34 = load %struct.protoent*, %struct.protoent** %14, align 8
  %35 = getelementptr inbounds %struct.protoent, %struct.protoent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %13, align 8
  %37 = load %struct.protoent*, %struct.protoent** %14, align 8
  %38 = getelementptr inbounds %struct.protoent, %struct.protoent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %19, %5
  %42 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %43 = icmp ne %struct.addrinfo* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SOCK_STREAM, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %60 ]
  %63 = call %struct.servent* @getservbyname(i8* %55, i8* %62)
  store %struct.servent* %63, %struct.servent** %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @IPPROTO_TCP, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %124

70:                                               ; preds = %49
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SOCK_DGRAM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i8*, i8** %13, align 8
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i8* [ %80, %79 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %81 ]
  %84 = call %struct.servent* @getservbyname(i8* %76, i8* %83)
  store %struct.servent* %84, %struct.servent** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @IPPROTO_UDP, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %123

91:                                               ; preds = %70
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call %struct.servent* @getservbyname(i8* %99, i8* %100)
  store %struct.servent* %101, %struct.servent** %12, align 8
  br label %119

102:                                              ; preds = %95
  %103 = load i8*, i8** %7, align 8
  %104 = call %struct.servent* @getservbyname(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.servent* %104, %struct.servent** %12, align 8
  %105 = load i32, i32* @IPPROTO_TCP, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @SOCK_STREAM, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.servent*, %struct.servent** %12, align 8
  %110 = icmp eq %struct.servent* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = call %struct.servent* @getservbyname(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %113, %struct.servent** %12, align 8
  %114 = load i32, i32* @IPPROTO_UDP, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @SOCK_DGRAM, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %102
  br label %119

119:                                              ; preds = %118, %98
  br label %122

120:                                              ; preds = %91
  %121 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %121, i32* %6, align 4
  br label %144

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %90
  br label %124

124:                                              ; preds = %123, %69
  %125 = load %struct.servent*, %struct.servent** %12, align 8
  %126 = icmp eq %struct.servent* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @strtol(i8* %128, i8** %15, i32 10)
  %130 = call i32 @htons(i32 %129)
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* @EAI_NONAME, align 4
  store i32 %136, i32* %6, align 4
  br label %144

137:                                              ; preds = %127
  br label %143

138:                                              ; preds = %124
  %139 = load %struct.servent*, %struct.servent** %12, align 8
  %140 = getelementptr inbounds %struct.servent, %struct.servent* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %137
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %135, %120, %31
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.protoent* @getprotobynumber(i64) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
