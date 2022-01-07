; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_sssort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_sssort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32)* @sssort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sssort(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %12, align 8
  br label %27

27:                                               ; preds = %24, %9
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @ss_mintrosort(i8* %28, i32* %29, i32* %30, i32* %31, i32 %32)
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %27
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 -1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %17, align 4
  %46 = sub nsw i32 %45, 2
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  store i32* %48, i32** %19, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %80, %36
  %53 = load i32*, i32** %19, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32*, i32** %19, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @ss_compare(i8* %61, i32* %62, i32* %67, i32 %68)
  %70 = icmp slt i64 0, %69
  br label %71

71:                                               ; preds = %60, %56
  %72 = phi i1 [ true, %56 ], [ %70, %60 ]
  br label %73

73:                                               ; preds = %71, %52
  %74 = phi i1 [ false, %52 ], [ %72, %71 ]
  br i1 %74, label %75, label %83

75:                                               ; preds = %73
  %76 = load i32*, i32** %19, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %19, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %19, align 8
  br label %52

83:                                               ; preds = %73
  %84 = load i32, i32* %20, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 -1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %27
  ret void
}

declare dso_local i32 @ss_mintrosort(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ss_compare(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
