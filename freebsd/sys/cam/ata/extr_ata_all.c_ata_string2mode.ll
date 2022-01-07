; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_string2mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_string2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PIO0\00", align 1
@ATA_PIO0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PIO1\00", align 1
@ATA_PIO1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"PIO2\00", align 1
@ATA_PIO2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"PIO3\00", align 1
@ATA_PIO3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PIO4\00", align 1
@ATA_PIO4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"WDMA0\00", align 1
@ATA_WDMA0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"WDMA1\00", align 1
@ATA_WDMA1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"WDMA2\00", align 1
@ATA_WDMA2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"UDMA0\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"UDMA16\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UDMA1\00", align 1
@ATA_UDMA1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"UDMA25\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"UDMA2\00", align 1
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"UDMA33\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"UDMA3\00", align 1
@ATA_UDMA3 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"UDMA44\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UDMA4\00", align 1
@ATA_UDMA4 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"UDMA66\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UDMA5\00", align 1
@ATA_UDMA5 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"UDMA100\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UDMA6\00", align 1
@ATA_UDMA6 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"UDMA133\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_string2mode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ATA_PIO0, align 4
  store i32 %8, i32* %2, align 4
  br label %136

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @ATA_PIO1, align 4
  store i32 %14, i32* %2, align 4
  br label %136

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ATA_PIO2, align 4
  store i32 %20, i32* %2, align 4
  br label %136

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ATA_PIO3, align 4
  store i32 %26, i32* %2, align 4
  br label %136

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ATA_PIO4, align 4
  store i32 %32, i32* %2, align 4
  br label %136

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ATA_WDMA0, align 4
  store i32 %38, i32* %2, align 4
  br label %136

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ATA_WDMA1, align 4
  store i32 %44, i32* %2, align 4
  br label %136

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ATA_WDMA2, align 4
  store i32 %50, i32* %2, align 4
  br label %136

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @ATA_UDMA0, align 4
  store i32 %56, i32* %2, align 4
  br label %136

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ATA_UDMA0, align 4
  store i32 %62, i32* %2, align 4
  br label %136

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @ATA_UDMA1, align 4
  store i32 %68, i32* %2, align 4
  br label %136

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strcasecmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @ATA_UDMA1, align 4
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strcasecmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %80, i32* %2, align 4
  br label %136

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strcasecmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %86, i32* %2, align 4
  br label %136

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @ATA_UDMA3, align 4
  store i32 %92, i32* %2, align 4
  br label %136

93:                                               ; preds = %87
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @strcasecmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @ATA_UDMA3, align 4
  store i32 %98, i32* %2, align 4
  br label %136

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @strcasecmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @ATA_UDMA4, align 4
  store i32 %104, i32* %2, align 4
  br label %136

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @ATA_UDMA4, align 4
  store i32 %110, i32* %2, align 4
  br label %136

111:                                              ; preds = %105
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @ATA_UDMA5, align 4
  store i32 %116, i32* %2, align 4
  br label %136

117:                                              ; preds = %111
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @ATA_UDMA5, align 4
  store i32 %122, i32* %2, align 4
  br label %136

123:                                              ; preds = %117
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @strcasecmp(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @ATA_UDMA6, align 4
  store i32 %128, i32* %2, align 4
  br label %136

129:                                              ; preds = %123
  %130 = load i8*, i8** %3, align 8
  %131 = call i32 @strcasecmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @ATA_UDMA6, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %129
  store i32 -1, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %133, %127, %121, %115, %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
