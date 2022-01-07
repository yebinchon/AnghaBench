; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_init_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_init_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_status = type { i32 }

@qname = common dso_local global i8* null, align 8
@PF_LOG = common dso_local global i32 0, align 4
@rule_log = common dso_local global i32 0, align 4
@PF_LOG_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/dev/pf\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't open /dev/pf\00", align 1
@DIOCGETSTATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DIOCGETSTATUS\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pf is disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_filter(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_status, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** @qname, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @PF_LOG, align 4
  store i32 %10, i32* @rule_log, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @PF_LOG_ALL, align 4
  store i32 %15, i32* @rule_log, align 4
  br label %16

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* @dev, align 4
  %20 = load i32, i32* @dev, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = call i32 @syslog(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %17
  %27 = load i32, i32* @dev, align 4
  %28 = load i32, i32* @DIOCGETSTATUS, align 4
  %29 = call i32 @ioctl(i32 %27, i32 %28, %struct.pf_status* %5)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = call i32 @syslog(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = call i32 @syslog(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %35
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.pf_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
