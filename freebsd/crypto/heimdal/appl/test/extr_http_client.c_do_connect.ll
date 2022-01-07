; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_http_client.c_do_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_http_client.c_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, i32, i32, %struct.addrinfo* }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"getaddrinfo(%s): %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to contact %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @do_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_connect(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %9, align 4
  %10 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 32)
  %11 = load i32, i32* @PF_UNSPEC, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @getaddrinfo(i8* %16, i8* %17, %struct.addrinfo* %7, %struct.addrinfo** %5)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @gai_strerror(i32 %23)
  %25 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %27, %struct.addrinfo** %6, align 8
  br label %28

28:                                               ; preds = %61, %26
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = icmp ne %struct.addrinfo* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @socket(i32 %34, i32 %37, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %61

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @connect(i32 %46, i32 %49, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @close(i32 %58)
  br label %61

60:                                               ; preds = %45
  br label %65

61:                                               ; preds = %55, %44
  %62 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 5
  %64 = load %struct.addrinfo*, %struct.addrinfo** %63, align 8
  store %struct.addrinfo* %64, %struct.addrinfo** %6, align 8
  br label %28

65:                                               ; preds = %60, %28
  %66 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %67 = call i32 @freeaddrinfo(%struct.addrinfo* %66)
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i64) #1

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
