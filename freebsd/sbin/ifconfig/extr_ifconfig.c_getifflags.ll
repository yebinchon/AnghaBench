; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_getifflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_getifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"socket(family AF_LOCAL,SOCK_DGRAM\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ioctl (SIOCGIFFLAGS)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @getifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getifflags(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 12)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlcpy(i32 %9, i8* %10, i32 4)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @AF_LOCAL, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SIOCGIFFLAGS, align 4
  %27 = ptrtoint %struct.ifreq* %5 to i32
  %28 = call i64 @ioctl(i32 %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 @Perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %42, %45
  ret i32 %46
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @Perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
