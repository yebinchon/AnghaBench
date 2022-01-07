; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_sw.c_fdt_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_sw.c_fdt_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_resize(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @FDT_SW_CHECK_HEADER(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @fdt_off_dt_struct(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @fdt_size_dt_strings(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @fdt_totalsize(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ule i8* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %27
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @memmove(i8* %47, i8* %48, i64 %49)
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @memmove(i8* %51, i8* %52, i64 %53)
  br label %64

55:                                               ; preds = %27
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @memmove(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memmove(i8* %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fdt_set_off_dt_strings(i8* %65, i32 %66)
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @fdt_set_totalsize(i8* %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %24
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local i64 @fdt_off_dt_struct(i8*) #1

declare dso_local i64 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
