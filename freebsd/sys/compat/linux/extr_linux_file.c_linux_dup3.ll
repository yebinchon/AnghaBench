; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_dup3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_dup3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_dup3_args = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LINUX_O_CLOEXEC = common dso_local global i32 0, align 4
@F_DUP2FD_CLOEXEC = common dso_local global i32 0, align 4
@F_DUP2FD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_dup3(%struct.thread* %0, %struct.linux_dup3_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_dup3_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_dup3_args* %1, %struct.linux_dup3_args** %5, align 8
  %8 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %9 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LINUX_O_CLOEXEC, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LINUX_O_CLOEXEC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @F_DUP2FD_CLOEXEC, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @F_DUP2FD, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load %struct.linux_dup3_args*, %struct.linux_dup3_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_dup3_args, %struct.linux_dup3_args* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @kern_fcntl(%struct.thread* %42, i64 %45, i32 %46, i64 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %25, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @kern_fcntl(%struct.thread*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
