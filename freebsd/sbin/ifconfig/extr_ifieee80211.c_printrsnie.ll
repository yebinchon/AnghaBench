; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printrsnie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printrsnie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"<v%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" mc:%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" uc:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" km:\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", caps 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printrsnie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printrsnie(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %86

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32* %17, i32** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 2
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @LE_READ_2(i32* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32* %24, i32** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 2
  store i64 %26, i64* %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @rsn_cipher(i32* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 4
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @LE_READ_2(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %37, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 2
  store i64 %39, i64* %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %40

40:                                               ; preds = %52, %15
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @rsn_cipher(i32* %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 4
  store i64 %51, i64* %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @LE_READ_2(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32* %59, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 2
  store i64 %61, i64* %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %62

62:                                               ; preds = %74, %55
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @rsn_keymgmt(i32* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %66, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 4
  store i64 %73, i64* %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @LE_READ_2(i32* %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32*) #1

declare dso_local i8* @rsn_cipher(i32*) #1

declare dso_local i32 @rsn_keymgmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
