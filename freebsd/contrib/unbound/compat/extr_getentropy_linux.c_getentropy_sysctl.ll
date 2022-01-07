; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sysctl_args = type { i32*, i32, i8*, i64* }

@getentropy_sysctl.mib = internal global [3 x i32] [i32 130, i32 129, i32 128], align 4
@errno = common dso_local global i32 0, align 4
@SYS__sysctl = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @getentropy_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getentropy_sysctl(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.__sysctl_args, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %16, %17
  %19 = call i64 @min(i64 %18, i32 16)
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds %struct.__sysctl_args, %struct.__sysctl_args* %9, i32 0, i32 0
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @getentropy_sysctl.mib, i64 0, i64 0), i32** %20, align 8
  %21 = getelementptr inbounds %struct.__sysctl_args, %struct.__sysctl_args* %9, i32 0, i32 1
  store i32 3, i32* %21, align 8
  %22 = getelementptr inbounds %struct.__sysctl_args, %struct.__sysctl_args* %9, i32 0, i32 2
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %22, align 8
  %26 = getelementptr inbounds %struct.__sysctl_args, %struct.__sysctl_args* %9, i32 0, i32 3
  store i64* %8, i64** %26, align 8
  %27 = load i32, i32* @SYS__sysctl, align 4
  %28 = call i64 @syscall(i32 %27, %struct.__sysctl_args* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %43

31:                                               ; preds = %15
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @gotdata(i8* %36, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* @EIO, align 4
  store i32 %44, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @syscall(i32, %struct.__sysctl_args*) #1

declare dso_local i64 @gotdata(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
