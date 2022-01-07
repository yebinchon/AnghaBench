; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_socksetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_socksetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EAI_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't allocate memory for sockets\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"control socket: %m\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"control setsockopt (SO_REUSEADDR): %m\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"control setsockopt (IPV6_V6ONLY): %m\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"control bind: %m\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"control socket: Couldn't bind to any socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i8*)* @socksetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @socksetup(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %15, align 4
  %16 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 40)
  %17 = load i32, i32* @AI_PASSIVE, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 6
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @getaddrinfo(i8* %23, i8* %24, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %3
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 (i32, i8*, ...) @syslog(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @EAI_SYSTEM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i32, i8*, ...) @syslog(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %28
  store i32* null, i32** %4, align 8
  br label %166

42:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %43 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %43, %struct.addrinfo** %10, align 8
  br label %44

44:                                               ; preds = %48, %42
  %45 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %46 = icmp ne %struct.addrinfo* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 5
  %51 = load %struct.addrinfo*, %struct.addrinfo** %50, align 8
  store %struct.addrinfo* %51, %struct.addrinfo** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %44

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32* @malloc(i32 %59)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %65 = call i32 @freeaddrinfo(%struct.addrinfo* %64)
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = call i32 (i32, i8*, ...) @syslog(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %166

68:                                               ; preds = %54
  %69 = load i32*, i32** %14, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32* %71, i32** %13, align 8
  %72 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %72, %struct.addrinfo** %10, align 8
  br label %73

73:                                               ; preds = %145, %68
  %74 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %75 = icmp ne %struct.addrinfo* %74, null
  br i1 %75, label %76, label %149

76:                                               ; preds = %73
  %77 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @socket(i32 %79, i32 %82, i32 %85)
  %87 = load i32*, i32** %13, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i32, i32* @LOG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @syslog(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %145

94:                                               ; preds = %76
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SOL_SOCKET, align 4
  %98 = load i32, i32* @SO_REUSEADDR, align 4
  %99 = call i64 @setsockopt(i32 %96, i32 %97, i32 %98, i32* %15, i32 4)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @LOG_WARNING, align 4
  %103 = call i32 (i32, i8*, ...) @syslog(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @AF_INET6, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IPPROTO_IPV6, align 4
  %115 = load i32, i32* @IPV6_V6ONLY, align 4
  %116 = call i64 @setsockopt(i32 %113, i32 %114, i32 %115, i32* %15, i32 4)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @LOG_WARNING, align 4
  %120 = call i32 (i32, i8*, ...) @syslog(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @bind(i32 %124, i32 %127, i32 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @LOG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @syslog(i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @close(i32 %137)
  br label %145

139:                                              ; preds = %122
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %13, align 8
  br label %145

145:                                              ; preds = %139, %133, %91
  %146 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %146, i32 0, i32 5
  %148 = load %struct.addrinfo*, %struct.addrinfo** %147, align 8
  store %struct.addrinfo* %148, %struct.addrinfo** %10, align 8
  br label %73

149:                                              ; preds = %73
  %150 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %151 = icmp ne %struct.addrinfo* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %154 = call i32 @freeaddrinfo(%struct.addrinfo* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* @LOG_ERR, align 4
  %161 = call i32 (i32, i8*, ...) @syslog(i32 %160, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @free(i32* %162)
  store i32* null, i32** %4, align 8
  br label %166

164:                                              ; preds = %155
  %165 = load i32*, i32** %14, align 8
  store i32* %165, i32** %4, align 8
  br label %166

166:                                              ; preds = %164, %159, %63, %41
  %167 = load i32*, i32** %4, align 8
  ret i32* %167
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
