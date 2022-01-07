; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msg_print(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.TYPE_2__* @EXP(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 1
  %27 = load i8*, i8** %14, align 8
  %28 = load i64, i64* %16, align 8
  %29 = call i32 @CHAR2INT5(i32* %18, i32 %22, i8* %23, i64 %26, i8* %27, i64 %28)
  %30 = load i8*, i8** %14, align 8
  store i8* %30, i8** %15, align 8
  br label %31

31:                                               ; preds = %43, %3
  %32 = load i8*, i8** %15, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @ISPRINT(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %15, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %15, align 8
  br label %31

46:                                               ; preds = %41, %31
  %47 = load i8*, i8** %15, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %4, align 8
  br label %141

53:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  br i1 false, label %54, label %68

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %137, %54
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @free(i8* %59)
  br label %66

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @FREE_SPACE(i32* %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %7, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 256
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i64, i64* %9, align 8
  %75 = call i8* @malloc(i64 %74)
  store i8* %75, i8** %10, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %87

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %68
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @GET_SPACE_GOTOC(i32* %80, i8* %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %79, %78
  br i1 false, label %86, label %88

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %77
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %141

88:                                               ; preds = %85
  %89 = load i32*, i32** %7, align 8
  store i32 1, i32* %89, align 4
  %90 = load i8*, i8** %10, align 8
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  store i8* %94, i8** %11, align 8
  br label %95

95:                                               ; preds = %130, %88
  %96 = load i8*, i8** %14, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ult i8* %101, %102
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi i1 [ false, %95 ], [ %103, %100 ]
  br i1 %105, label %106, label %133

106:                                              ; preds = %104
  %107 = load i32*, i32** %5, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i8* @KEY_NAME(i32* %107, i8 signext %109)
  store i8* %110, i8** %13, align 8
  br label %111

111:                                              ; preds = %123, %106
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = icmp ult i8* %117, %118
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i1 [ false, %111 ], [ %119, %116 ]
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %13, align 8
  %126 = load i8, i8* %124, align 1
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %12, align 8
  store i8 %126, i8* %127, align 1
  br label %111

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %14, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %14, align 8
  br label %95

133:                                              ; preds = %104
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %55

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %10, align 8
  store i8* %140, i8** %4, align 8
  br label %141

141:                                              ; preds = %138, %87, %51
  %142 = load i8*, i8** %4, align 8
  ret i8* %142
}

declare dso_local i32 @CHAR2INT5(i32*, i32, i8*, i64, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @EXP(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ISPRINT(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FREE_SPACE(i32*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @GET_SPACE_GOTOC(i32*, i8*, i64, i64) #1

declare dso_local i8* @KEY_NAME(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
