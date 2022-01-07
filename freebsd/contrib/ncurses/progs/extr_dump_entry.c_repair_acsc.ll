; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_repair_acsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_repair_acsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acs_chars = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repair_acsc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i8*, i8** @acs_chars, align 8
  %11 = call i64 @VALID_STRING(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %130

13:                                               ; preds = %1
  store i8 0, i8* %6, align 1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %13
  %16 = load i8*, i8** @acs_chars, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = load i8*, i8** @acs_chars, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @UChar(i8 signext %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %9, align 4
  br label %48

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** @acs_chars, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %15

48:                                               ; preds = %31, %15
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %129

51:                                               ; preds = %48
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %53 = call i32 @memset(i8* %52, i32 0, i32 256)
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %86, %51
  %55 = load i8*, i8** @acs_chars, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %54
  %62 = load i8*, i8** @acs_chars, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @UChar(i8 signext %65)
  store i32 %66, i32* %7, align 4
  %67 = load i8*, i8** @acs_chars, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %78
  store i8 %76, i8* %79, align 1
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %85

82:                                               ; preds = %61
  %83 = load i32, i32* %7, align 4
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %6, align 1
  br label %85

85:                                               ; preds = %82, %74
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %54

89:                                               ; preds = %54
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %113, %89
  %91 = load i64, i64* %3, align 8
  %92 = icmp ult i64 %91, 256
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i64, i64* %3, align 8
  %100 = trunc i64 %99 to i8
  %101 = load i8*, i8** @acs_chars, align 8
  %102 = load i64, i64* %4, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %4, align 8
  %104 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 %100, i8* %104, align 1
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** @acs_chars, align 8
  %109 = load i64, i64* %4, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %4, align 8
  %111 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 %107, i8* %111, align 1
  br label %112

112:                                              ; preds = %98, %93
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %3, align 8
  br label %90

116:                                              ; preds = %90
  %117 = load i8, i8* %6, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i8, i8* %6, align 1
  %121 = load i8*, i8** @acs_chars, align 8
  %122 = load i64, i64* %4, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %4, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i8*, i8** @acs_chars, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %125, %48
  br label %130

130:                                              ; preds = %129, %1
  ret void
}

declare dso_local i64 @VALID_STRING(i8*) #1

declare dso_local i32 @UChar(i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
