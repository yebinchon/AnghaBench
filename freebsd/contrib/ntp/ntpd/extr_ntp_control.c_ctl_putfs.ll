; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@JAN_1970 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%04d%02d%02d%02d%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ctl_putfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_putfs(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @JAN_1970, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = call %struct.tm* @gmtime(i64* %7)
  store %struct.tm* %12, %struct.tm** %8, align 8
  %13 = load %struct.tm*, %struct.tm** %8, align 8
  %14 = icmp eq %struct.tm* null, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %18 = load %struct.tm*, %struct.tm** %8, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1900
  %22 = load %struct.tm*, %struct.tm** %8, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.tm*, %struct.tm** %8, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tm*, %struct.tm** %8, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tm*, %struct.tm** %8, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i8* %17, i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 16
  br label %42

42:                                               ; preds = %38, %16
  %43 = phi i1 [ false, %16 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @INSIST(i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ctl_putunqstr(i8* %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %15
  ret void
}

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
