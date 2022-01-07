; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_open_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_open_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@BIO_FP_TEXT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Can't open \22%s\22 for writing, %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bio_open_owner(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %16, %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @bio_open_default(i8* %24, i8 signext 119, i32 %25)
  store i32* %26, i32** %4, align 8
  br label %88

27:                                               ; preds = %19
  %28 = load i32, i32* @O_WRONLY, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @istext(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, i32, i32, ...) @open(i8* %35, i32 %36, i32 384)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %66

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @modestr(i8 signext 119, i32 %43)
  %45 = call i32* @fdopen(i32 %42, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %66

49:                                               ; preds = %41
  %50 = load i32, i32* @BIO_CLOSE, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @BIO_FP_TEXT, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32* @BIO_new_fp(i32* %58, i32 %59)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32*, i32** %9, align 8
  store i32* %64, i32** %4, align 8
  br label %88

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %48, %40
  %67 = load i32, i32* @bio_err, align 4
  %68 = call i32 (...) @opt_getprog()
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 @BIO_printf(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69, i32 %71)
  %73 = load i32, i32* @bio_err, align 4
  %74 = call i32 @ERR_print_errors(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @fclose(i32* %78)
  br label %87

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %77
  store i32* null, i32** %4, align 8
  br label %88

88:                                               ; preds = %87, %63, %23
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32 @istext(i32) #1

declare dso_local i32 @open(i8*, i32, i32, ...) #1

declare dso_local i32* @fdopen(i32, i32) #1

declare dso_local i32 @modestr(i8 signext, i32) #1

declare dso_local i32* @BIO_new_fp(i32*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
