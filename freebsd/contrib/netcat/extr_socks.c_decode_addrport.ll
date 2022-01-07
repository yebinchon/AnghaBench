; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_socks.c_decode_addrport.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_socks.c_decode_addrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i64, i32, i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"getaddrinfo(\22%.64s\22, \22%.64s\22): %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"internal error: addrlen < res->ai_addrlen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.sockaddr*, i64, i32, i32)* @decode_addrport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_addrport(i8* %0, i8* %1, %struct.sockaddr* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = call i32 @bzero(%struct.addrinfo* %15, i32 24)
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @PF_INET, align 4
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @PF_UNSPEC, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @AI_NUMERICHOST, align 4
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @getaddrinfo(i8* %37, i8* %38, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @gai_strerror(i32 %48)
  %50 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  store i32 -1, i32* %7, align 4
  br label %73

52:                                               ; preds = %32
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %60 = call i32 @freeaddrinfo(%struct.addrinfo* %59)
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %64 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(%struct.sockaddr* %63, i32 %66, i64 %69)
  %71 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %72 = call i32 @freeaddrinfo(%struct.addrinfo* %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %62, %51
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
