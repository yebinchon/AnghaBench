; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_strcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_UNICODE_LATEST = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@U8_STRCMP_CS = common dso_local global i32 0, align 4
@U8_STRCMP_CI_UPPER = common dso_local global i32 0, align 4
@U8_STRCMP_CI_LOWER = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@U8_CANON_DECOMP = common dso_local global i32 0, align 4
@U8_COMPAT_DECOMP = common dso_local global i32 0, align 4
@U8_CANON_COMP = common dso_local global i32 0, align 4
@U8_STRCMP_NFD = common dso_local global i32 0, align 4
@U8_STRCMP_NFC = common dso_local global i32 0, align 4
@U8_STRCMP_NFKD = common dso_local global i32 0, align 4
@U8_STRCMP_NFKC = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @u8_strcmp(i8* %0, i8* %1, i64 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @U8_UNICODE_LATEST, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @ERANGE, align 4
  %23 = load i32*, i32** %13, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* @U8_UNICODE_LATEST, align 8
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @U8_STRCMP_CS, align 4
  store i32 %29, i32* %11, align 4
  br label %92

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @U8_STRCMP_CS, align 4
  %33 = load i32, i32* @U8_STRCMP_CI_UPPER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @U8_STRCMP_CI_LOWER, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @U8_STRCMP_CS, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %61

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @U8_STRCMP_CS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @U8_STRCMP_CI_UPPER, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @U8_STRCMP_CI_LOWER, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @EBADF, align 4
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @U8_STRCMP_CS, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %52, %48, %44
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @U8_CANON_DECOMP, align 4
  %64 = load i32, i32* @U8_COMPAT_DECOMP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @U8_CANON_COMP, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %62, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %61
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @U8_STRCMP_NFD, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @U8_STRCMP_NFC, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @U8_STRCMP_NFKD, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @U8_STRCMP_NFKC, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @EBADF, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @U8_STRCMP_CS, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %83, %79, %75, %71, %61
  br label %92

92:                                               ; preds = %91, %28
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @U8_STRCMP_CS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strcmp(i8* %100, i8* %101)
  br label %108

103:                                              ; preds = %96
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @strncmp(i8* %104, i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i32 [ %102, %99 ], [ %107, %103 ]
  store i32 %109, i32* %7, align 4
  br label %172

110:                                              ; preds = %92
  %111 = load i8*, i8** %8, align 8
  %112 = call i64 @strlen(i8* %111)
  store i64 %112, i64* %15, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i64 @strlen(i8* %113)
  store i64 %114, i64* %16, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  store i64 %122, i64* %15, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %16, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %110
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @U8_STRCMP_CI_UPPER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i64, i64* %12, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load i8*, i8** %9, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i32, i32* @B_TRUE, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @do_case_compare(i64 %135, i32* %137, i32* %139, i64 %140, i64 %141, i32 %142, i32* %143)
  store i32 %144, i32* %7, align 4
  br label %172

145:                                              ; preds = %130
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @U8_STRCMP_CI_LOWER, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i64, i64* %12, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load i8*, i8** %9, align 8
  %154 = bitcast i8* %153 to i32*
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load i32, i32* @B_FALSE, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @do_case_compare(i64 %150, i32* %152, i32* %154, i64 %155, i64 %156, i32 %157, i32* %158)
  store i32 %159, i32* %7, align 4
  br label %172

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %12, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i8*, i8** %9, align 8
  %166 = bitcast i8* %165 to i32*
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @do_norm_compare(i64 %162, i32* %164, i32* %166, i64 %167, i64 %168, i32 %169, i32* %170)
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %161, %149, %134, %108
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @do_case_compare(i64, i32*, i32*, i64, i64, i32, i32*) #1

declare dso_local i32 @do_norm_compare(i64, i32*, i32*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
