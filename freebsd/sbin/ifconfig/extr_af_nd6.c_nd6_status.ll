; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_nd6.c_nd6_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_nd6.c_nd6_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.in6_ndireq = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ifr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"socket(AF_INET6, SOCK_DGRAM)\00", align 1
@SIOCGIFINFO_IN6 = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ioctl(SIOCGIFINFO_IN6)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09nd6 options\00", align 1
@ND6BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_ndireq, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @memset(%struct.in6_ndireq* %3, i32 0, i32 8)
  %8 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ifr, i32 0, i32 0), align 4
  %11 = call i32 @strlcpy(i32 %9, i32 %10, i32 4)
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EAFNOSUPPORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EPROTONOSUPPORT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20, %16
  br label %65

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SIOCGIFINFO_IN6, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, %struct.in6_ndireq* %3)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EPFNOSUPPORT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @close(i32 %40)
  br label %65

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @isnd6defif(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @close(i32 %45)
  %47 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %3, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %65

55:                                               ; preds = %51, %42
  %56 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %3, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %59, 15
  %61 = or i32 %58, %60
  %62 = load i32, i32* @ND6BITS, align 4
  %63 = call i32 @printb(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = call i32 @putchar(i8 signext 10)
  br label %65

65:                                               ; preds = %55, %54, %39, %26
  ret void
}

declare dso_local i32 @memset(%struct.in6_ndireq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.in6_ndireq*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @isnd6defif(i32) #1

declare dso_local i32 @printb(i8*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
