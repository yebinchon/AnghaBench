; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ucm_get_dev_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ucm_get_dev_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IBV_SYSFS_NAME_MAX = common dso_local global i32 0, align 4
@IB_UCM_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"/sys/class/infiniband_cm/ucm%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ibdev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ucm_get_dev_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucm_get_dev_index(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @IBV_SYSFS_NAME_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = trunc i64 %11 to i32
  %27 = call i32 @ibv_read_sysfs_file(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %46

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %35, %23
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @ibv_read_sysfs_file(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
