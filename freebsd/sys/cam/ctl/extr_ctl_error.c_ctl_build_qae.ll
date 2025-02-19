; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_build_qae.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_build_qae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32**, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@CTL_UA_POWERON = common dso_local global i32 0, align 4
@CTL_UA_NONE = common dso_local global i32 0, align 4
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_build_qae(%struct.ctl_lun* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %17 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %16, i32 0, i32 1
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %25 = urem i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @CTL_UA_POWERON, align 4
  store i32 %34, i32* %8, align 4
  br label %45

35:                                               ; preds = %3
  %36 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %35, %33
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @CTL_UA_NONE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @CTL_UA_NONE, align 4
  store i32 %50, i32* %4, align 4
  br label %84

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ffs(i32 %52)
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 1, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %57 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ctl_ua_to_ascq(%struct.ctl_lun* %57, i32 %58, i32* %12, i32* %13, i32* %10, i32** %11)
  %60 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 16
  store i32 %70, i32* %68, align 4
  br label %76

71:                                               ; preds = %51
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 32
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %49
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ctl_ua_to_ascq(%struct.ctl_lun*, i32, i32*, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
