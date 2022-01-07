; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_process_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_process_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32 }
%struct.module_env = type { i32 }
%struct.auth_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*, i32, i32, %struct.auth_master*)* @xfr_process_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_process_notify(%struct.auth_xfer* %0, %struct.module_env* %1, i32 %2, i32 %3, %struct.auth_master* %4) #0 {
  %6 = alloca %struct.auth_xfer*, align 8
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %6, align 8
  store %struct.module_env* %1, %struct.module_env** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.auth_master* %4, %struct.auth_master** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @xfr_serial_means_update(%struct.auth_xfer* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 0
  %21 = call i32 @lock_basic_unlock(i32* %20)
  br label %36

22:                                               ; preds = %13, %5
  %23 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %24 = load %struct.module_env*, %struct.module_env** %7, align 8
  %25 = load %struct.auth_master*, %struct.auth_master** %10, align 8
  %26 = call i32 @xfr_start_probe(%struct.auth_xfer* %23, %struct.module_env* %24, %struct.auth_master* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @xfr_note_notify_serial(%struct.auth_xfer* %29, i32 %30, i32 %31)
  %33 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %34 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %33, i32 0, i32 0
  %35 = call i32 @lock_basic_unlock(i32* %34)
  br label %36

36:                                               ; preds = %18, %28, %22
  ret void
}

declare dso_local i32 @xfr_serial_means_update(%struct.auth_xfer*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfr_start_probe(%struct.auth_xfer*, %struct.module_env*, %struct.auth_master*) #1

declare dso_local i32 @xfr_note_notify_serial(%struct.auth_xfer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
