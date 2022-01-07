; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_b64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_b64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i64)* @fingerprint_b64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fingerprint_b64(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 2
  %18 = udiv i64 %17, 3
  %19 = mul i64 %18, 4
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = add i64 %21, 1
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %23, 65536
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = call i8* @calloc(i32 1, i64 %26)
  store i8* %27, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %3
  store i8* null, i8** %4, align 8
  br label %63

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @strlcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @strlcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  br label %63

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @b64_ntop(i32* %43, i64 %44, i8* %47, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @freezero(i8* %54, i64 %55)
  store i8* null, i8** %4, align 8
  br label %63

57:                                               ; preds = %42
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strcspn(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %57, %53, %40, %29
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @b64_ntop(i32*, i64, i8*, i64) #1

declare dso_local i32 @freezero(i8*, i64) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
