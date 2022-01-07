; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosacpi.c_biosacpi_search_rsdp.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosacpi.c_biosacpi_search_rsdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ACPI_SIG_RSDP = common dso_local global i32 0, align 4
@RSDP_CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i8*, i32)* @biosacpi_search_rsdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @biosacpi_search_rsdp(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %55, %2
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = call i64 @PTOV(i8* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_SIG_RSDP, align 4
  %26 = load i32, i32* @ACPI_SIG_RSDP, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = call i32 @strncmp(i32 %24, i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %15
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to i64*
  store i64* %32, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %45, %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RSDP_CHECKSUM_LENGTH, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64*, i64** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %3, align 8
  br label %59

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 16
  store i32 %57, i32* %9, align 4
  br label %11

58:                                               ; preds = %11
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %60
}

declare dso_local i64 @PTOV(i8*) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
