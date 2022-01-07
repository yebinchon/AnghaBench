; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@DP_F_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*, i64*, i8*, i32, i32, i32)* @fmtstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmtstr(i8** %0, i8** %1, i64* %2, i64* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @SIZE_MAX, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i64 [ %29, %28 ], [ %32, %30 ]
  %35 = call i64 @OPENSSL_strnlen(i8* %25, i64 %34)
  store i64 %35, i64* %19, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %19, align 8
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %33
  store i32 0, i32* %18, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %17, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @INT_MAX, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %17, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @INT_MAX, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @DP_F_MINUS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %18, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %79, %80
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ true, %75 ], [ %81, %78 ]
  br label %84

84:                                               ; preds = %82, %72
  %85 = phi i1 [ false, %72 ], [ %83, %82 ]
  br i1 %85, label %86, label %99

86:                                               ; preds = %84
  %87 = load i8**, i8*** %10, align 8
  %88 = load i8**, i8*** %11, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = call i32 @doapr_outch(i8** %87, i8** %88, i64* %89, i64* %90, i8 signext 32)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %159

94:                                               ; preds = %86
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %20, align 4
  br label %72

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i64, i64* %19, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ true, %103 ], [ %109, %106 ]
  br label %112

112:                                              ; preds = %110, %100
  %113 = phi i1 [ false, %100 ], [ %111, %110 ]
  br i1 %113, label %114, label %130

114:                                              ; preds = %112
  %115 = load i8**, i8*** %10, align 8
  %116 = load i8**, i8*** %11, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load i64*, i64** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %14, align 8
  %121 = load i8, i8* %119, align 1
  %122 = call i32 @doapr_outch(i8** %115, i8** %116, i64* %117, i64* %118, i8 signext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %159

125:                                              ; preds = %114
  %126 = load i64, i64* %19, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %19, align 8
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %100

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %153, %130
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %138, %139
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i1 [ true, %134 ], [ %140, %137 ]
  br label %143

143:                                              ; preds = %141, %131
  %144 = phi i1 [ false, %131 ], [ %142, %141 ]
  br i1 %144, label %145, label %158

145:                                              ; preds = %143
  %146 = load i8**, i8*** %10, align 8
  %147 = load i8**, i8*** %11, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i64*, i64** %13, align 8
  %150 = call i32 @doapr_outch(i8** %146, i8** %147, i64* %148, i64* %149, i8 signext 32)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  store i32 0, i32* %9, align 4
  br label %159

153:                                              ; preds = %145
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %20, align 4
  br label %131

158:                                              ; preds = %143
  store i32 1, i32* %9, align 4
  br label %159

159:                                              ; preds = %158, %152, %124, %93
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i64 @OPENSSL_strnlen(i8*, i64) #1

declare dso_local i32 @doapr_outch(i8**, i8**, i64*, i64*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
