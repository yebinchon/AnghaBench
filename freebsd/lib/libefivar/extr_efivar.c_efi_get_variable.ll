; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_get_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_var_ioc = type { i32, i32, i32, i32*, i32, i32 }

@efi_get_variable.buf = internal global [32768 x i32] zeroinitializer, align 16
@efi_fd = common dso_local global i32 0, align 4
@EFIIOC_VAR_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_get_variable(i32 %0, i8* %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.efi_var_ioc, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i32 (...) @efi_open_dev()
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %60

17:                                               ; preds = %5
  %18 = call i32 @efi_var_reset(%struct.efi_var_ioc* %12)
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 1
  %21 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 5
  %22 = call i32 @utf8_to_ucs2(i8* %19, i32* %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %54

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 3
  store i32* getelementptr inbounds ([32768 x i32], [32768 x i32]* @efi_get_variable.buf, i64 0, i64 0), i32** %29, align 8
  %30 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 0
  store i32 131072, i32* %30, align 8
  %31 = load i32, i32* @efi_fd, align 4
  %32 = load i32, i32* @EFIIOC_VAR_GET, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.efi_var_ioc* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i64*, i64** %10, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32**, i32*** %9, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32**, i32*** %9, align 8
  store i32* getelementptr inbounds ([32768 x i32], [32768 x i32]* @efi_get_variable.buf, i64 0, i64 0), i32** %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %25
  %55 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @free(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @rv_to_linux_rv(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %54, %16
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @efi_open_dev(...) #1

declare dso_local i32 @efi_var_reset(%struct.efi_var_ioc*) #1

declare dso_local i32 @utf8_to_ucs2(i8*, i32*, i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.efi_var_ioc*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @rv_to_linux_rv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
