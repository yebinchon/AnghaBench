; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_mkdirat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_mkdirat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_mkdirat_args = type { i32, i32, i32 }

@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mkdirat(%struct.thread* %0, %struct.linux_mkdirat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_mkdirat_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_mkdirat_args* %1, %struct.linux_mkdirat_args** %4, align 8
  %8 = load %struct.linux_mkdirat_args*, %struct.linux_mkdirat_args** %4, align 8
  %9 = getelementptr inbounds %struct.linux_mkdirat_args, %struct.linux_mkdirat_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AT_FDCWD, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.linux_mkdirat_args*, %struct.linux_mkdirat_args** %4, align 8
  %17 = getelementptr inbounds %struct.linux_mkdirat_args, %struct.linux_mkdirat_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  store i32 %20, i32* %7, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = load %struct.linux_mkdirat_args*, %struct.linux_mkdirat_args** %4, align 8
  %23 = getelementptr inbounds %struct.linux_mkdirat_args, %struct.linux_mkdirat_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @LCONVPATHCREAT_AT(%struct.thread* %21, i32 %24, i8** %5, i32 %25)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @UIO_SYSSPACE, align 4
  %31 = load %struct.linux_mkdirat_args*, %struct.linux_mkdirat_args** %4, align 8
  %32 = getelementptr inbounds %struct.linux_mkdirat_args, %struct.linux_mkdirat_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kern_mkdirat(%struct.thread* %27, i32 %28, i8* %29, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @LFREEPATH(i8* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @LCONVPATHCREAT_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @kern_mkdirat(%struct.thread*, i32, i8*, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
