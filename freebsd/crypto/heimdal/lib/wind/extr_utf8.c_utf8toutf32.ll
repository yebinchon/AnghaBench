; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_utf8toutf32.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_utf8toutf32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_ERR_INVALID_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @utf8toutf32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8toutf32(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %141

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 224
  %25 = icmp eq i32 %24, 192
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 192
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 %36, 6
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 63
  %40 = or i32 %37, %39
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %43, i32* %3, align 4
  br label %147

44:                                               ; preds = %34
  br label %140

45:                                               ; preds = %22
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 240
  %48 = icmp eq i32 %47, 224
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 192
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 192
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 15
  %68 = shl i32 %67, 12
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 63
  %71 = shl i32 %70, 6
  %72 = or i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 63
  %75 = or i32 %72, %74
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %79

77:                                               ; preds = %57
  %78 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %78, i32* %3, align 4
  br label %147

79:                                               ; preds = %65
  br label %82

80:                                               ; preds = %49
  %81 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %81, i32* %3, align 4
  br label %147

82:                                               ; preds = %79
  br label %139

83:                                               ; preds = %45
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 248
  %86 = icmp eq i32 %85, 240
  br i1 %86, label %87, label %136

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 192
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %133

95:                                               ; preds = %87
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, 192
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %130

103:                                              ; preds = %95
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 192
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 7
  %114 = shl i32 %113, 18
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 63
  %117 = shl i32 %116, 12
  %118 = or i32 %114, %117
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 6
  %122 = or i32 %118, %121
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 63
  %125 = or i32 %122, %124
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  br label %129

127:                                              ; preds = %103
  %128 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %128, i32* %3, align 4
  br label %147

129:                                              ; preds = %111
  br label %132

130:                                              ; preds = %95
  %131 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %131, i32* %3, align 4
  br label %147

132:                                              ; preds = %129
  br label %135

133:                                              ; preds = %87
  %134 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %134, i32* %3, align 4
  br label %147

135:                                              ; preds = %132
  br label %138

136:                                              ; preds = %83
  %137 = load i32, i32* @WIND_ERR_INVALID_UTF8, align 4
  store i32 %137, i32* %3, align 4
  br label %147

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %82
  br label %140

140:                                              ; preds = %139, %44
  br label %144

141:                                              ; preds = %2
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %140
  %145 = load i8*, i8** %6, align 8
  %146 = load i8**, i8*** %4, align 8
  store i8* %145, i8** %146, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %136, %133, %130, %127, %80, %77, %42
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
