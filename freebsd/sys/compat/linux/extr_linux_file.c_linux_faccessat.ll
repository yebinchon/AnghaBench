; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_faccessat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_faccessat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_faccessat_args = type { i32, i32, i32 }

@F_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_faccessat(%struct.thread* %0, %struct.linux_faccessat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_faccessat_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_faccessat_args* %1, %struct.linux_faccessat_args** %5, align 8
  %9 = load %struct.linux_faccessat_args*, %struct.linux_faccessat_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_faccessat_args, %struct.linux_faccessat_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @F_OK, align 4
  %13 = load i32, i32* @X_OK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @W_OK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @R_OK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %11, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.linux_faccessat_args*, %struct.linux_faccessat_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_faccessat_args, %struct.linux_faccessat_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @AT_FDCWD, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.linux_faccessat_args*, %struct.linux_faccessat_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_faccessat_args, %struct.linux_faccessat_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  store i32 %37, i32* %8, align 4
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.linux_faccessat_args*, %struct.linux_faccessat_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_faccessat_args, %struct.linux_faccessat_args* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %38, i32 %41, i8** %6, i32 %42)
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @UIO_SYSSPACE, align 4
  %48 = load %struct.linux_faccessat_args*, %struct.linux_faccessat_args** %5, align 8
  %49 = getelementptr inbounds %struct.linux_faccessat_args, %struct.linux_faccessat_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kern_accessat(%struct.thread* %44, i32 %45, i8* %46, i32 %47, i32 0, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @LFREEPATH(i8* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %36, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @kern_accessat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
