; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_rename_args = type { i32, i32, i32, i32, i32, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_rename(%struct.thread* %0, %struct.cloudabi_sys_file_rename_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_rename_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_rename_args* %1, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %9 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %13 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @copyin_path(i32 %11, i32 %14, i8** %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %22 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %25 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @copyin_path(i32 %23, i32 %26, i8** %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @cloudabi_freestr(i8* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %20
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %37 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %5, align 8
  %41 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @UIO_SYSSPACE, align 4
  %45 = call i32 @kern_renameat(%struct.thread* %35, i32 %38, i8* %39, i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @cloudabi_freestr(i8* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @cloudabi_freestr(i8* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %30, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @copyin_path(i32, i32, i8**) #1

declare dso_local i32 @cloudabi_freestr(i8*) #1

declare dso_local i32 @kern_renameat(%struct.thread*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
