; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sockraw.c_initdevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sockraw.c_initdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.ifreq = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"socket(AF_INET, SOCK_RAW, IPPROTO_RAW)\00", align 1
@SIOCGIFADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ioctl SIOCGIFADDR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initdevice(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr, align 4
  %7 = alloca %struct.ifreq, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncpy(i32 %11, i8* %12, i32 4)
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_RAW, align 4
  %16 = load i32, i32* @IPPROTO_RAW, align 4
  %17 = call i32 @socket(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SIOCGIFADDR, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.ifreq* %7)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

28:                                               ; preds = %21
  %29 = bitcast %struct.sockaddr* %6 to i8*
  %30 = call i32 @bzero(i8* %29, i32 8)
  %31 = load i32, i32* @AF_INET, align 4
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bcopy(i32* %33, i32 %35, i32 4)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bind(i32 %37, %struct.sockaddr* %6, i32 8)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %26, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
