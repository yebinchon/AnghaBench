; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_listen_on_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_listen_on_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listenaddr = type { i8*, %struct.addrinfo* }
%struct.addrinfo = type { i64, i32, i32, i32, i32, %struct.addrinfo* }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@num_listen_socks = common dso_local global i64 0, align 8
@MAX_LISTEN_SOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Too many listen sockets. Enlarge MAX_LISTEN_SOCKS\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"getnameinfo failed: %.100s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"socket: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"socket: CLOEXEC: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Bind to port %s on %s.\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Server TCP RWIN socket size: %d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Bind to port %s on %s failed: %.200s.\00", align 1
@listen_socks = common dso_local global i32* null, align 8
@SSH_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"listen on [%s]:%s: %.100s\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Server listening on %s port %s%s%s.\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" rdomain \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.listenaddr*)* @listen_on_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listen_on_addrs(%struct.listenaddr* %0) #0 {
  %2 = alloca %struct.listenaddr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.listenaddr* %0, %struct.listenaddr** %2, align 8
  %11 = load i32, i32* @NI_MAXHOST, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @NI_MAXSERV, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %19 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %18, i32 0, i32 1
  %20 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %5, align 8
  br label %21

21:                                               ; preds = %182, %1
  %22 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %23 = icmp ne %struct.addrinfo* %22, null
  br i1 %23, label %24, label %186

24:                                               ; preds = %21
  %25 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %182

37:                                               ; preds = %30, %24
  %38 = load i64, i64* @num_listen_socks, align 8
  %39 = load i64, i64* @MAX_LISTEN_SOCKS, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = trunc i64 %12 to i32
  %51 = trunc i64 %16 to i32
  %52 = load i32, i32* @NI_NUMERICHOST, align 4
  %53 = load i32, i32* @NI_NUMERICSERV, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @getnameinfo(i32 %46, i32 %49, i8* %14, i32 %50, i8* %17, i32 %51, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @ssh_gai_strerror(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %182

63:                                               ; preds = %43
  %64 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @socket(i64 %66, i32 %69, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 @verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %182

80:                                               ; preds = %63
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @set_nonblock(i32 %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 %85)
  br label %182

87:                                               ; preds = %80
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @F_SETFD, align 4
  %90 = load i32, i32* @FD_CLOEXEC, align 4
  %91 = call i32 @fcntl(i32 %88, i32 %89, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 @verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @close(i32 %97)
  br label %182

99:                                               ; preds = %87
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @set_reuseaddr(i32 %100)
  %102 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %103 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %109 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @set_rdomain(i32 %107, i8* %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @close(i32 %114)
  br label %182

116:                                              ; preds = %106, %99
  %117 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AF_INET6, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @sock_set_v6only(i32 %123)
  br label %125

125:                                              ; preds = %122, %116
  %126 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %17, i8* %14)
  store i32 4, i32* %10, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @SOL_SOCKET, align 4
  %129 = load i32, i32* @SO_RCVBUF, align 4
  %130 = call i32 @getsockopt(i32 %127, i32 %128, i32 %129, i32* %9, i32* %10)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @bind(i32 %133, i32 %136, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %125
  %143 = load i32, i32* @errno, align 4
  %144 = call i32 @strerror(i32 %143)
  %145 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %17, i8* %14, i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @close(i32 %146)
  br label %182

148:                                              ; preds = %125
  %149 = load i32, i32* %4, align 4
  %150 = load i32*, i32** @listen_socks, align 8
  %151 = load i64, i64* @num_listen_socks, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i64, i64* @num_listen_socks, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* @num_listen_socks, align 8
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SSH_LISTEN_BACKLOG, align 4
  %157 = call i64 @listen(i32 %155, i32 %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load i32, i32* @errno, align 4
  %161 = call i32 @strerror(i32 %160)
  %162 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %14, i8* %17, i32 %161)
  br label %163

163:                                              ; preds = %159, %148
  %164 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %165 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp eq i8* %166, null
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  %170 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %171 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %179

175:                                              ; preds = %163
  %176 = load %struct.listenaddr*, %struct.listenaddr** %2, align 8
  %177 = getelementptr inbounds %struct.listenaddr, %struct.listenaddr* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  br label %179

179:                                              ; preds = %175, %174
  %180 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %174 ], [ %178, %175 ]
  %181 = call i32 @logit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %14, i8* %17, i8* %169, i8* %180)
  br label %182

182:                                              ; preds = %179, %142, %113, %93, %84, %76, %57, %36
  %183 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %184 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %183, i32 0, i32 5
  %185 = load %struct.addrinfo*, %struct.addrinfo** %184, align 8
  store %struct.addrinfo* %185, %struct.addrinfo** %5, align 8
  br label %21

186:                                              ; preds = %21
  %187 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %187)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i32 @ssh_gai_strerror(i32) #2

declare dso_local i32 @socket(i64, i32, i32) #2

declare dso_local i32 @verbose(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @set_nonblock(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i32 @set_reuseaddr(i32) #2

declare dso_local i32 @set_rdomain(i32, i8*) #2

declare dso_local i32 @sock_set_v6only(i32) #2

declare dso_local i32 @debug(i8*, ...) #2

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #2

declare dso_local i64 @bind(i32, i32, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @logit(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
