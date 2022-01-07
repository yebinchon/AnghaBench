; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec_bitmap_covers_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec_bitmap_covers_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_BITMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_nsec_bitmap_covers_type(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ldns_rdf_get_type(i32* %18)
  %20 = load i64, i64* @LDNS_RDF_TYPE_BITMAP, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @ldns_rdf_data(i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @ldns_rdf_data(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ldns_rdf_size(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %7, align 8
  br label %32

32:                                               ; preds = %79, %17
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %39, %40
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br i1 %43, label %44, label %87

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ule i32* %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 8
  %71 = add nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = srem i32 %75, 8
  %77 = ashr i32 128, %76
  %78 = and i32 %74, %77
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %57, %50, %44
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 2
  %84 = load i32*, i32** %6, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %6, align 8
  br label %32

87:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %67, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_rdf_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
