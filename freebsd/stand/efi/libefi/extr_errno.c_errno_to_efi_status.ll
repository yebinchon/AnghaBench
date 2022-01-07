; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_errno.c_errno_to_efi_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_errno.c_errno_to_efi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_ACCESS_DENIED = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@EFI_DEVICE_ERROR = common dso_local global i32 0, align 4
@EFI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@EFI_MEDIA_CHANGED = common dso_local global i32 0, align 4
@EFI_NO_MEDIA = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i32 0, align 4
@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4
@EFI_VOLUME_FULL = common dso_local global i32 0, align 4
@EFI_WRITE_PROTECTED = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errno_to_efi_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %29 [
    i32 129, label %5
    i32 130, label %7
    i32 137, label %9
    i32 138, label %11
    i32 128, label %13
    i32 131, label %15
    i32 135, label %17
    i32 134, label %19
    i32 132, label %21
    i32 136, label %21
    i32 133, label %23
    i32 139, label %25
    i32 0, label %27
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EFI_ACCESS_DENIED, align 4
  store i32 %6, i32* %3, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load i32, i32* @EFI_BUFFER_TOO_SMALL, align 4
  store i32 %8, i32* %3, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @EFI_DEVICE_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @EFI_MEDIA_CHANGED, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @EFI_NO_MEDIA, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @EFI_OUT_OF_RESOURCES, align 4
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @EFI_VOLUME_FULL, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @EFI_WRITE_PROTECTED, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @EFI_DEVICE_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
