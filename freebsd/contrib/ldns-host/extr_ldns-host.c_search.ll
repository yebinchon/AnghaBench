; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32, i32)* @search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @search(i32* %0, i32* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @query(i32* %19, i32* %20, i32** %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %6, align 8
  br label %86

27:                                               ; preds = %18, %5
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @ldns_resolver_domain(i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32* @safe_dname_cat_clone(i32* %32, i32* %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @query(i32* %35, i32* %36, i32** %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32*, i32** %12, align 8
  store i32* %42, i32** %6, align 8
  br label %86

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32*, i32** %7, align 8
  %46 = call i32** @ldns_resolver_searchlist(i32* %45)
  store i32** %46, i32*** %13, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ldns_resolver_searchlist_count(i32* %47)
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %70, %44
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = load i32**, i32*** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32* @safe_dname_cat_clone(i32* %54, i32* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32**, i32*** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @query(i32* %61, i32* %62, i32** %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %6, align 8
  br label %86

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %49

73:                                               ; preds = %49
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @query(i32* %77, i32* %78, i32** %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32*, i32** %8, align 8
  store i32* %84, i32** %6, align 8
  br label %86

85:                                               ; preds = %76, %73
  store i32* null, i32** %6, align 8
  br label %86

86:                                               ; preds = %85, %83, %67, %41, %25
  %87 = load i32*, i32** %6, align 8
  ret i32* %87
}

declare dso_local i64 @query(i32*, i32*, i32**, i32) #1

declare dso_local i32* @ldns_resolver_domain(i32*) #1

declare dso_local i32* @safe_dname_cat_clone(i32*, i32*) #1

declare dso_local i32** @ldns_resolver_searchlist(i32*) #1

declare dso_local i32 @ldns_resolver_searchlist_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
