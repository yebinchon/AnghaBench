; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tcp4://\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tcp6://\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"tcp://\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"getaddrinfo(%s, %s) failed: %s.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.sockaddr_storage*)* @tcp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_addr(i8* %0, i32 %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.addrinfo, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %18 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

25:                                               ; preds = %3
  %26 = call i32 @bzero(%struct.addrinfo* %11, i32 24)
  %27 = load i32, i32* @AI_ADDRCONFIG, align 4
  %28 = load i32, i32* @AI_NUMERICSERV, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @PF_UNSPEC, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IPPROTO_TCP, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strncasecmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* @PF_INET, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  br label %64

45:                                               ; preds = %25
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strncasecmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 7
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* @PF_INET6, align 4
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @strncasecmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 6
  store i8* %60, i8** %5, align 8
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %40
  store i8* null, i8** %13, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 58)
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @strrchr(i8* %67, i8 signext 58)
  %69 = icmp ne i8* %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 91
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @strrchr(i8* %77, i8 signext 58)
  store i8* %78, i8** %13, align 8
  br label %79

79:                                               ; preds = %76, %70
  br label %83

80:                                               ; preds = %64
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 58)
  store i8* %82, i8** %13, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i8*, i8** %13, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %14, align 4
  br label %96

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 @numfromstr(i8* %90, i32 1, i32 65535, i32* %14)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @errno, align 4
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %86
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @snprintf(i8* %97, i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  store i64 %19, i64* %15, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i64 @strlcpy(i8* %21, i8* %103, i64 %104)
  %106 = load i64, i64* %15, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

110:                                              ; preds = %102
  br label %156

111:                                              ; preds = %96
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 91
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 93
  br i1 %122, label %123, label %140

123:                                              ; preds = %117
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sub nsw i64 %128, 2
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp ugt i64 %131, %19
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

135:                                              ; preds = %123
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i64, i64* %15, align 8
  %139 = call i64 @strlcpy(i8* %21, i8* %137, i64 %138)
  br label %155

140:                                              ; preds = %117, %111
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %15, align 8
  %147 = load i64, i64* %15, align 8
  %148 = icmp ugt i64 %147, %19
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

151:                                              ; preds = %140
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i64 @strlcpy(i8* %21, i8* %152, i64 %153)
  br label %155

155:                                              ; preds = %151, %135
  br label %156

156:                                              ; preds = %155, %110
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %158 = call i32 @getaddrinfo(i8* %21, i8* %157, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @gai_strerror(i32 %163)
  %165 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %21, i8* %162, i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

167:                                              ; preds = %156
  %168 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %169 = icmp eq %struct.addrinfo* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @ENOENT, align 4
  store i32 %171, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

172:                                              ; preds = %167
  %173 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %174 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %178 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(%struct.sockaddr_storage* %173, i32 %176, i32 %179)
  %181 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %182 = call i32 @freeaddrinfo(%struct.addrinfo* %181)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %183

183:                                              ; preds = %172, %170, %161, %149, %133, %108, %93, %24
  %184 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @numfromstr(i8*, i32, i32, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @pjdlog_debug(i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
