; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_dns-example.c_gai_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_dns-example.c_gai_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i8*, i64, i64, %struct.evutil_addrinfo* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"    %s ==> %s\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"[%d] %s: %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.evutil_addrinfo*, i8*)* @gai_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gai_callback(i32 %0, %struct.evutil_addrinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @evutil_gai_strerror(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %22 = icmp ne %struct.evutil_addrinfo* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %25 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %31 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %28, %23, %20
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %37 = icmp ne %struct.evutil_addrinfo* %36, null
  br i1 %37, label %38, label %79

38:                                               ; preds = %35
  %39 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %40 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PF_INET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %46 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %48, %struct.sockaddr_in** %10, align 8
  %49 = load i32, i32* @AF_INET, align 4
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %53 = call i32 @evutil_inet_ntop(i32 %49, i32* %51, i8* %52, i32 128)
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %55, i8* %56)
  br label %72

58:                                               ; preds = %38
  %59 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %60 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %62, %struct.sockaddr_in6** %11, align 8
  %63 = load i32, i32* @AF_INET6, align 4
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 0
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %67 = call i32 @evutil_inet_ntop(i32 %63, i32* %65, i8* %66, i32 128)
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %58, %44
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %75 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %74, i32 0, i32 3
  %76 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %75, align 8
  store %struct.evutil_addrinfo* %76, %struct.evutil_addrinfo** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %35

79:                                               ; preds = %35
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @evutil_gai_strerror(i32) #1

declare dso_local i32 @evutil_inet_ntop(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
