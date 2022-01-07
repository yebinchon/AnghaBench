; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@ndaasync = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"nda: Failed to attach master async callback due to status 0x%x!\0A\00", align 1
@nda_send_ordered = common dso_local global i64 0, align 8
@power_suspend = common dso_local global i32 0, align 4
@ndasuspend = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ndainit: power event registration failed!\0A\00", align 1
@shutdown_post_sync = common dso_local global i32 0, align 4
@ndashutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ndainit: shutdown event registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ndainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndainit() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %3 = load i32, i32* @ndaasync, align 4
  %4 = call i64 @xpt_register_async(i32 %2, i32 %3, i32* null, i32* null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @CAM_REQ_CMP, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %32

11:                                               ; preds = %0
  %12 = load i64, i64* @nda_send_ordered, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32, i32* @power_suspend, align 4
  %16 = load i32, i32* @ndasuspend, align 4
  %17 = load i32, i32* @EVENTHANDLER_PRI_LAST, align 4
  %18 = call i32* @EVENTHANDLER_REGISTER(i32 %15, i32 %16, i32* null, i32 %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* @shutdown_post_sync, align 4
  %24 = load i32, i32* @ndashutdown, align 4
  %25 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %26 = call i32* @EVENTHANDLER_REGISTER(i32 %23, i32 %24, i32* null, i32 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  br label %31

31:                                               ; preds = %30, %11
  br label %32

32:                                               ; preds = %31, %8
  ret void
}

declare dso_local i64 @xpt_register_async(i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
