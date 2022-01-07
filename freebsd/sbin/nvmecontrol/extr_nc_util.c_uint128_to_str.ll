; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nc_util.c_uint128_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nc_util.c_uint128_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uint128_to_str(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %14, i8** %8, align 8
  store i8 0, i8* %13, align 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %8, align 8
  store i8 48, i8* %18, align 1
  br label %20

20:                                               ; preds = %17, %3
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp uge i8* %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = srem i32 %31, 10
  %33 = add nsw i32 %32, 48
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 10
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
