; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_is_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_is_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.addrinfo = type { i32, i32, i32*, i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_addr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @NI_MAXSERV, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @is_addr_fast(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %55

17:                                               ; preds = %1
  %18 = trunc i64 %10 to i32
  %19 = call i32 (...) @default_ssh_port()
  %20 = call i32 @snprintf(i8* %12, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 24)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @AF_UNSPEC, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @AI_NUMERICHOST, align 4
  %34 = load i32, i32* @AI_NUMERICSERV, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @getaddrinfo(i8* %37, i8* %12, %struct.addrinfo* %6, %struct.addrinfo** %7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %55

41:                                               ; preds = %28
  %42 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %43 = icmp eq %struct.addrinfo* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %41
  %50 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %51 = call i32 @freeaddrinfo(%struct.addrinfo* %50)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %54 = call i32 @freeaddrinfo(%struct.addrinfo* %53)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %49, %40, %16
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_addr_fast(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @default_ssh_port(...) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
