; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_strtoi_lim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_strtoi_lim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32)* @strtoi_lim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strtoi_lim(i8* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 10
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 10, %17 ]
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %49, %18
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 10
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br label %38

38:                                               ; preds = %33, %28, %25, %20
  %39 = phi i1 [ false, %28 ], [ false, %25 ], [ false, %20 ], [ %37, %33 ]
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 10
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sdiv i32 %52, 10
  store i32 %53, i32* %11, align 4
  br label %20

54:                                               ; preds = %38
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  br label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59
  store i32 -2, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i8*, i8** %10, align 8
  %71 = load i8**, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
