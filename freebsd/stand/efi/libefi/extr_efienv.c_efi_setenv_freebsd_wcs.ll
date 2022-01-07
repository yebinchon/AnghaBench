; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efienv.c_efi_setenv_freebsd_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efienv.c_efi_setenv_freebsd_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32, i32*)* }

@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@RS = common dso_local global %struct.TYPE_2__* null, align 8
@FreeBSDBootVarGUID = common dso_local global i32 0, align 4
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_setenv_freebsd_wcs(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @utf8_to_ucs2(i8* %9, i32** %6, i64* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EFI_OUT_OF_RESOURCES, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RS, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32*, i32, i32, i32*)*, i32 (i32*, i32*, i32, i32, i32*)** %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %20 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ucs2len(i32* %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 %17(i32* %18, i32* @FreeBSDBootVarGUID, i32 %21, i32 %27, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @utf8_to_ucs2(i8*, i32**, i64*) #1

declare dso_local i32 @ucs2len(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
