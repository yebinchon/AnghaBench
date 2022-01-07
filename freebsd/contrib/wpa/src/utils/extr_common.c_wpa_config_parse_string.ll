; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_wpa_config_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_wpa_config_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_config_parse_string(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @os_strrchr(i8* %22, i8 signext 34)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %19
  store i8* null, i8** %3, align 8
  br label %137

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @dup_binstr(i8* %40, i64 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i8* null, i8** %3, align 8
  br label %137

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %3, align 8
  br label %137

49:                                               ; preds = %2
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 80
  br i1 %53, label %54, label %105

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %105

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @os_strrchr(i8* %63, i8 signext 34)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %60
  store i8* null, i8** %3, align 8
  br label %137

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  store i64 %79, i64* %11, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i8* @dup_binstr(i8* %80, i64 %81)
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i8* null, i8** %3, align 8
  br label %137

86:                                               ; preds = %74
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  %89 = call i8* @os_malloc(i64 %88)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @os_free(i8* %93)
  store i8* null, i8** %3, align 8
  br label %137

95:                                               ; preds = %86
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  %99 = load i8*, i8** %9, align 8
  %100 = call i64 @printf_decode(i8* %96, i64 %98, i8* %99)
  %101 = load i64*, i64** %5, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @os_free(i8* %102)
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** %3, align 8
  br label %137

105:                                              ; preds = %54, %49
  %106 = load i8*, i8** %4, align 8
  %107 = call i64 @os_strlen(i8* %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = and i64 %108, 1
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i8* null, i8** %3, align 8
  br label %137

112:                                              ; preds = %105
  %113 = load i64, i64* %14, align 8
  %114 = udiv i64 %113, 2
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  %117 = call i8* @os_malloc(i64 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i8* null, i8** %3, align 8
  br label %137

121:                                              ; preds = %112
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @hexstr2bin(i8* %122, i8* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @os_free(i8* %128)
  store i8* null, i8** %3, align 8
  br label %137

130:                                              ; preds = %121
  %131 = load i8*, i8** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load i64, i64* %13, align 8
  %135 = load i64*, i64** %5, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i8*, i8** %12, align 8
  store i8* %136, i8** %3, align 8
  br label %137

137:                                              ; preds = %130, %127, %120, %111, %95, %92, %85, %73, %47, %46, %32
  %138 = load i8*, i8** %3, align 8
  ret i8* %138
}

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i8* @dup_binstr(i8*, i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @printf_decode(i8*, i64, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
