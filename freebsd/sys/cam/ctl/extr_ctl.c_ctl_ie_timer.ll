; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SIEP_MRIE_UA = common dso_local global i64 0, align 8
@CTL_UA_IE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctl_ie_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ie_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ctl_lun*
  store %struct.ctl_lun* %6, %struct.ctl_lun** %3, align 8
  %7 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SIEP_MRIE_UA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %21 = load i32, i32* @CTL_UA_IE, align 4
  %22 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %20, i32 -1, i32 %21)
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @scsi_4btoul(i32 %33)
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @scsi_4btoul(i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @UINT32_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %36
  store i32 3000, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 2
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @hz, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 10
  %61 = call i32 @callout_schedule(i32* %56, i32 %60)
  br label %62

62:                                               ; preds = %11, %54, %26
  ret void
}

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
