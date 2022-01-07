; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_isc_fsaccess_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_isc_fsaccess_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ISC_FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ISC_R_INVALIDFILE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_fsaccess_set(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ISC_FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @stat(i8* %10, %struct.stat* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = call i64 @isc__errno2result(i32 %14)
  store i64 %15, i64* %3, align 8
  br label %55

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ISC_TRUE, align 4
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @S_IFREG, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @ISC_R_INVALIDFILE, align 8
  store i64 %31, i64* %3, align 8
  br label %55

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @check_bad_bits(i32 %34, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @ISC_R_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %55

42:                                               ; preds = %33
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @is_ntfs(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @NTFS_fsaccess_set(i8* %47, i32 %48, i32 %49)
  store i64 %50, i64* %3, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @FAT_fsaccess_set(i8* %52, i32 %53)
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %51, %46, %40, %30, %13
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @isc__errno2result(i32) #1

declare dso_local i64 @check_bad_bits(i32, i32) #1

declare dso_local i64 @is_ntfs(i8*) #1

declare dso_local i64 @NTFS_fsaccess_set(i8*, i32, i32) #1

declare dso_local i64 @FAT_fsaccess_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
