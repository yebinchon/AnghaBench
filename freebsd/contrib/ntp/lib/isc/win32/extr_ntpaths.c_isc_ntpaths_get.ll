; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntpaths.c_isc_ntpaths_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntpaths.c_isc_ntpaths_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Initialized = common dso_local global i32 0, align 4
@ns_confFile = common dso_local global i8* null, align 8
@lwresd_confFile = common dso_local global i8* null, align 8
@lwresd_resolvconfFile = common dso_local global i8* null, align 8
@rndc_confFile = common dso_local global i8* null, align 8
@ns_defaultpidfile = common dso_local global i8* null, align 8
@lwresd_defaultpidfile = common dso_local global i8* null, align 8
@local_state_dir = common dso_local global i8* null, align 8
@sys_conf_dir = common dso_local global i8* null, align 8
@rndc_keyFile = common dso_local global i8* null, align 8
@session_keyFile = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @isc_ntpaths_get(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @Initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @isc_ntpaths_init()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %30 [
    i32 134, label %10
    i32 135, label %12
    i32 132, label %14
    i32 131, label %16
    i32 133, label %18
    i32 136, label %20
    i32 137, label %22
    i32 128, label %24
    i32 130, label %26
    i32 129, label %28
  ]

10:                                               ; preds = %8
  %11 = load i8*, i8** @ns_confFile, align 8
  store i8* %11, i8** %2, align 8
  br label %31

12:                                               ; preds = %8
  %13 = load i8*, i8** @lwresd_confFile, align 8
  store i8* %13, i8** %2, align 8
  br label %31

14:                                               ; preds = %8
  %15 = load i8*, i8** @lwresd_resolvconfFile, align 8
  store i8* %15, i8** %2, align 8
  br label %31

16:                                               ; preds = %8
  %17 = load i8*, i8** @rndc_confFile, align 8
  store i8* %17, i8** %2, align 8
  br label %31

18:                                               ; preds = %8
  %19 = load i8*, i8** @ns_defaultpidfile, align 8
  store i8* %19, i8** %2, align 8
  br label %31

20:                                               ; preds = %8
  %21 = load i8*, i8** @lwresd_defaultpidfile, align 8
  store i8* %21, i8** %2, align 8
  br label %31

22:                                               ; preds = %8
  %23 = load i8*, i8** @local_state_dir, align 8
  store i8* %23, i8** %2, align 8
  br label %31

24:                                               ; preds = %8
  %25 = load i8*, i8** @sys_conf_dir, align 8
  store i8* %25, i8** %2, align 8
  br label %31

26:                                               ; preds = %8
  %27 = load i8*, i8** @rndc_keyFile, align 8
  store i8* %27, i8** %2, align 8
  br label %31

28:                                               ; preds = %8
  %29 = load i8*, i8** @session_keyFile, align 8
  store i8* %29, i8** %2, align 8
  br label %31

30:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @isc_ntpaths_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
