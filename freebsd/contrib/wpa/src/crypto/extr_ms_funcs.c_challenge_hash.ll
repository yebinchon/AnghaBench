; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_challenge_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_challenge_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @challenge_hash(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i8*], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @SHA1_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 0
  store i8* %21, i8** %22, align 16
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  store i64 16, i64* %23, align 16
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 16, i64* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 2
  store i8* %27, i8** %28, align 16
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %33 = call i64 @sha1_vector(i32 3, i8** %31, i64* %32, i8* %20)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %39

36:                                               ; preds = %5
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @os_memcpy(i8* %37, i8* %20, i32 8)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sha1_vector(i32, i8**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
