; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_starting_a_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_starting_a_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@starting_a_command.cmdstart = internal global [6 x i8] c"`;&(|\00", align 1
@starting_a_command.cmdalive = internal global [7 x i8] c" \09'\22<>\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @starting_a_command(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp uge i8* %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 96
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @EVEN(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @starting_a_command.cmdstart, i64 0, i64 0), i64 %28
  store i8* %29, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %81, %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp uge i8* %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %81

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @Strchr(i8* %41, i8 signext %43)
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %55, %46
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %4, align 8
  br label %81

65:                                               ; preds = %58
  br label %84

66:                                               ; preds = %40
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i8* @Strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @starting_a_command.cmdalive, i64 0, i64 0), i8 signext %68)
  store i8* %69, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %164

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %62, %39
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %4, align 8
  br label %30

84:                                               ; preds = %65, %30
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ugt i8* %85, %86
  br i1 %87, label %88, label %162

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  switch i32 %91, label %160 [
    i32 38, label %92
    i32 40, label %121
  ]

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = icmp ugt i8* %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 9
  br label %108

108:                                              ; preds = %103, %97
  %109 = phi i1 [ true, %97 ], [ %107, %103 ]
  br label %110

110:                                              ; preds = %108, %93
  %111 = phi i1 [ false, %93 ], [ %109, %108 ]
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  br label %93

113:                                              ; preds = %110
  %114 = load i8*, i8** %4, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 62
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %3, align 4
  br label %164

120:                                              ; preds = %113
  br label %161

121:                                              ; preds = %88
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i8*, i8** %4, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ugt i8* %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %128, i8** %4, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %4, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 9
  br label %137

137:                                              ; preds = %132, %126
  %138 = phi i1 [ true, %126 ], [ %136, %132 ]
  br label %139

139:                                              ; preds = %137, %122
  %140 = phi i1 [ false, %122 ], [ %138, %137 ]
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  br label %122

142:                                              ; preds = %139
  %143 = load i8*, i8** %4, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @iscmdmeta(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %4, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 32
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i8*, i8** %4, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 9
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %3, align 4
  br label %164

159:                                              ; preds = %152, %147, %142
  br label %161

160:                                              ; preds = %88
  br label %161

161:                                              ; preds = %160, %159, %120
  br label %162

162:                                              ; preds = %161, %84
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %157, %118, %78
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @EVEN(i32) #1

declare dso_local i8* @Strchr(i8*, i8 signext) #1

declare dso_local i32 @iscmdmeta(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
