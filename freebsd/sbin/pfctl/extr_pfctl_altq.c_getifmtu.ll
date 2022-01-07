; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_getifmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_getifmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"getifmtu: strlcpy\00", align 1
@SIOCGIFMTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SIOCGIFMTU\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not get mtu for %s, assuming 1500\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getifmtu(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @get_query_socket()
  store i32 %6, i32* %4, align 4
  %7 = call i32 @bzero(%struct.ifreq* %5, i32 8)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlcpy(i32 %9, i8* %10, i32 4)
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SIOCGIFMTU, align 4
  %19 = ptrtoint %struct.ifreq* %5 to i32
  %20 = call i32 @ioctl(i32 %17, i32 %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i32 1500, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
