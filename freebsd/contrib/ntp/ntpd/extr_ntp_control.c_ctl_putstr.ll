; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"=\22\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @ctl_putstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_putstr(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x %struct.TYPE_3__], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 16
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 2, i32* %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 16
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @ctl_putdata_ex(%struct.TYPE_3__* %36, i32 4, i32 %37)
  br label %47

39:                                               ; preds = %17, %3
  %40 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 3, i32* %43, align 8
  %44 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @ctl_putdata_ex(%struct.TYPE_3__* %44, i32 2, i32 %45)
  br label %47

47:                                               ; preds = %39, %20
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ctl_putdata_ex(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
