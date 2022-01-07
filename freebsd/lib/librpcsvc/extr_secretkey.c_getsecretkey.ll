; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_secretkey.c_getsecretkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_secretkey.c_getsecretkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEXKEYBYTES = common dso_local global i32 0, align 4
@KEYCHECKSUMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getsecretkey(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @HEXKEYBYTES, align 4
  %13 = mul nsw i32 3, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @getpublicandprivatekey(i8* %21, i8* %16)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

25:                                               ; preds = %20
  %26 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @xdecrypt(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @HEXKEYBYTES, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %45 = call i64 @memcmp(i8* %39, i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @HEXKEYBYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @HEXKEYBYTES, align 4
  %58 = call i32 @strncpy(i8* %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @HEXKEYBYTES, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %50, %47, %37, %29, %24, %19
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getpublicandprivatekey(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @xdecrypt(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
