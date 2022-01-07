; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_pk_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_pk_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4
@hextab = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pk_encode(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = call i32 @memset(i8* %8, i32 0, i32 1)
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 256)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @DES_key_sched(i8* %21, i32* %9)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @DES_ENCRYPT, align 4
  %27 = call i32 @DES_cbc_encrypt(i8* %23, i8* %24, i32 %25, i32* %9, i8* %8, i32 %26)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %64, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i8*, i8** @hextab, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = ashr i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %33, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  %49 = load i8*, i8** @hextab, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %49, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  br label %64

64:                                               ; preds = %32
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %28

67:                                               ; preds = %28
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
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
