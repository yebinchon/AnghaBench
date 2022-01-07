; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_ssbd_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_ssbd_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kern.cfg.ssbd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force-on\00", align 1
@ssbd_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"force-off\00", align 1
@SMCCC_ARCH_WORKAROUND_2 = common dso_local global i32 0, align 4
@SMCCC_RET_SUCCESS = common dso_local global i64 0, align 8
@ssbd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_ssbd_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_ssbd_workaround() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @cpuid, align 4
  %3 = call i64 @PCPU_GET(i32 %2)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  %6 = call i8* @kern_getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 129, i32* @ssbd_method, align 4
  br label %20

14:                                               ; preds = %9
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 130, i32* @ssbd_method, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %19, %13
  br label %21

21:                                               ; preds = %20, %5
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i32, i32* @SMCCC_ARCH_WORKAROUND_2, align 4
  %24 = call i64 @smccc_arch_features(i32 %23)
  %25 = load i64, i64* @SMCCC_RET_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %38

28:                                               ; preds = %22
  %29 = load i32, i32* @ssbd_method, align 4
  switch i32 %29, label %35 [
    i32 129, label %30
    i32 130, label %32
    i32 128, label %34
  ]

30:                                               ; preds = %28
  %31 = call i32 @smccc_arch_workaround_2(i32 1)
  br label %38

32:                                               ; preds = %28
  %33 = call i32 @smccc_arch_workaround_2(i32 0)
  br label %38

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %28, %34
  %36 = load i32, i32* @ssbd, align 4
  %37 = call i32 @PCPU_SET(i32 %36, i32 (i32)* @smccc_arch_workaround_2)
  br label %38

38:                                               ; preds = %27, %35, %32, %30
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @smccc_arch_features(i32) #1

declare dso_local i32 @smccc_arch_workaround_2(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32 (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
