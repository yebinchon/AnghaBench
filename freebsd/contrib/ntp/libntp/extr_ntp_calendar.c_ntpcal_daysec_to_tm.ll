; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_daysec_to_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_daysec_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntpcal_daysec_to_tm(%struct.tm* %0, i8* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @priv_timesplit(i8** %7, i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %11 = load i8*, i8** %10, align 16
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %19 = load i8*, i8** %18, align 16
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  ret i8* %22
}

declare dso_local i8* @priv_timesplit(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
