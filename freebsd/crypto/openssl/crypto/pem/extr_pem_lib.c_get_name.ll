; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@PEM_F_GET_NAME = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PEM_R_NO_START_LINE = common dso_local global i32 0, align 4
@PEM_FLAG_ONLY_B64 = common dso_local global i32 0, align 4
@beginstr = common dso_local global i32 0, align 4
@BEGINLEN = common dso_local global i32 0, align 4
@TAILLEN = common dso_local global i32 0, align 4
@tailstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @LINESIZE, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @pem_malloc(i32 %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @PEM_F_GET_NAME, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @PEMerr(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %64, %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @LINESIZE, align 4
  %26 = call i32 @BIO_gets(i32* %23, i8* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @PEM_F_GET_NAME, align 4
  %31 = load i32, i32* @PEM_R_NO_START_LINE, align 4
  %32 = call i32 @PEMerr(i32 %30, i32 %31)
  br label %99

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PEM_FLAG_ONLY_B64, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @sanitize_line(i8* %34, i32 %35, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* @beginstr, align 4
  %44 = load i32, i32* @BEGINLEN, align 4
  %45 = call i64 @strncmp(i8* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TAILLEN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* @TAILLEN, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i32, i32* @tailstr, align 4
  %61 = load i32, i32* @TAILLEN, align 4
  %62 = call i64 @strncmp(i8* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %51, %47, %41
  %65 = phi i1 [ true, %47 ], [ true, %41 ], [ %63, %51 ]
  br i1 %65, label %22, label %66

66:                                               ; preds = %64
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @TAILLEN, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @BEGINLEN, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @TAILLEN, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @pem_malloc(i32 %79, i32 %80)
  %82 = load i8**, i8*** %6, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %66
  %87 = load i32, i32* @PEM_F_GET_NAME, align 4
  %88 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %89 = call i32 @PEMerr(i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %66
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @BEGINLEN, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @memcpy(i8* %92, i8* %96, i32 %97)
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %90, %86, %29
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @LINESIZE, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @pem_free(i8* %100, i32 %101, i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @pem_malloc(i32, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @sanitize_line(i8*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pem_free(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
