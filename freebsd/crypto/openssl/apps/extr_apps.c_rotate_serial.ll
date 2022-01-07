; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_rotate_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_rotate_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"file name too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to rename %s to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@ENOTDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rotate_serial(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @BSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = mul nuw i64 2, %14
  %17 = alloca i8, i64 %16, align 16
  store i64 %14, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %3
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @BSIZE, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @bio_err, align 4
  %40 = call i32 (i32, i8*, ...) @BIO_printf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %92

41:                                               ; preds = %33
  %42 = mul nsw i64 0, %14
  %43 = getelementptr inbounds i8, i8* %17, i64 %42
  %44 = mul nsw i64 0, %14
  %45 = getelementptr inbounds i8, i8* %17, i64 %44
  %46 = trunc i64 %14 to i32
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @BIO_snprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  store i32 %49, i32* %11, align 4
  %50 = mul nsw i64 1, %14
  %51 = getelementptr inbounds i8, i8* %17, i64 %50
  %52 = mul nsw i64 1, %14
  %53 = getelementptr inbounds i8, i8* %17, i64 %52
  %54 = trunc i64 %14 to i32
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @BIO_snprintf(i8* %51, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = mul nsw i64 1, %14
  %60 = getelementptr inbounds i8, i8* %17, i64 %59
  %61 = call i64 @rename(i8* %58, i8* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %41
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @ENOENT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @bio_err, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = mul nsw i64 1, %14
  %71 = getelementptr inbounds i8, i8* %17, i64 %70
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %71)
  %73 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %92

74:                                               ; preds = %63, %41
  %75 = mul nsw i64 0, %14
  %76 = getelementptr inbounds i8, i8* %17, i64 %75
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @rename(i8* %76, i8* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i32, i32* @bio_err, align 4
  %82 = mul nsw i64 0, %14
  %83 = getelementptr inbounds i8, i8* %17, i64 %82
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (i32, i8*, ...) @BIO_printf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %84)
  %86 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %87 = mul nsw i64 1, %14
  %88 = getelementptr inbounds i8, i8* %17, i64 %87
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @rename(i8* %88, i8* %89)
  br label %92

91:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %93

92:                                               ; preds = %80, %67, %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
