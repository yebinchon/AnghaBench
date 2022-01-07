; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-pbkdf2.c_pbkdf2_sha1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-pbkdf2.c_pbkdf2_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pbkdf2_sha1(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %12, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i64, i64* %13, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i32, i32* @SHA1_MAC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  br label %27

27:                                               ; preds = %51, %6
  %28 = load i64, i64* %16, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @pbkdf2_sha1_f(i8* %33, i8* %34, i64 %35, i32 %36, i32 %37, i8* %26)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %63

41:                                               ; preds = %30
  %42 = load i64, i64* %16, align 8
  %43 = load i32, i32* @SHA1_MAC_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @SHA1_MAC_LEN, align 4
  %48 = sext i32 %47 to i64
  br label %51

49:                                               ; preds = %41
  %50 = load i64, i64* %16, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  store i64 %52, i64* %17, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @os_memcpy(i8* %53, i8* %26, i64 %54)
  %56 = load i64, i64* %17, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %15, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %16, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %16, align 8
  br label %27

62:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pbkdf2_sha1_f(i8*, i8*, i64, i32, i32, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
