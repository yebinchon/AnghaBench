; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_t-fget.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_t-fget.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check.fn = internal global [6 x i8] c"tfget\00", align 1
@SmFtStdio = common dso_local global i32 0, align 4
@SM_TIME_DEFAULT = common dso_local global i32 0, align 4
@SM_IO_WRONLY_B = common dso_local global i32 0, align 4
@SM_IO_RDONLY_B = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"buf='%s', in='%s', r=%d, l=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @SmFtStdio, align 4
  %12 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %13 = load i32, i32* @SM_IO_WRONLY_B, align 4
  %14 = call i32* @sm_io_open(i32 %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @check.fn, i64 0, i64 0), i32 %13, i32* null)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @SM_TEST(i32 %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %36, %2
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @sm_io_putc(i32* %24, i32 %25, i8 signext %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @SM_TEST(i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %42 = call i32 @sm_io_close(i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @SM_TEST(i32 %45)
  %47 = load i32, i32* @SmFtStdio, align 4
  %48 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %49 = load i32, i32* @SM_IO_RDONLY_B, align 4
  %50 = call i32* @sm_io_open(i32 %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @check.fn, i64 0, i64 0), i32 %49, i32* null)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @SM_TEST(i32 %53)
  store i64 256, i64* %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @sm_io_fgets(i32* %55, i32 %56, i8* %57, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %39
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, -1
  %65 = zext i1 %64 to i32
  %66 = call i32 @SM_TEST(i32 %65)
  %67 = load i64, i64* @errno, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @SM_TEST(i32 %69)
  br label %88

71:                                               ; preds = %39
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @SM_TEST(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* @stderr, align 4
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %71
  br label %88

88:                                               ; preds = %87, %62
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @memcmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @SM_TEST(i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %98 = call i32 @sm_io_close(i32* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @SM_TEST(i32 %101)
  ret void
}

declare dso_local i32* @sm_io_open(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @SM_TEST(i32) #1

declare dso_local i32 @sm_io_putc(i32*, i32, i8 signext) #1

declare dso_local i32 @sm_io_close(i32*, i32) #1

declare dso_local i32 @sm_io_fgets(i32*, i32, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
