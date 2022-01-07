; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i64, i32 }
%struct.addrinfo = type { i32, i32, i64 }

@sin6tab = common dso_local global %struct.sockaddr_in6** null, align 8
@newaddr = common dso_local global i32 0, align 4
@MASK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ADDR = common dso_local global i32 0, align 4
@explicit_prefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: bad value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @in6_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_getaddr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sockaddr_in6**, %struct.sockaddr_in6*** @sin6tab, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, i64 %12
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  store %struct.sockaddr_in6* %14, %struct.sockaddr_in6** %5, align 8
  store i32 -1, i32* %8, align 4
  %15 = load i32, i32* @newaddr, align 4
  %16 = and i32 %15, 1
  store i32 %16, i32* @newaddr, align 4
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  store i32 24, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MASK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ADDR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  store i8* null, i8** %9, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 47)
  store i8* %32, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i32, i32* @MASK, align 4
  %39 = call i32 @in6_getprefix(i8* %37, i32 %38)
  store i32 1, i32* @explicit_prefix, align 4
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = call i32 @bzero(%struct.addrinfo* %6, i32 16)
  %49 = load i64, i64* @AF_INET6, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @getaddrinfo(i8* %51, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load i64, i64* @AF_INET6, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 2
  %60 = call i32 @inet_pton(i64 %56, i8* %57, i32* %59)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %55
  br label %77

66:                                               ; preds = %47
  %67 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %71 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bcopy(i32 %69, %struct.sockaddr_in6* %70, i32 %73)
  %75 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %76 = call i32 @freeaddrinfo(%struct.addrinfo* %75)
  br label %77

77:                                               ; preds = %66, %65
  br label %78

78:                                               ; preds = %77, %41
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @in6_getprefix(i8*, i32) #1

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @inet_pton(i64, i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @bcopy(i32, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
