; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_misc.c_b64_from_24bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_misc.c_b64_from_24bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itoa64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b64_from_24bit(i32 %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %38, %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i8*, i8** @itoa64, align 8
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 63
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  store i8 %30, i8* %32, align 1
  %33 = load i8**, i8*** %10, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 6
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %20

41:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
