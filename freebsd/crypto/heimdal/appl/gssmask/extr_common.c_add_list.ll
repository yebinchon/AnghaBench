; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_common.c_add_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_common.c_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8****, i64*, i8**, i64)* @add_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_list(i8**** %0, i64* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i8****, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8**** %0, i8***** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8****, i8***** %5, align 8
  %11 = load i8***, i8**** %10, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call i8*** @erealloc(i8*** %11, i32 %16)
  %18 = load i8****, i8***** %5, align 8
  store i8*** %17, i8**** %18, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i8** @ecalloc(i64 %19, i32 8)
  %21 = load i8****, i8***** %5, align 8
  %22 = load i8***, i8**** %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8**, i8*** %22, i64 %24
  store i8** %20, i8*** %25, align 8
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %43, %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8**, i8*** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8****, i8***** %5, align 8
  %36 = load i8***, i8**** %35, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8**, i8*** %36, i64 %38
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %34, i8** %42, align 8
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %26

46:                                               ; preds = %26
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  ret void
}

declare dso_local i8*** @erealloc(i8***, i32) #1

declare dso_local i8** @ecalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
