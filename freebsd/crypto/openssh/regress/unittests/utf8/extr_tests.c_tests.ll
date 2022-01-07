; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/utf8/extr_tests.c_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/utf8/extr_tests.c_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"utf8_setlocale\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"a\0Ab\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"a\0Db\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"a\09b\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"esc\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\1Bx\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\\033x\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"inv_badbyte\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\FFx\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\\377x\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"inv_nocont\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\E1x\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\\341x\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"inv_nolead\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"a\80b\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"a\\200b\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sz_ascii\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"1234567890123456\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"123456789012345\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sz_esc\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"123456789012\1B\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"123456789012\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"width_ascii\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"width_double\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"a\E3\81\81\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"double_fit\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"double_spc\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"C_setlocale\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"a\\343\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"a\\343\\201\\201\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @TEST_START(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @LC_CTYPE, align 4
  %4 = call i8* @setlocale(i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @ASSERT_PTR_NE(i8* %5, i32* null)
  %7 = call i32 (...) @TEST_DONE()
  %8 = call i32 (...) @badarg()
  %9 = call i32 @one(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @one(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @one(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 @one(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %13 = call i32 @one(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %14 = call i32 @one(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %15 = call i32 @one(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %16 = call i32 @one(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %17 = call i32 @one(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %18 = call i32 @one(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 -2, i32 -2, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %19 = call i32 @one(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 -2, i32 -2, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %20 = call i32 @one(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 2, i32 2, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %21 = call i32 @one(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 2, i32 1, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %22 = call i32 @one(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 3, i32 3, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %23 = call i32 @one(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 4, i32 3, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %24 = call i32 @TEST_START(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %25 = load i32, i32* @LC_CTYPE, align 4
  %26 = call i8* @setlocale(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @ASSERT_PTR_NE(i8* %27, i32* null)
  %29 = call i32 (...) @TEST_DONE()
  %30 = call i32 (...) @badarg()
  %31 = call i32 @one(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @one(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %33 = call i32 @one(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @one(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %35 = call i32 @one(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %36 = call i32 @one(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %37 = call i32 @one(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %38 = call i32 @one(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %39 = call i32 @one(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 -2, i32 -2, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %40 = call i32 @one(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 -2, i32 -2, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %41 = call i32 @one(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 -2, i32 -2, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %42 = call i32 @one(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 2, i32 2, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %43 = call i32 @one(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 2, i32 1, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %44 = call i32 @one(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 7, i32 5, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %45 = call i32 @one(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 13, i32 13, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @ASSERT_PTR_NE(i8*, i32*) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i32 @badarg(...) #1

declare dso_local i32 @one(i32, i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
