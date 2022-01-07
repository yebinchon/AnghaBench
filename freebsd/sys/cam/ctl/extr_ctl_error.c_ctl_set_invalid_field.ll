; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_invalid_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_invalid_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }

@SSD_SCS_VALID = common dso_local global i32 0, align 4
@SSD_FIELDPTR_CMD = common dso_local global i32 0, align 4
@SSD_BITPTR_VALID = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SSD_ELEM_SKS = common dso_local global i32 0, align 4
@SSD_ELEM_SKIP = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_set_invalid_field(%struct.ctl_scsiio* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ctl_scsiio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 36, i32* %14, align 4
  br label %19

18:                                               ; preds = %6
  store i32 38, i32* %14, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i32, i32* @SSD_SCS_VALID, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @SSD_FIELDPTR_CMD, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %35 = call i32 @scsi_ulto2b(i32 %33, i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @SSD_BITPTR_VALID, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %48 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @SSD_ELEM_SKS, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %59 = load i32, i32* @SSD_ELEM_NONE, align 4
  %60 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %47, i32 1, i32 %48, i32 %49, i32 0, i32 %57, i32 12, i32* %58, i32 %59)
  ret void
}

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
