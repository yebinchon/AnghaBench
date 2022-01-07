; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_default_page_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_default_page_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_page_index = type { i32, i32, i32, i32* }
%struct.ctl_lun = type { i32 }

@CTL_PAGE_CURRENT = common dso_local global i32 0, align 4
@CTL_UA_MODE_CHANGE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_default_page_handler(%struct.ctl_scsiio* %0, %struct.ctl_page_index* %1, i32* %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_page_index*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.ctl_page_index* %1, %struct.ctl_page_index** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %12 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %11)
  store %struct.ctl_lun* %12, %struct.ctl_lun** %7, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @ctl_get_initindex(i32* %15)
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %21 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CTL_PAGE_CURRENT, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %28 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %33 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @memcmp(i32* %30, i32* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %41 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(i32* %38, i32* %39, i32 %42)
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %3
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @CTL_UA_MODE_CHANGE, align 4
  %51 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %54 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @ctl_get_initindex(i32* %62)
  %64 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %65 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %68 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ctl_isc_announce_mode(%struct.ctl_lun* %59, i32 %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %58, %52
  %72 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %72
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_isc_announce_mode(%struct.ctl_lun*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
