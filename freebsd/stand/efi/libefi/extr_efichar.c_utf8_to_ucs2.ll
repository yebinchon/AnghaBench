; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efichar.c_utf8_to_ucs2.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efichar.c_utf8_to_ucs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_to_ucs2(i8* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64**, i64*** %6, align 8
  %15 = load i64*, i64** %14, align 8
  %16 = icmp eq i64* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i64**, i64*** %6, align 8
  %24 = load i64*, i64** %23, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = call i64* @malloc(i64 %27)
  %29 = load i64**, i64*** %6, align 8
  store i64* %28, i64** %29, align 8
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i64**, i64*** %6, align 8
  %32 = load i64*, i64** %31, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %151

36:                                               ; preds = %30
  %37 = load i64**, i64*** %6, align 8
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %121, %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %122

51:                                               ; preds = %49
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 192
  %58 = icmp ne i32 %57, 128
  br i1 %58, label %59, label %90

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %142

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 248
  %66 = icmp eq i32 %65, 240
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 7
  store i32 %69, i32* %10, align 4
  store i32 3, i32* %12, align 4
  br label %89

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 240
  %73 = icmp eq i32 %72, 224
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 15
  store i32 %76, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %88

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 224
  %80 = icmp eq i32 %79, 192
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 31
  store i32 %83, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 127
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %67
  br label %107

90:                                               ; preds = %51
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, 6
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 63
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %142

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 65535
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %142

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %8, align 8
  store i64 %116, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = sub i64 %119, 2
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %114, %107
  br label %41

122:                                              ; preds = %49
  %123 = load i64, i64* %9, align 8
  %124 = icmp ult i64 %123, 2
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i64*, i64** %8, align 8
  %130 = call i32 @free(i64* %129)
  %131 = load i64**, i64*** %6, align 8
  store i64* null, i64** %131, align 8
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* @EDOOFUS, align 4
  store i32 %133, i32* %4, align 4
  br label %151

134:                                              ; preds = %122
  %135 = load i64, i64* %9, align 8
  %136 = sub i64 %135, 2
  store i64 %136, i64* %9, align 8
  %137 = load i64*, i64** %8, align 8
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, %138
  store i64 %141, i64* %139, align 8
  store i32 0, i32* %4, align 4
  br label %151

142:                                              ; preds = %113, %104, %62
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64*, i64** %8, align 8
  %147 = call i32 @free(i64* %146)
  %148 = load i64**, i64*** %6, align 8
  store i64* null, i64** %148, align 8
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* @EILSEQ, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %134, %132, %34
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
