; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_auditd_openlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_auditd_openlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_OPT_STDERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"auditd\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"com.apple.auditd\00", align 1
@au_aslclient = common dso_local global i32 0, align 4
@ASL_TYPE_MSG = common dso_local global i32 0, align 4
@au_aslmsg = common dso_local global i32 0, align 4
@ASL_LEVEL_DEBUG = common dso_local global i32 0, align 4
@ASL_LEVEL_INFO = common dso_local global i32 0, align 4
@ASL_KEY_READ_GID = common dso_local global i32 0, align 4
@ASL_KEY_READ_UID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auditd_openlog(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ASL_OPT_STDERR, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @asl_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @au_aslclient, align 4
  %14 = load i32, i32* @ASL_TYPE_MSG, align 4
  %15 = call i32 @asl_new(i32 %14)
  store i32 %15, i32* @au_aslmsg, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @au_aslclient, align 4
  %20 = load i32, i32* @ASL_LEVEL_DEBUG, align 4
  %21 = call i32 @ASL_FILTER_MASK_UPTO(i32 %20)
  %22 = call i32 @asl_set_filter(i32 %19, i32 %21)
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* @au_aslclient, align 4
  %25 = load i32, i32* @ASL_LEVEL_INFO, align 4
  %26 = call i32 @ASL_FILTER_MASK_UPTO(i32 %25)
  %27 = call i32 @asl_set_filter(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @asl_open(i8*, i8*, i32) #1

declare dso_local i32 @asl_new(i32) #1

declare dso_local i32 @asl_set_filter(i32, i32) #1

declare dso_local i32 @ASL_FILTER_MASK_UPTO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
