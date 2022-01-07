; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_nmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_nmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_nmount_args = type { i32, i32, i32 }
%struct.uio = type { i32 }

@MNT_ROOTFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_nmount(%struct.thread* %0, %struct.freebsd32_nmount_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_nmount_args*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_nmount_args* %1, %struct.freebsd32_nmount_args** %5, align 8
  %9 = load %struct.freebsd32_nmount_args*, %struct.freebsd32_nmount_args** %5, align 8
  %10 = getelementptr inbounds %struct.freebsd32_nmount_args, %struct.freebsd32_nmount_args* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @AUDIT_ARG_FFLAGS(i32 %12)
  %14 = load i32, i32* @MNT_ROOTFS, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.freebsd32_nmount_args*, %struct.freebsd32_nmount_args** %5, align 8
  %19 = getelementptr inbounds %struct.freebsd32_nmount_args, %struct.freebsd32_nmount_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.freebsd32_nmount_args*, %struct.freebsd32_nmount_args** %5, align 8
  %25 = getelementptr inbounds %struct.freebsd32_nmount_args, %struct.freebsd32_nmount_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.freebsd32_nmount_args*, %struct.freebsd32_nmount_args** %5, align 8
  %32 = getelementptr inbounds %struct.freebsd32_nmount_args, %struct.freebsd32_nmount_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.freebsd32_nmount_args*, %struct.freebsd32_nmount_args** %5, align 8
  %35 = getelementptr inbounds %struct.freebsd32_nmount_args, %struct.freebsd32_nmount_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @freebsd32_copyinuio(i32 %33, i32 %36, %struct.uio** %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %30
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = call i32 @vfs_donmount(%struct.thread* %43, i32 %44, %struct.uio* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = load i32, i32* @M_IOV, align 4
  %49 = call i32 @free(%struct.uio* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %40, %28
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i32 @freebsd32_copyinuio(i32, i32, %struct.uio**) #1

declare dso_local i32 @vfs_donmount(%struct.thread*, i32, %struct.uio*) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
