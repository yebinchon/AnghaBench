; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_libprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_libprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gauge_percent = common dso_local global i32 0, align 4
@DPV_PPROMPT_MAX = common dso_local global i64 0, align 8
@DPV_APROMPT_MAX = common dso_local global i64 0, align 8
@DPV_DISPLAY_LIMIT = common dso_local global i32 0, align 4
@gauge = common dso_local global i32 0, align 4
@title = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dheight = common dso_local global i32 0, align 4
@dwidth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dprompt_libprint(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @gauge_percent, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @DPV_PPROMPT_MAX, align 8
  %12 = load i64, i64* @DPV_APROMPT_MAX, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @DPV_DISPLAY_LIMIT, align 4
  %15 = mul nsw i32 %14, 1024
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @dprompt_sprint(i8* %19, i8* %20, i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 100
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  store i32 %29, i32* @gauge_percent, align 4
  br label %30

30:                                               ; preds = %28, %25, %3
  %31 = load i32, i32* @gauge, align 4
  %32 = load i8*, i8** @title, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** @title, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %34 ], [ %36, %35 ]
  %39 = load i32, i32* @dheight, align 4
  %40 = load i32, i32* @dwidth, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dlg_reallocate_gauge(i32 %31, i8* %38, i8* %19, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* @gauge, align 4
  %43 = load i32, i32* @gauge, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dlg_update_gauge(i32 %43, i32 %44)
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprompt_sprint(i8*, i8*, i8*) #2

declare dso_local i32 @dlg_reallocate_gauge(i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @dlg_update_gauge(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
