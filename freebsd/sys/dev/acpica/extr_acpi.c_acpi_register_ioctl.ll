; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_register_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_register_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ioctl_hook = type { i8*, i32, i32 }

@M_ACPIDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi = common dso_local global i32 0, align 4
@acpi_ioctl_hooks_initted = common dso_local global i32 0, align 4
@acpi_ioctl_hooks = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_register_ioctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_ioctl_hook*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @M_ACPIDEV, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = call %struct.acpi_ioctl_hook* @malloc(i32 16, i32 %9, i32 %10)
  store %struct.acpi_ioctl_hook* %11, %struct.acpi_ioctl_hook** %8, align 8
  %12 = icmp eq %struct.acpi_ioctl_hook* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.acpi_ioctl_hook*, %struct.acpi_ioctl_hook** %8, align 8
  %18 = getelementptr inbounds %struct.acpi_ioctl_hook, %struct.acpi_ioctl_hook* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.acpi_ioctl_hook*, %struct.acpi_ioctl_hook** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_ioctl_hook, %struct.acpi_ioctl_hook* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.acpi_ioctl_hook*, %struct.acpi_ioctl_hook** %8, align 8
  %24 = getelementptr inbounds %struct.acpi_ioctl_hook, %struct.acpi_ioctl_hook* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @acpi, align 4
  %26 = call i32 @ACPI_LOCK(i32 %25)
  %27 = load i32, i32* @acpi_ioctl_hooks_initted, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @TAILQ_INIT(i32* @acpi_ioctl_hooks)
  store i32 1, i32* @acpi_ioctl_hooks_initted, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load %struct.acpi_ioctl_hook*, %struct.acpi_ioctl_hook** %8, align 8
  %33 = load i32, i32* @link, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* @acpi_ioctl_hooks, %struct.acpi_ioctl_hook* %32, i32 %33)
  %35 = load i32, i32* @acpi, align 4
  %36 = call i32 @ACPI_UNLOCK(i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.acpi_ioctl_hook* @malloc(i32, i32, i32) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.acpi_ioctl_hook*, i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
