; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_fsaccess.c_check_bad_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_fsaccess.c_check_bad_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_FSACCESS_READ = common dso_local global i32 0, align 4
@ISC_FSACCESS_WRITE = common dso_local global i32 0, align 4
@ISC_FSACCESS_EXECUTE = common dso_local global i32 0, align 4
@ISC_FSACCESS_CREATECHILD = common dso_local global i32 0, align 4
@ISC_FSACCESS_ACCESSCHILD = common dso_local global i32 0, align 4
@ISC_FSACCESS_DELETECHILD = common dso_local global i32 0, align 4
@ISC_FSACCESS_LISTDIRECTORY = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@ISC_R_NOTFILE = common dso_local global i32 0, align 4
@ISC_R_NOTDIRECTORY = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @check_bad_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bad_bits(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @ISC_FSACCESS_READ, align 4
  %11 = load i32, i32* @ISC_FSACCESS_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISC_FSACCESS_EXECUTE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @ISC_FSACCESS_CREATECHILD, align 4
  %17 = load i32, i32* @ISC_FSACCESS_ACCESSCHILD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISC_FSACCESS_DELETECHILD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ISC_FSACCESS_LISTDIRECTORY, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %15, %9
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @STEP, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @STEP, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %23
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ISC_R_NOTFILE, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @ISC_R_NOTDIRECTORY, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %23
  %46 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
