; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpet_ids = common dso_local global i8** null, align 8
@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @hpet_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_find(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i8**, i8*** @hpet_ids, align 8
  store i8** %15, i8*** %10, align 8
  br label %16

16:                                               ; preds = %28, %4
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @acpi_MatchHid(i32 %21, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8**, i8*** %10, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %10, align 8
  br label %16

31:                                               ; preds = %26, %16
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @AE_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %52

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @acpi_GetInteger(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %12)
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @acpi_get_device(i32 %47)
  %49 = load i8**, i8*** %9, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @acpi_MatchHid(i32, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i64*) #1

declare dso_local i8* @acpi_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
