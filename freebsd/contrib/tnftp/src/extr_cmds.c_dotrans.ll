; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_dotrans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_dotrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntout = common dso_local global i64* null, align 8
@ntin = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*)* @dotrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dotrans(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i64*, i64** @ntout, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %20, 16
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %10, align 8
  br label %13

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %97, %28
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %100

34:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %85, %34
  %36 = load i8*, i8** @ntin, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %43, 16
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ false, %35 ], [ %44, %42 ]
  br i1 %46, label %47, label %88

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** @ntin, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %50, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load i64*, i64** @ntout, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %5, align 8
  %77 = sub i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp sge i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %101

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %57
  br label %88

84:                                               ; preds = %47
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %35

88:                                               ; preds = %83, %45
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  br label %30

100:                                              ; preds = %30
  br label %101

101:                                              ; preds = %100, %81
  %102 = load i8*, i8** %8, align 8
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
