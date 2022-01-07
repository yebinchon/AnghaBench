; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_open_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to contact %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @open_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_socket(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 32)
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @IPPROTO_TCP, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @getaddrinfo(i8* %18, i8* %19, %struct.addrinfo* %10, %struct.addrinfo** %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @gai_strerror(i32 %25)
  %27 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  store i32 -1, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %29, %struct.addrinfo** %9, align 8
  br label %30

30:                                               ; preds = %66, %28
  %31 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %32 = icmp ne %struct.addrinfo* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @socket(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %66

47:                                               ; preds = %33
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @connect(i32 %48, i32 %51, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @close(i32 %60)
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %64 = call i32 @freeaddrinfo(%struct.addrinfo* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %75

66:                                               ; preds = %57, %46
  %67 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 5
  %69 = load %struct.addrinfo*, %struct.addrinfo** %68, align 8
  store %struct.addrinfo* %69, %struct.addrinfo** %9, align 8
  br label %30

70:                                               ; preds = %30
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %74 = call i32 @freeaddrinfo(%struct.addrinfo* %73)
  store i32 -1, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %62, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
