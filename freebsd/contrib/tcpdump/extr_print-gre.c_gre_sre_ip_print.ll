; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_ip_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_ip_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c", badoffset=%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c", badlength=%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c", badoff/len=%u/%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @gre_sre_ip_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_sre_ip_print(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ND_PRINT(i32* %38)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @ND_PRINT(i32* %49)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ND_TTEST2(i32 %57, i32 4)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = trunc i64 %18 to i32
  %68 = call i32 @addrtostr(i32* %66, i8* %20, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %81 = bitcast i8* %20 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 4
  store i32 %88, i32* %9, align 4
  br label %52

89:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %90

90:                                               ; preds = %89, %64, %60, %44, %34, %24
  %91 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ND_PRINT(i32*) #2

declare dso_local i32 @ND_TTEST2(i32, i32) #2

declare dso_local i32 @addrtostr(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
