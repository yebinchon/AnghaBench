; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_unmappage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_unmappage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_ramdisk_lun = type { i64, i32, i32, i64, i32, i32** }

@PPPS = common dso_local global i32 0, align 4
@P_ANCHORED = common dso_local global i32** null, align 8
@P_UNMAPPED = common dso_local global i32** null, align 8
@M_RAMDISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_ramdisk_lun*, i32)* @ctl_backend_ramdisk_unmappage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_unmappage(%struct.ctl_be_ramdisk_lun* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_be_ramdisk_lun* %0, %struct.ctl_be_ramdisk_lun** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %96

13:                                               ; preds = %2
  %14 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %15 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %14, i32 0, i32 2
  %16 = call i32 @sx_xlock(i32* %15)
  %17 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %17, i32 0, i32 5
  store i32*** %18, i32**** %5, align 8
  %19 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @PPPS, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %48, %13
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i32***, i32**** %5, align 8
  %30 = load i32**, i32*** %29, align 8
  %31 = icmp eq i32** %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %92

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32***, i32**** %5, align 8
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = bitcast i32** %41 to i32***
  store i32*** %42, i32**** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @PPPS, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32***, i32**** %5, align 8
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32**, i32*** @P_ANCHORED, align 8
  %56 = icmp eq i32** %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load i32**, i32*** @P_UNMAPPED, align 8
  %68 = load i32***, i32**** %5, align 8
  store i32** %67, i32*** %68, align 8
  br label %91

69:                                               ; preds = %52
  %70 = load i32***, i32**** %5, align 8
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32**, i32*** @P_UNMAPPED, align 8
  %73 = icmp ne i32** %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i32***, i32**** %5, align 8
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* @M_RAMDISK, align 4
  %78 = call i32 @free(i32** %76, i32 %77)
  %79 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %80 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %83 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i32**, i32*** @P_UNMAPPED, align 8
  %89 = load i32***, i32**** %5, align 8
  store i32** %88, i32*** %89, align 8
  br label %90

90:                                               ; preds = %74, %69
  br label %91

91:                                               ; preds = %90, %57
  br label %92

92:                                               ; preds = %91, %32
  %93 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %3, align 8
  %94 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %93, i32 0, i32 2
  %95 = call i32 @sx_xunlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %12
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
