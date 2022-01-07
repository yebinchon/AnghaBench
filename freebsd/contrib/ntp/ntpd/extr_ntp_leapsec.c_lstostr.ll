; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_lstostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_lstostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.calendar = type { i32, i32, i32, i32, i32, i32 }

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"9999-12-31T23:59:59Z\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%04d-%02d-%02dT%02d:%02d:%02dZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @lstostr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lstostr(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.calendar, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @LIB_GETBUF(i8* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i64 @ntpcal_ntp64_to_date(%struct.calendar* %4, %struct.TYPE_6__* %13)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @LIB_BUFLENGTH, align 4
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @LIB_BUFLENGTH, align 4
  %23 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.calendar, %struct.calendar* %4, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %20, %16
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i64 @ntpcal_ntp64_to_date(%struct.calendar*, %struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
