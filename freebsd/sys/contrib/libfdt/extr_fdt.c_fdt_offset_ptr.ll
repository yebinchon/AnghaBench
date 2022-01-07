; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt.c_fdt_offset_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt.c_fdt_offset_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_offset_ptr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @fdt_off_dt_struct(i8* %10)
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %23, %24
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @fdt_totalsize(i8* %26)
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %16, %3
  store i8* null, i8** %4, align 8
  br label %53

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @fdt_version(i8* %31)
  %33 = icmp sge i32 %32, 17
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %41, %42
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @fdt_size_dt_struct(i8* %44)
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %34
  store i8* null, i8** %4, align 8
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @fdt_offset_ptr_(i8* %50, i32 %51)
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %49, %47, %29
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i8* @fdt_offset_ptr_(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
