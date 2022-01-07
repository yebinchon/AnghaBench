; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_setup_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_setup_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i64, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"getnameinfo failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Will try to connect to host='%s', address_family=%d, socket_type=%d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"connect failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @setup_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_client(i32 %0, i32 %1, i32 %2) #0 {
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
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.sockaddr*
  %25 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @nitems(i8* %16)
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @NI_NUMERICHOST, align 4
  %31 = call i32 @getnameinfo(%struct.sockaddr* %24, i32 %27, i8* %16, i64 %29, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @gai_strerror(i32 %33)
  %35 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %32, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %38, i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fflush(i32 %43)
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @make_socket(i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.sockaddr*
  %60 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @connect(i32 %55, %struct.sockaddr* %59, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %65 = call i32 @freeaddrinfo(%struct.addrinfo* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %66, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @resolve_localhost(%struct.addrinfo**, i32, i32, i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i64, i32*, i32, i32) #2

declare dso_local i64 @nitems(i8*) #2

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @make_socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
