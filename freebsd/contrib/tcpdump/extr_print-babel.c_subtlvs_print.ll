; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_subtlvs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_subtlvs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MESSAGE_SUB_PAD1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" sub-pad1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" sub-padn\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" sub-diversity\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" empty\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@diversity_str = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@MESSAGE_UPDATE = common dso_local global i32 0, align 4
@MESSAGE_UPDATE_SRC_SPECIFIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" (bogus)\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" sub-timestamp\00", align 1
@MESSAGE_HELLO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@MESSAGE_IHU = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c" sub-unknown-0x%02x\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @subtlvs_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtlvs_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %14

14:                                               ; preds = %153, %25, %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ult i32* %15, %16
  br i1 %17, label %18, label %154

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MESSAGE_SUB_PAD1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str to i32*))
  br label %14

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %155

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ugt i32* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %155

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %143 [
    i32 129, label %46
    i32 130, label %53
    i32 128, label %89
  ]

46:                                               ; preds = %44
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.1 to i32*))
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %6, align 8
  br label %153

53:                                               ; preds = %44
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.2 to i32*))
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  br label %153

61:                                               ; preds = %53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* @diversity_str, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 @tok2str(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MESSAGE_UPDATE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MESSAGE_UPDATE_SRC_SPECIFIC, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.8 to i32*))
  br label %88

88:                                               ; preds = %85, %81, %77
  br label %153

89:                                               ; preds = %44
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.9 to i32*))
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MESSAGE_HELLO, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %155

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @EXTRACT_32BITS(i32* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @format_timestamp(i32 %103)
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i32*
  %107 = call i32 @ND_PRINT(i32* %106)
  br label %138

108:                                              ; preds = %89
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @MESSAGE_IHU, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %155

116:                                              ; preds = %112
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @EXTRACT_32BITS(i32* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @format_timestamp(i32 %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  %124 = call i32 @ND_PRINT(i32* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = call i32 @EXTRACT_32BITS(i32* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @format_timestamp(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  br label %137

134:                                              ; preds = %108
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.8 to i32*))
  br label %137

137:                                              ; preds = %134, %116
  br label %138

138:                                              ; preds = %137, %99
  %139 = load i32, i32* %10, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %6, align 8
  br label %153

143:                                              ; preds = %44
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i32*
  %148 = call i32 @ND_PRINT(i32* %147)
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %6, align 8
  br label %153

153:                                              ; preds = %143, %138, %88, %58, %46
  br label %14

154:                                              ; preds = %14
  br label %161

155:                                              ; preds = %115, %98, %43, %32
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @istr, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i32*
  %160 = call i32 @ND_PRINT(i32* %159)
  br label %161

161:                                              ; preds = %155, %154
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @format_timestamp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
