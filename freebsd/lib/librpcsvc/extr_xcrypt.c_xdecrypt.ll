; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_xcrypt.c_xdecrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_xcrypt.c_xdecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_DECRYPT = common dso_local global i32 0, align 4
@DES_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdecrypt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @hex2bin(i32 %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %25 = call i32 @passwd2des(i8* %23, i8* %24)
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %27 = call i32 @bzero(i8* %26, i32 8)
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DES_DECRYPT, align 4
  %32 = load i32, i32* @DES_HW, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %35 = call i32 @cbc_crypt(i8* %28, i8* %29, i32 %30, i32 %33, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @DES_FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %18
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %18
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @bin2hex(i32 %43, i8* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %39, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @hex2bin(i32, i8*, i8*) #1

declare dso_local i32 @passwd2des(i8*, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @cbc_crypt(i8*, i8*, i32, i32, i8*) #1

declare dso_local i64 @DES_FAILED(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bin2hex(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
