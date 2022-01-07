; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_ERR_LENGTH_NOT_MOD2 = common dso_local global i32 0, align 4
@WIND_RW_BOM = common dso_local global i32 0, align 4
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@WIND_RW_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_ucs2write(i32* %0, i64 %1, i32* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i8*, i8** %10, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @WIND_ERR_LENGTH_NOT_MOD2, align 4
  store i32 %22, i32* %6, align 4
  br label %133

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %6, align 4
  br label %133

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WIND_RW_BOM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  store i32 65534, i32* %14, align 4
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %38, i32* %6, align 4
  br label %133

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WIND_RW_LE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %48, i8* %50, align 1
  %51 = load i32, i32* %14, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  br label %69

57:                                               ; preds = %39
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %14, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  br label %69

69:                                               ; preds = %57, %45
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, 2
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %69, %28
  br label %73

73:                                               ; preds = %119, %72
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load i64, i64* %13, align 8
  %78 = icmp ult i64 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %80, i32* %6, align 4
  br label %133

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WIND_RW_LE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %94, align 1
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %100, i8* %102, align 1
  br label %119

103:                                              ; preds = %81
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %116, i8* %118, align 1
  br label %119

119:                                              ; preds = %103, %87
  %120 = load i64, i64* %13, align 8
  %121 = sub i64 %120, 2
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %8, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8* %125, i8** %12, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %7, align 8
  br label %73

128:                                              ; preds = %73
  %129 = load i64, i64* %13, align 8
  %130 = load i64*, i64** %11, align 8
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, %129
  store i64 %132, i64* %130, align 8
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %128, %79, %37, %26, %21
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
