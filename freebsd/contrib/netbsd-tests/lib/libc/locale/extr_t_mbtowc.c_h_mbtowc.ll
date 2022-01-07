; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_mbtowc.c_h_mbtowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_mbtowc.c_h_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Locale %s not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Using locale: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Locale is state-%sdependent\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VIS_WHITE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Checking illegal sequence: \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"mbtowc() returned: %zd\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"errno: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"Checking legal sequence: \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Ok.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @h_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_mbtowc(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i8* @setlocale(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ATF_REQUIRE_STREQ(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @LC_CTYPE, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @setlocale(i32 %14, i8* %15)
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %116

22:                                               ; preds = %3
  %23 = load i32, i32* @LC_ALL, align 4
  %24 = call i8* @setlocale(i32 %23, i8* null)
  store i8* %24, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ATF_REQUIRE(i32 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i64 @wctomb(i32* null, i32 0)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = call i64 @mbtowc(i32* null, i8* null, i32 0)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i64, i64* %9, align 8
  br label %47

41:                                               ; preds = %22
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %41, %39
  %48 = phi i64 [ %40, %39 ], [ %46, %41 ]
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ATF_REQUIRE(i32 %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @VIS_WHITE, align 4
  %54 = load i32, i32* @VIS_OCTAL, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @strvis(i8* %51, i8* %52, i32 %55)
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i64 @mbtowc(i32* null, i8* %59, i32 %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @ATF_REQUIRE_EQ(i64 %65, i64 -1)
  %67 = load i64, i64* @errno, align 8
  %68 = call i8* @strerror(i64 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %68)
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EILSEQ, align 8
  %72 = call i32 @ATF_REQUIRE_EQ(i64 %70, i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %47
  %76 = call i64 @mbtowc(i32* null, i8* null, i32 0)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  br label %87

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  br label %87

87:                                               ; preds = %81, %79
  %88 = phi i64 [ %80, %79 ], [ %86, %81 ]
  %89 = trunc i64 %88 to i32
  %90 = call i32 @ATF_REQUIRE(i32 %89)
  br label %91

91:                                               ; preds = %87, %47
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @VIS_WHITE, align 4
  %95 = load i32, i32* @VIS_OCTAL, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @strvis(i8* %92, i8* %93, i32 %96)
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  store i64 0, i64* @errno, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i64 @mbtowc(i32* null, i8* %100, i32 %102)
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %9, align 8
  %107 = icmp ne i64 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @ATF_REQUIRE(i32 %108)
  %110 = load i64, i64* @errno, align 8
  %111 = call i8* @strerror(i64 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = load i64, i64* @errno, align 8
  %114 = call i32 @ATF_REQUIRE_EQ(i64 %113, i64 0)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %91, %18
  ret void
}

declare dso_local i32 @ATF_REQUIRE_STREQ(i8*, i8*) #1

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @wctomb(i32*, i32) #1

declare dso_local i64 @mbtowc(i32*, i8*, i32) #1

declare dso_local i32 @strvis(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i64, i64) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
