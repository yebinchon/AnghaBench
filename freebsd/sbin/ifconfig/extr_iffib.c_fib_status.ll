; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iffib.c_fib_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iffib.c_fib_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }

@name = common dso_local global i32 0, align 4
@SIOCGIFFIB = common dso_local global i32 0, align 4
@RT_DEFAULT_FIB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"\09fib: %u\0A\00", align 1
@SIOCGTUNFIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\09tunnelfib: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fib_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %5 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @name, align 4
  %8 = call i32 @strlcpy(i32 %6, i32 %7, i32 4)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SIOCGIFFIB, align 4
  %11 = ptrtoint %struct.ifreq* %3 to i32
  %12 = call i64 @ioctl(i32 %9, i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RT_DEFAULT_FIB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %14, %1
  %24 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @name, align 4
  %28 = call i32 @strlcpy(i32 %26, i32 %27, i32 4)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SIOCGTUNFIB, align 4
  %31 = ptrtoint %struct.ifreq* %3 to i32
  %32 = call i64 @ioctl(i32 %29, i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RT_DEFAULT_FIB, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %39, %34, %23
  ret void
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
