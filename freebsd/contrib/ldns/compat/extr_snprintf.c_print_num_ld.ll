; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num_ld.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINT_DEC_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i32*, i64, i32, i32, i32, i32, i32, i32, i32)* @print_num_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_num_ld(i8** %0, i64* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8** %0, i8*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = load i32, i32* @PRINT_DEC_BUFSZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp slt i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %25, align 4
  %35 = load i64, i64* %15, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %26, align 4
  %38 = trunc i64 %29 to i32
  %39 = load i32, i32* %25, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %11
  %42 = load i64, i64* %15, align 8
  %43 = sub nsw i64 0, %42
  br label %46

44:                                               ; preds = %11
  %45 = load i64, i64* %15, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i64 [ %43, %41 ], [ %45, %44 ]
  %48 = call i32 @print_dec_l(i8* %31, i32 %38, i64 %47)
  store i32 %48, i32* %27, align 4
  %49 = load i8**, i8*** %12, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %26, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load i32, i32* %27, align 4
  %62 = call i32 @print_num(i8** %49, i64* %50, i32* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i8* %31, i32 %61)
  %63 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_dec_l(i8*, i32, i64) #2

declare dso_local i32 @print_num(i8**, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
