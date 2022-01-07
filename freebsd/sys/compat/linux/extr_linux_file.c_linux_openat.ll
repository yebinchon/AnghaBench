; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_openat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_openat_args = type { i32, i32, i32, i32 }

@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@LINUX_O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_openat(%struct.thread* %0, %struct.linux_openat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_openat_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_openat_args* %1, %struct.linux_openat_args** %4, align 8
  %7 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %8 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AT_FDCWD, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %16 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i32 [ %13, %12 ], [ %17, %14 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %21 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINUX_O_CREAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %29 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @LCONVPATH_AT(%struct.thread* %27, i32 %30, i8** %5, i32 1, i32 %31)
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %36 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @LCONVPATH_AT(%struct.thread* %34, i32 %37, i8** %5, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %45 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.linux_openat_args*, %struct.linux_openat_args** %4, align 8
  %48 = getelementptr inbounds %struct.linux_openat_args, %struct.linux_openat_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @linux_common_open(%struct.thread* %41, i32 %42, i8* %43, i32 %46, i32 %49)
  ret i32 %50
}

declare dso_local i32 @LCONVPATH_AT(%struct.thread*, i32, i8**, i32, i32) #1

declare dso_local i32 @linux_common_open(%struct.thread*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
