; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_rrset_parse_equals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_rrset_parse_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_parse*, i32*, i64, i64, i32*, i64, i64, i64)* @rrset_parse_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrset_parse_equals(%struct.rrset_parse* %0, i32* %1, i64 %2, i64 %3, i32* %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.rrset_parse* %0, %struct.rrset_parse** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %19 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %8
  %24 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %25 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %37 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %43 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %51 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @dname_pkt_compare(i32* %48, i32* %49, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %57

56:                                               ; preds = %47, %41, %35, %29, %23, %8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i64 @dname_pkt_compare(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
