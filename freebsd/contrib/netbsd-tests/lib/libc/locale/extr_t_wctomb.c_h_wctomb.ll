; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_wctomb.c_h_wctomb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_wctomb.c_h_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i8*, i64, i64* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Locale %s not found.\0A\00", align 1
@VIS_WHITE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Checking sequence: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Using locale: %s\0A\00", align 1
@TC_WCRTOMB_ST = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"mbsrtowcs() returned: %zu, expected: %zu\00", align 1
@TC_WCTOMB = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"At position %zd:\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"  expected: %zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  got     : %zd\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Test failed\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Ok.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test*, i8)* @h_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_wctomb(%struct.test* %0, i8 signext %1) #0 {
  %3 = alloca %struct.test*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [18 x i32], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.test* %0, %struct.test** %3, align 8
  store i8 %1, i8* %4, align 1
  %17 = load i32, i32* @MB_LEN_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32* null, i32** %12, align 8
  %21 = load i32, i32* @LC_ALL, align 4
  %22 = call i8* @setlocale(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ATF_REQUIRE_STREQ(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @LC_CTYPE, align 4
  %25 = load %struct.test*, %struct.test** %3, align 8
  %26 = getelementptr inbounds %struct.test, %struct.test* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @setlocale(i32 %24, i8* %27)
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.test*, %struct.test** %3, align 8
  %33 = getelementptr inbounds %struct.test, %struct.test* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 1, i32* %16, align 4
  br label %145

36:                                               ; preds = %2
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %38 = load %struct.test*, %struct.test** %3, align 8
  %39 = getelementptr inbounds %struct.test, %struct.test* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @VIS_WHITE, align 4
  %42 = load i32, i32* @VIS_OCTAL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @strvis(i8* %37, i8* %40, i32 %43)
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @LC_ALL, align 4
  %48 = call i8* @setlocale(i32 %47, i8* null)
  store i8* %48, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @ATF_REQUIRE(i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @TC_WCRTOMB_ST, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = call i32 @memset(i32* %11, i32 0, i32 4)
  store i32* %11, i32** %12, align 8
  br label %61

61:                                               ; preds = %59, %36
  %62 = load %struct.test*, %struct.test** %3, align 8
  %63 = getelementptr inbounds %struct.test, %struct.test* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %64
  store i32 88, i32* %65, align 4
  %66 = load %struct.test*, %struct.test** %3, align 8
  %67 = getelementptr inbounds %struct.test, %struct.test* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %70 = load %struct.test*, %struct.test** %3, align 8
  %71 = getelementptr inbounds %struct.test, %struct.test* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 2
  %74 = trunc i64 %73 to i32
  %75 = call i64 @mbsrtowcs(i32* %69, i8** %9, i32 %74, i32* null)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.test*, %struct.test** %3, align 8
  %78 = getelementptr inbounds %struct.test, %struct.test* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.test*, %struct.test** %3, align 8
  %83 = getelementptr inbounds %struct.test, %struct.test* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @ATF_REQUIRE_EQ_MSG(i64 %76, i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %81, i32 %85)
  %87 = load %struct.test*, %struct.test** %3, align 8
  %88 = getelementptr inbounds %struct.test, %struct.test* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ATF_REQUIRE_EQ(i32 %91, i32 0)
  store i64 0, i64* %15, align 8
  br label %93

93:                                               ; preds = %140, %61
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.test*, %struct.test** %3, align 8
  %96 = getelementptr inbounds %struct.test, %struct.test* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = icmp ult i64 %94, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %93
  %101 = load i8, i8* %4, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @TC_WCTOMB, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @wctomb(i8* %20, i32 %109)
  store i64 %110, i64* %14, align 8
  br label %117

111:                                              ; preds = %100
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i64 @wcrtomb(i8* %20, i32 %114, i32* %115)
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.test*, %struct.test** %3, align 8
  %120 = getelementptr inbounds %struct.test, %struct.test* %119, i32 0, i32 3
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %118, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %140

127:                                              ; preds = %117
  %128 = load i64, i64* %15, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  %130 = load %struct.test*, %struct.test** %3, align 8
  %131 = getelementptr inbounds %struct.test, %struct.test* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* %14, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %137)
  %139 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %127, %126
  %141 = load i64, i64* %15, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %15, align 8
  br label %93

143:                                              ; preds = %93
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %143, %30
  %146 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %16, align 4
  switch i32 %147, label %149 [
    i32 0, label %148
    i32 1, label %148
  ]

148:                                              ; preds = %145, %145
  ret void

149:                                              ; preds = %145
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ATF_REQUIRE_STREQ(i8*, i8*) #2

declare dso_local i8* @setlocale(i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strvis(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @mbsrtowcs(i32*, i8**, i32, i32*) #2

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i64, i32, i8*, i64, i32) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i64 @wctomb(i8*, i32) #2

declare dso_local i64 @wcrtomb(i8*, i32, i32*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
