; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_rdf_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf_compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %13, %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %17
  store i32 -1, i32* %3, align 4
  br label %79

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ldns_rdf_size(i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @ldns_rdf_size(i32* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %79

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @ldns_rdf_data(i32* %39)
  %41 = inttoptr i64 %40 to i64*
  store i64* %41, i64** %9, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @ldns_rdf_data(i32* %42)
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %10, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %73, %38
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %79

60:                                               ; preds = %49
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %79

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %45

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70, %59, %37, %32, %23, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i64 @ldns_rdf_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
