; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_optprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_optprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@ip_option_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"unknown %u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" [bad length %u]\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" value %u\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @ip_optprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_optprint(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %10

10:                                               ; preds = %116, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %124

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = call i32 @ND_PRINT(i32* %16)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ip_option_values, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @tok2str(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 133
  br i1 %31, label %35, label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 135
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %13
  store i32 1, i32* %7, align 4
  br label %53

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ND_TCHECK(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ND_PRINT(i32* %50)
  br label %131

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  br label %131

63:                                               ; preds = %53
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ND_TCHECK2(i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %114 [
    i32 135, label %69
    i32 128, label %70
    i32 131, label %78
    i32 129, label %78
    i32 134, label %78
    i32 132, label %86
    i32 133, label %113
    i32 130, label %113
  ]

69:                                               ; preds = %63
  br label %131

70:                                               ; preds = %63
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ip_printts(i32* %71, i32* %72, i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %125

77:                                               ; preds = %70
  br label %115

78:                                               ; preds = %63, %63, %63
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ip_printroute(i32* %79, i32* %80, i32 %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %125

85:                                               ; preds = %78
  br label %115

86:                                               ; preds = %63
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @ND_PRINT(i32* %93)
  br label %115

95:                                               ; preds = %86
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ND_TCHECK(i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = call i32 @EXTRACT_16BITS(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load i32*, i32** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = call i32 @EXTRACT_16BITS(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 @ND_PRINT(i32* %110)
  br label %112

112:                                              ; preds = %104, %95
  br label %115

113:                                              ; preds = %63, %63
  br label %114

114:                                              ; preds = %63, %113
  br label %115

115:                                              ; preds = %114, %112, %89, %85, %77
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %10

124:                                              ; preds = %10
  br label %131

125:                                              ; preds = %84, %76
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @tstr, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i32*
  %130 = call i32 @ND_PRINT(i32* %129)
  br label %131

131:                                              ; preds = %125, %124, %69, %57, %46
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ip_printts(i32*, i32*, i32) #1

declare dso_local i32 @ip_printroute(i32*, i32*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
