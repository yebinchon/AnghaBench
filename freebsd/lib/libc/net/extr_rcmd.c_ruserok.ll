; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c_ruserok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c_ruserok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i32, i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ruserok(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 24)
  %15 = load i32, i32* @PF_UNSPEC, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SOCK_DGRAM, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @getaddrinfo(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %25, %struct.addrinfo** %12, align 8
  br label %26

26:                                               ; preds = %45, %24
  %27 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %28 = icmp ne %struct.addrinfo* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @iruserok_sa(i32 %32, i32 %35, i32 %36, i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %43 = call i32 @freeaddrinfo(%struct.addrinfo* %42)
  store i32 0, i32* %5, align 4
  br label %52

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load %struct.addrinfo*, %struct.addrinfo** %47, align 8
  store %struct.addrinfo* %48, %struct.addrinfo** %12, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %51 = call i32 @freeaddrinfo(%struct.addrinfo* %50)
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %41, %23
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @iruserok_sa(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
