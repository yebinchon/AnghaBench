; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_RW_LE = common dso_local global i32 0, align 4
@WIND_ERR_LENGTH_NOT_MOD2 = common dso_local global i32 0, align 4
@WIND_RW_BOM = common dso_local global i32 0, align 4
@WIND_RW_BE = common dso_local global i32 0, align 4
@WIND_ERR_NO_BOM = common dso_local global i32 0, align 4
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_ucs2read(i8* %0, i64 %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WIND_RW_LE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i64*, i64** %11, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64*, i64** %11, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %6, align 4
  br label %147

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = and i64 %28, 1
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WIND_ERR_LENGTH_NOT_MOD2, align 4
  store i32 %32, i32* %6, align 4
  br label %147

33:                                               ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WIND_RW_BOM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 65534
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 65279
  br i1 %54, label %55, label %63

55:                                               ; preds = %52, %39
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 65534
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 2
  store i64 %62, i64* %8, align 8
  br label %75

63:                                               ; preds = %52
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WIND_RW_LE, align 4
  %67 = load i32, i32* @WIND_RW_BE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @WIND_ERR_NO_BOM, align 4
  store i32 %73, i32* %6, align 4
  br label %147

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WIND_RW_BOM, align 4
  %79 = load i32, i32* @WIND_RW_LE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @WIND_RW_BE, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %77, %83
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* @WIND_RW_LE, align 4
  br label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @WIND_RW_BE, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %33
  br label %98

98:                                               ; preds = %133, %97
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %142

101:                                              ; preds = %98
  %102 = load i64, i64* %14, align 8
  %103 = icmp ult i64 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %105, i32* %6, align 4
  br label %147

106:                                              ; preds = %101
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 8
  %115 = load i8*, i8** %12, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %114, %118
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  br label %133

121:                                              ; preds = %106
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 8
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %126, %130
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %121, %109
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %10, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  store i8* %137, i8** %12, align 8
  %138 = load i64, i64* %8, align 8
  %139 = sub i64 %138, 2
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %14, align 8
  br label %98

142:                                              ; preds = %98
  %143 = load i64, i64* %14, align 8
  %144 = load i64*, i64** %11, align 8
  %145 = load i64, i64* %144, align 8
  %146 = sub i64 %145, %143
  store i64 %146, i64* %144, align 8
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %142, %104, %72, %31, %25
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
