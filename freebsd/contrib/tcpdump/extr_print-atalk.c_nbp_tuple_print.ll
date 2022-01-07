; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_nbp_tuple_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_nbp_tuple_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atNBPtuple = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [addr=%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atNBPtuple* (i32*, %struct.atNBPtuple*, i64*, i64, i64, i64)* @nbp_tuple_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atNBPtuple* @nbp_tuple_print(i32* %0, %struct.atNBPtuple* %1, i64* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.atNBPtuple*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.atNBPtuple*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.atNBPtuple*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.atNBPtuple* %1, %struct.atNBPtuple** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %16 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %15, i64 1
  %17 = bitcast %struct.atNBPtuple* %16 to i64*
  %18 = load i64*, i64** %10, align 8
  %19 = icmp ugt i64* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @tstr, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @ND_PRINT(i32* %24)
  store %struct.atNBPtuple* null, %struct.atNBPtuple** %7, align 8
  br label %83

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = call %struct.atNBPtuple* @nbp_name_print(i32* %27, %struct.atNBPtuple* %28, i64* %29)
  store %struct.atNBPtuple* %30, %struct.atNBPtuple** %14, align 8
  %31 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %32 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %38 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  br label %43

43:                                               ; preds = %35, %26
  %44 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %45 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %52 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @ND_PRINT(i32* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %58 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %57, i32 0, i32 3
  %59 = call i64 @EXTRACT_16BITS(i32* %58)
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %64 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62, %56
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %72 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %71, i32 0, i32 3
  %73 = call i64 @EXTRACT_16BITS(i32* %72)
  %74 = load %struct.atNBPtuple*, %struct.atNBPtuple** %9, align 8
  %75 = getelementptr inbounds %struct.atNBPtuple, %struct.atNBPtuple* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ataddr_string(i32* %70, i64 %73, i64 %76)
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @ND_PRINT(i32* %79)
  br label %81

81:                                               ; preds = %68, %62
  %82 = load %struct.atNBPtuple*, %struct.atNBPtuple** %14, align 8
  store %struct.atNBPtuple* %82, %struct.atNBPtuple** %7, align 8
  br label %83

83:                                               ; preds = %81, %20
  %84 = load %struct.atNBPtuple*, %struct.atNBPtuple** %7, align 8
  ret %struct.atNBPtuple* %84
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local %struct.atNBPtuple* @nbp_name_print(i32*, %struct.atNBPtuple*, i64*) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ataddr_string(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
