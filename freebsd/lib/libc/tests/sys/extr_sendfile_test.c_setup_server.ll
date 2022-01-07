; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_setup_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_setup_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i64, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"getnameinfo failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Will try to bind socket to host='%s', address_family=%d, socket_type=%d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"bind failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"listen failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @setup_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_server(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @NI_MAXHOST, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @resolve_localhost(%struct.addrinfo** %7, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @make_socket(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.sockaddr*
  %35 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @nitems(i8* %16)
  %39 = sub nsw i64 %38, 1
  %40 = load i32, i32* @NI_NUMERICHOST, align 4
  %41 = call i32 @getnameinfo(%struct.sockaddr* %34, i32 %37, i8* %16, i64 %39, i32* null, i32 0, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @gai_strerror(i32 %43)
  %45 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %42, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %48, i32 %51)
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fflush(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bind(i32 %55, i64 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %64 = call i32 @freeaddrinfo(%struct.addrinfo* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %65, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @listen(i32 %69, i32 1)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @strerror(i32 %72)
  %74 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %71, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @resolve_localhost(%struct.addrinfo**, i32, i32, i32) #2

declare dso_local i32 @make_socket(i32, i32, i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i64, i32*, i32, i32) #2

declare dso_local i64 @nitems(i8*) #2

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @bind(i32, i64, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @listen(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
