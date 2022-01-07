; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_getinx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_getinx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_SUBSCRIPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32*)* @getinx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @getinx(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %7, i64** %3, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @Isdigit(i64 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 10
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %3, align 8
  %26 = load i64, i64* %24, align 8
  %27 = add nsw i64 %23, %26
  %28 = sub nsw i64 %27, 48
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %8

31:                                               ; preds = %17
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %3, align 8
  %34 = load i64, i64* %32, align 8
  %35 = icmp ne i64 %34, 93
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @ERR_NAME, align 4
  %38 = load i32, i32* @ERR_SUBSCRIPT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @stderror(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i64*, i64** %3, align 8
  ret i64* %42
}

declare dso_local i64 @Isdigit(i64) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
