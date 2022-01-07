; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_subdi3.c___subdi3.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_subdi3.c___subdi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i8* }

@L = common dso_local global i64 0, align 8
@H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__subdi3(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.uu, align 8
  %6 = alloca %union.uu, align 8
  %7 = alloca %union.uu, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast %union.uu* %5 to i8**
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast %union.uu* %6 to i8**
  store i8* %10, i8** %11, align 8
  %12 = bitcast %union.uu* %5 to i64**
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @L, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %union.uu* %6 to i64**
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @L, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = bitcast %union.uu* %7 to i64**
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @L, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %22, i64* %26, align 8
  %27 = bitcast %union.uu* %5 to i64**
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @H, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = bitcast %union.uu* %6 to i64**
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @H, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %31, %36
  %38 = bitcast %union.uu* %7 to i64**
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @L, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.uu* %5 to i64**
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @L, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %42, %47
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %37, %50
  %52 = bitcast %union.uu* %7 to i64**
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @H, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = bitcast %union.uu* %7 to i8**
  %57 = load i8*, i8** %56, align 8
  ret i8* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
