; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_read_multiline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_read_multiline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"mismatch: too many ')'\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mismatch: too many '('\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i32*)* @read_multiline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_multiline(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %115, %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @fgets(i8* %25, i32 %27, i32* %28)
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %124

33:                                               ; preds = %31
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %79, %33
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 40
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %78

53:                                               ; preds = %43
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 41
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %135

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %77

68:                                               ; preds = %53
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 59
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %82

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %39

82:                                               ; preds = %75, %39
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %135

86:                                               ; preds = %82
  %87 = load i64, i64* %14, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %14, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i8*, i8** %10, align 8
  %96 = call i64* @strchr(i8* %95, i8 signext 59)
  %97 = icmp ne i64* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** %10, align 8
  %100 = call i64* @strchr(i8* %99, i8 signext 59)
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strlen(i8* %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %10, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = icmp ule i64 %111, 2
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %135

115:                                              ; preds = %102
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 32, i8* %117, align 1
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %21

124:                                              ; preds = %31
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %135

129:                                              ; preds = %124
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %5, align 4
  br label %135

134:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %133, %127, %113, %85, %63
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
