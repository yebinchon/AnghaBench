; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_tv_fmt_libbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_tv_fmt_libbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.calendar = type { i64, i64, i64, i64, i64, i32 }

@DAY_UNIX_STARTS = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%04hu-%02hu-%02hu/%02hu:%02hu:%02hu.%06u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.timeval*)* @tv_fmt_libbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tv_fmt_libbuf(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.calendar, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %7 = load %struct.timeval*, %struct.timeval** %2, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %9 = call i32 @time_to_vint64(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @ntpcal_daysplit(i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @DAY_UNIX_STARTS, align 4
  %12 = call i32 @ntpcal_daysplit_to_date(%struct.calendar* %6, i32* %5, i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @LIB_GETBUF(i8* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @LIB_BUFLENGTH, align 4
  %17 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.calendar, %struct.calendar* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.timeval*, %struct.timeval** %2, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %37)
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @time_to_vint64(i32*) #1

declare dso_local i32 @ntpcal_daysplit(i32*) #1

declare dso_local i32 @ntpcal_daysplit_to_date(%struct.calendar*, i32*, i32) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
