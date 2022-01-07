; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_unlink_args = type { i32, i32, i32, i32 }

@CLOUDABI_UNLINK_REMOVEDIR = common dso_local global i32 0, align 4
@FD_NONE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_unlink(%struct.thread* %0, %struct.cloudabi_sys_file_unlink_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_unlink_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_unlink_args* %1, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %8 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %9 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %12 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @copyin_path(i32 %10, i32 %13, i8** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %21 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CLOUDABI_UNLINK_REMOVEDIR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %29 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @FD_NONE, align 4
  %33 = load i32, i32* @UIO_SYSSPACE, align 4
  %34 = call i32 @kern_frmdirat(%struct.thread* %27, i32 %30, i8* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %19
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %5, align 8
  %38 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @FD_NONE, align 4
  %42 = load i32, i32* @UIO_SYSSPACE, align 4
  %43 = call i32 @kern_funlinkat(%struct.thread* %36, i32 %39, i8* %40, i32 %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %26
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @cloudabi_freestr(i8* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @copyin_path(i32, i32, i8**) #1

declare dso_local i32 @kern_frmdirat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kern_funlinkat(%struct.thread*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cloudabi_freestr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
