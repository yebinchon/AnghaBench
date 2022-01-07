; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_reroot_phase_two.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_reroot_phase_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@RB_REROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RB_REBOOT failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@KENV_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"init_path\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"kern.init_path\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to retrieve kern.init_path: %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot exec init from %s: %s\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"reroot failed; going to single user mode\00", align 1
@single_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reroot_phase_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reroot_phase_two() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @RB_REROOT, align 4
  %13 = call i32 @reboot(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %47

20:                                               ; preds = %0
  %21 = load i32, i32* @KENV_GET, align 4
  %22 = trunc i64 %9 to i32
  %23 = call i32 @kenv(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  store i64 %9, i64* %5, align 8
  %27 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %11, i64* %5, i32* null, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %47

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %20
  store i8* %11, i8** %4, align 8
  br label %36

36:                                               ; preds = %39, %35
  %37 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @execl(i8* %40, i8* %41, i32* null)
  br label %36

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %11, i32 %45)
  br label %47

47:                                               ; preds = %43, %30, %16
  %48 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @single_user, align 4
  %50 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @reboot(i32) #2

declare dso_local i32 @emergency(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @kenv(i32, i8*, i8*, i32) #2

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @execl(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
