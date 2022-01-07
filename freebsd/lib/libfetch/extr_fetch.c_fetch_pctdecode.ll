; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetch_pctdecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetch_pctdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @fetch_pctdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetch_pctdecode(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %73, %3
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 64
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 58
  br label %27

27:                                               ; preds = %22, %17, %12
  %28 = phi i1 [ false, %17 ], [ false, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %76

29:                                               ; preds = %27
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @fetch_hexval(i8 signext %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @fetch_hexval(i8 signext %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %10, align 8
  br label %64

61:                                               ; preds = %50, %41, %35, %29
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %9, align 1
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %6, align 8
  %67 = icmp ugt i64 %65, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8, i8* %9, align 1
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  store i8 %69, i8* %70, align 1
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  br label %12

76:                                               ; preds = %27
  %77 = load i8*, i8** %10, align 8
  ret i8* %77
}

declare dso_local i32 @fetch_hexval(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
