; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_sync_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s status: %s -> %s\00", align 1
@EVNT_KERN = common dso_local global i32 0, align 4
@STA_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @sync_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_status(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %10, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 1024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18, i8* %19)
  %21 = load i32, i32* @EVNT_KERN, align 4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %23 = call i32 @report_event(i32 %21, i32* null, i8* %22)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @report_event(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
