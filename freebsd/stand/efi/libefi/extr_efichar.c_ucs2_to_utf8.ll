; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efichar.c_ucs2_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efichar.c_ucs2_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucs2_to_utf8(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @utf8_len_of_ucs2(i32* %15)
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @malloc(i64 %26)
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  store i8* %27, i8** %9, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %3, align 4
  br label %144

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %126, %35
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 2047
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 12
  %54 = or i32 224, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 6
  %66 = and i32 %65, 63
  %67 = or i32 128, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 63
  %79 = or i32 128, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %76, %71
  br label %126

84:                                               ; preds = %40
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 127
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 6
  %95 = and i32 %94, 31
  %96 = or i32 192, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  store i8 %97, i8* %98, align 1
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 63
  %108 = or i32 128, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %105, %100
  br label %125

113:                                              ; preds = %84
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 127
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  store i8 %121, i8* %122, align 1
  br label %124

124:                                              ; preds = %118, %113
  br label %125

125:                                              ; preds = %124, %112
  br label %126

126:                                              ; preds = %125, %83
  br label %36

127:                                              ; preds = %36
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i8**, i8*** %5, align 8
  store i8* null, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, i32* @EOVERFLOW, align 4
  store i32 %140, i32* %3, align 4
  br label %144

141:                                              ; preds = %127
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  store i8 0, i8* %142, align 1
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %141, %139, %33
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @utf8_len_of_ucs2(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
