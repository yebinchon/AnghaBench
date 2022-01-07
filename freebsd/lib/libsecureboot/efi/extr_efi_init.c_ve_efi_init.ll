; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_init.c_ve_efi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_init.c_ve_efi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ve_efi_init.once = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ve_efi_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ve_efi_init.once, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %55

8:                                                ; preds = %0
  store i32 1, i32* @ve_efi_init.once, align 4
  %9 = call i32 (...) @efi_secure_boot_enabled()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %55

13:                                               ; preds = %8
  %14 = call i32* @efi_get_trusted_certs(i64* %3)
  store i32* %14, i32** %1, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ve_trust_anchors_add(i32* %21, i64 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @free_certificates(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %20, %17, %13
  %28 = call i32* @efi_get_forbidden_certs(i64* %3)
  store i32* %28, i32** %1, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %1, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32*, i32** %1, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @ve_forbidden_anchors_add(i32* %35, i64 %36)
  store i64 %37, i64* %3, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @free_certificates(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %34, %31, %27
  %42 = call i32* @efi_get_forbidden_digests(i64* %3)
  store i32* %42, i32** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %2, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @ve_forbidden_digest_add(i32* %49, i64 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @xfree(i32* %52)
  br label %54

54:                                               ; preds = %48, %45, %41
  br label %55

55:                                               ; preds = %54, %12, %7
  ret void
}

declare dso_local i32 @efi_secure_boot_enabled(...) #1

declare dso_local i32* @efi_get_trusted_certs(i64*) #1

declare dso_local i64 @ve_trust_anchors_add(i32*, i64) #1

declare dso_local i32 @free_certificates(i32*, i64) #1

declare dso_local i32* @efi_get_forbidden_certs(i64*) #1

declare dso_local i64 @ve_forbidden_anchors_add(i32*, i64) #1

declare dso_local i32* @efi_get_forbidden_digests(i64*) #1

declare dso_local i32 @ve_forbidden_digest_add(i32*, i64) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
