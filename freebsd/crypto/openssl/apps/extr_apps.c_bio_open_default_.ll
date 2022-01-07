; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_open_default_.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_open_default_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't open %s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Can't open %s for %s, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8, i32, i32)* @bio_open_default_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bio_open_default_(i8* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %13, %4
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 114
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i32* @dup_bio_in(i32 %22)
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @dup_bio_out(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32* [ %23, %21 ], [ %26, %24 ]
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 (...) @ERR_clear_error()
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %5, align 8
  br label %76

34:                                               ; preds = %27
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  store i32* %38, i32** %5, align 8
  br label %76

39:                                               ; preds = %34
  %40 = load i32, i32* @bio_err, align 4
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 114
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %47)
  br label %73

49:                                               ; preds = %13
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %7, align 1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @modestr(i8 signext %51, i32 %52)
  %54 = call i32* @BIO_new_file(i8* %50, i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = call i32 (...) @ERR_clear_error()
  %59 = load i32*, i32** %10, align 8
  store i32* %59, i32** %5, align 8
  br label %76

60:                                               ; preds = %49
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %5, align 8
  br label %76

65:                                               ; preds = %60
  %66 = load i32, i32* @bio_err, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %7, align 1
  %69 = call i32 @modeverb(i8 signext %68)
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 (i32, i8*, i8*, i32, ...) @BIO_printf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %39
  %74 = load i32, i32* @bio_err, align 4
  %75 = call i32 @ERR_print_errors(i32 %74)
  store i32* null, i32** %5, align 8
  br label %76

76:                                               ; preds = %73, %63, %57, %37, %31
  %77 = load i32*, i32** %5, align 8
  ret i32* %77
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @dup_bio_out(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @BIO_new_file(i8*, i32) #1

declare dso_local i32 @modestr(i8 signext, i32) #1

declare dso_local i32 @modeverb(i8 signext) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
