; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sirix.c_sendip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sirix.c_sendip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_raw = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ether_header = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@SIOCGIFADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ioctl SIOCGIFADDR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"send\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendip(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_raw, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifreq, align 4
  %11 = alloca %struct.ether_header*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ether_header*
  store %struct.ether_header* %13, %struct.ether_header** %11, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @getsockname(i32 %14, %struct.sockaddr_raw* %8, i32* %9)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = call i32 @memset(%struct.ifreq* %10, i32 0, i32 8)
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sockaddr_raw, %struct.sockaddr_raw* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpy(i32 %22, i32 %24, i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SIOCGIFADDR, align 4
  %28 = call i32 @ioctl(i32 %26, i32 %27, %struct.ifreq* %10)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

32:                                               ; preds = %19
  %33 = load %struct.ether_header*, %struct.ether_header** %11, align 8
  %34 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 4)
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @write(i32 %40, i8* %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %30, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @getsockname(i32, %struct.sockaddr_raw*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
