; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_find_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_find_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@znum_too_large = common dso_local global i32 0, align 4
@pz_enum_err_fmt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@option_usage_fp = common dso_local global i32 0, align 4
@zNoKey = common dso_local global i32 0, align 4
@zambiguous_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32*, i8**, i32)* @find_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_name(i8* %0, i32* %1, i32* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @IS_DEC_DIGIT_CHAR(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strtoul(i8* %26, i8** %15, i32 0)
  store i64 %27, i64* %16, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @NUL, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i64, i64* %16, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %16, align 8
  store i64 %40, i64* %6, align 8
  br label %162

41:                                               ; preds = %34, %25
  %42 = load i32, i32* @znum_too_large, align 4
  store i32 %42, i32* @pz_enum_err_fmt, align 4
  %43 = load i32, i32* @stderr, align 4
  store i32 %43, i32* @option_usage_fp, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @enum_err(i32* %44, i32* %45, i8** %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %6, align 8
  br label %162

51:                                               ; preds = %5
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @IS_INVERSION_CHAR(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @NUL, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 126
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 48
  br i1 %75, label %88, label %76

76:                                               ; preds = %70, %64
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 49
  br i1 %87, label %88, label %92

88:                                               ; preds = %82, %70
  %89 = load i32, i32* %11, align 4
  %90 = sub i32 %89, 1
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %6, align 8
  br label %162

92:                                               ; preds = %82, %76
  br label %143

93:                                               ; preds = %56, %51
  store i64 0, i64* %14, align 8
  br label %94

94:                                               ; preds = %132, %93
  %95 = load i64, i64* %14, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %94
  %100 = load i8**, i8*** %10, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i64 @strncmp(i8* %103, i8* %104, i64 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %99
  %109 = load i8**, i8*** %10, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @NUL, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i64, i64* %14, align 8
  store i64 %121, i64* %6, align 8
  br label %162

122:                                              ; preds = %108
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i64, i64* %14, align 8
  store i64 %128, i64* %12, align 8
  br label %130

129:                                              ; preds = %122
  store i64 -1, i64* %12, align 8
  br label %130

130:                                              ; preds = %129, %127
  br label %131

131:                                              ; preds = %130, %99
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %14, align 8
  br label %94

135:                                              ; preds = %94
  %136 = load i64, i64* %12, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = icmp ult i64 %136, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i64, i64* %12, align 8
  store i64 %141, i64* %6, align 8
  br label %162

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %92
  %144 = load i64, i64* %12, align 8
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @zNoKey, align 4
  br label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @zambiguous_key, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* @pz_enum_err_fmt, align 4
  %154 = load i32, i32* @stderr, align 4
  store i32 %154, i32* @option_usage_fp, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load i8**, i8*** %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @enum_err(i32* %155, i32* %156, i8** %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %6, align 8
  br label %162

162:                                              ; preds = %152, %140, %120, %88, %41, %39
  %163 = load i64, i64* %6, align 8
  ret i64 %163
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IS_DEC_DIGIT_CHAR(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @enum_err(i32*, i32*, i8**, i32) #1

declare dso_local i64 @IS_INVERSION_CHAR(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
