; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_pk_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_pk_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pk_decode(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = call i32 @memset(i8* %8, i32 0, i32 1)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 256)
  store i64 0, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %85, %3
  %18 = load i64, i64* %13, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sgt i32 %30, 57
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 65
  %40 = add nsw i32 %39, 10
  store i32 %40, i32* %10, align 4
  br label %49

41:                                               ; preds = %24
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 48
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %41, %32
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sgt i32 %56, 57
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 65
  %67 = add nsw i32 %66, 10
  store i32 %67, i32* %11, align 4
  br label %77

68:                                               ; preds = %49
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %58
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 16
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = trunc i32 %81 to i8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %83
  store i8 %82, i8* %84, align 1
  br label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %13, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %12, align 4
  br label %17

90:                                               ; preds = %17
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @DES_key_sched(i8* %91, i32* %9)
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sdiv i32 %96, 2
  %98 = load i32, i32* @DES_DECRYPT, align 4
  %99 = call i32 @DES_cbc_encrypt(i8* %93, i8* %94, i32 %97, i32* %9, i8* %8, i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  store i8 0, i8* %105, align 1
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DES_key_sched(i8*, i32*) #1

declare dso_local i32 @DES_cbc_encrypt(i8*, i8*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
