; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_getifspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_getifspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }
%struct.if_data = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"getifspeed: strlcpy\00", align 1
@SIOCGIFDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SIOCGIFDATA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getifspeed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq, align 8
  %5 = alloca %struct.if_data, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @get_query_socket()
  store i32 %6, i32* %3, align 4
  %7 = call i32 @bzero(%struct.ifreq* %4, i32 16)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strlcpy(i32 %9, i8* %10, i32 4)
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = ptrtoint %struct.if_data* %5 to i64
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SIOCGIFDATA, align 4
  %21 = ptrtoint %struct.ifreq* %4 to i64
  %22 = call i32 @ioctl(i32 %19, i32 %20, i64 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = getelementptr inbounds %struct.if_data, %struct.if_data* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
