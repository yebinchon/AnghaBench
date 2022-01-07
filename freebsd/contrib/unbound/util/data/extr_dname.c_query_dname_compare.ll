; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_query_dname_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_query_dname_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_dname_compare(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp ne i64* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @log_assert(i32 %15)
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %4, align 8
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %5, align 8
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %89, %13
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %96

31:                                               ; preds = %29
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %97

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %97

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @log_assert(i32 %50)
  br label %52

52:                                               ; preds = %84, %48
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %6, align 8
  %55 = icmp ne i64 %53, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i64*, i64** %4, align 8
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i8
  %66 = call i64 @tolower(i8 zeroext %65)
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i8
  %70 = call i64 @tolower(i8 zeroext %69)
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %62
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i8
  %76 = call i64 @tolower(i8 zeroext %75)
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i8
  %80 = call i64 @tolower(i8 zeroext %79)
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %97

83:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %97

84:                                               ; preds = %62, %56
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %4, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %5, align 8
  br label %52

89:                                               ; preds = %52
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %4, align 8
  %92 = load i64, i64* %90, align 8
  store i64 %92, i64* %6, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %5, align 8
  %95 = load i64, i64* %93, align 8
  store i64 %95, i64* %7, align 8
  br label %23

96:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %83, %82, %40, %39
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
