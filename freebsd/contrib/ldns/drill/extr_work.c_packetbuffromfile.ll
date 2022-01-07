; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_packetbuffromfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_packetbuffromfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to open file for reading\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*)* @packetbuffromfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @packetbuffromfile(i8* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %13 = call i64* @xmalloc(i32 %12)
  store i64* %13, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** @stdin, align 8
  store i32* %18, i32** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64*, i64** %9, align 8
  %28 = call i32 @xfree(i64* %27)
  store i64 0, i64* %3, align 8
  br label %167

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @fgetc(i32* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %114, %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EOF, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %117

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @isascii(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 2, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %45, %42
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %114 [
    i32 0, label %52
    i32 1, label %96
    i32 2, label %105
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %70, label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %59, 97
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 102
  br i1 %63, label %70, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 65
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp sle i32 %68, 70
  br i1 %69, label %70, label %79

70:                                               ; preds = %67, %61, %55
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %95

79:                                               ; preds = %67, %64
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 59
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %94

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86, %83
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %70
  br label %114

96:                                               ; preds = %50
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @EOF, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %96
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %99
  br label %114

105:                                              ; preds = %50
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %107, i64* %111, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %50, %105, %104, %95
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @fgetc(i32* %115)
  store i32 %116, i32* %7, align 4
  br label %32

117:                                              ; preds = %40
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @EOF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %117
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, i32* %10, align 4
  %129 = srem i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i64*, i64** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 48, i64* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %131, %127
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i64*, i64** %9, align 8
  %143 = bitcast i64* %142 to i8*
  %144 = load i32, i32* %10, align 4
  %145 = load i64*, i64** %5, align 8
  %146 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %147 = call i64 @hexstr2bin(i8* %143, i32 %144, i64* %145, i32 0, i32 %146)
  store i64 %147, i64* %11, align 8
  br label %156

148:                                              ; preds = %138
  %149 = load i64*, i64** %5, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 @memcpy(i64* %149, i64* %150, i64 %152)
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %11, align 8
  br label %156

156:                                              ; preds = %148, %141
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** @stdin, align 8
  %159 = icmp ne i32* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @fclose(i32* %161)
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i64*, i64** %9, align 8
  %165 = call i32 @xfree(i64* %164)
  %166 = load i64, i64* %11, align 8
  store i64 %166, i64* %3, align 8
  br label %167

167:                                              ; preds = %163, %25
  %168 = load i64, i64* %3, align 8
  ret i64 %168
}

declare dso_local i64* @xmalloc(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @xfree(i64*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @isascii(i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
