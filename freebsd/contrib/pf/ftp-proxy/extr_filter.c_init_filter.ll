; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_init_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_init_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_status = type { i32 }

@qname = common dso_local global i8* null, align 8
@tagname = common dso_local global i8* null, align 8
@PF_LOG = common dso_local global i32 0, align 4
@rule_log = common dso_local global i32 0, align 4
@PF_LOG_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/dev/pf\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"open /dev/pf\00", align 1
@DIOCGETSTATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DIOCGETSTATUS\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pf is disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_filter(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_status, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** @qname, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** @tagname, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @PF_LOG, align 4
  store i32 %13, i32* @rule_log, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @PF_LOG_ALL, align 4
  store i32 %18, i32* @rule_log, align 4
  br label %19

19:                                               ; preds = %17, %14
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* @dev, align 4
  %23 = load i32, i32* @dev, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @dev, align 4
  %29 = load i32, i32* @DIOCGETSTATUS, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, %struct.pf_status* %7)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.pf_status*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
