; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_macro_bypage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_macro_bypage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@macro_bypage.pp = internal global i64* null, align 8
@macro_bypage.im = internal global i64 0, align 8
@macro_bypage.ip = internal global i64 0, align 8
@macro_bypage.iv = internal global i64 0, align 8
@MACRO_MAX = common dso_local global i64 0, align 8
@macros = common dso_local global %struct.TYPE_2__** null, align 8
@nvals = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @macro_bypage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @macro_bypage(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MACRO_MAX, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* @macro_bypage.im, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* @macro_bypage.ip, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @macros, align 8
  %16 = load i64, i64* @macro_bypage.im, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @dbm_get(i32 %20)
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** @macro_bypage.pp, align 8
  store i64 0, i64* @macro_bypage.iv, align 8
  store i8* null, i8** %3, align 8
  br label %88

23:                                               ; preds = %9, %2
  %24 = load i64, i64* @macro_bypage.im, align 8
  %25 = load i64, i64* @MACRO_MAX, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %88

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i64, i64* @macro_bypage.iv, align 8
  %31 = load i64*, i64** @nvals, align 8
  %32 = load i64, i64* @macro_bypage.im, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i64*, i64** @macro_bypage.pp, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @macro_bypage.ip, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load i64*, i64** @macro_bypage.pp, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* @macro_bypage.iv, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* @macro_bypage.iv, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64*, i64** @macro_bypage.pp, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** @macro_bypage.pp, align 8
  br label %29

52:                                               ; preds = %41, %29
  %53 = load i64, i64* @macro_bypage.iv, align 8
  %54 = load i64*, i64** @nvals, align 8
  %55 = load i64, i64* @macro_bypage.im, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @MACRO_MAX, align 8
  store i64 %60, i64* @macro_bypage.im, align 8
  store i64 0, i64* @macro_bypage.ip, align 8
  store i64* null, i64** @macro_bypage.pp, align 8
  store i8* null, i8** %3, align 8
  br label %88

61:                                               ; preds = %52
  %62 = load i64, i64* @macro_bypage.iv, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @macro_bypage.iv, align 8
  %64 = load i64*, i64** @nvals, align 8
  %65 = load i64, i64* @macro_bypage.im, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %75, %69
  %71 = load i64*, i64** @macro_bypage.pp, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** @macro_bypage.pp, align 8
  %73 = load i64, i64* %71, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %70

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %61
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @macros, align 8
  %79 = load i64, i64* @macro_bypage.im, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @macro_bypage.iv, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @dbm_get(i32 %86)
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %77, %59, %27, %12
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i8* @dbm_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
