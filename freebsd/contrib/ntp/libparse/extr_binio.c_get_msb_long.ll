; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_binio.c_get_msb_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_binio.c_get_msb_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_msb_long(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %4, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 24
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %11, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 16
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %3, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i8**, i8*** %2, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %3, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load i8**, i8*** %2, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i64
  %34 = load i64, i64* %3, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
