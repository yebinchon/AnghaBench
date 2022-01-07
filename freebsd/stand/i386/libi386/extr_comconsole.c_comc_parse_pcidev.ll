; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_parse_pcidev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_parse_pcidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @comc_parse_pcidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comc_parse_pcidev(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strtol(i8* %12, i8** %4, i32 0)
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 58
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %17, %1
  store i32 0, i32* %2, align 4
  br label %102

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strtol(i8* %30, i8** %4, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %35, %26
  store i32 0, i32* %2, align 4
  br label %102

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strtol(i8* %48, i8** %4, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 58
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %58, %44
  store i32 0, i32* %2, align 4
  br label %102

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 58
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strtol(i8* %76, i8** %4, i32 0)
  store i32 %77, i32* %11, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %81, %73
  store i32 0, i32* %2, align 4
  br label %102

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %9, align 4
  br label %93

92:                                               ; preds = %67
  store i32 16, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @biospci_locator(i32 %96, i32 %97, i32 %98)
  %100 = or i32 %95, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %93, %89, %66, %43, %25
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @biospci_locator(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
