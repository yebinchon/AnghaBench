; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @NS_INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %77, %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 10
  %33 = sext i32 %32 to i64
  %34 = load i8*, i8** %12, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = sub i64 %35, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %37 = add nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

46:                                               ; preds = %41, %29
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

60:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %50
  br label %77

62:                                               ; preds = %25
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %11, align 8
  store i32 0, i32* %74, align 4
  store i32 0, i32* %6, align 4
  br label %76

75:                                               ; preds = %65, %62
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %61
  br label %19

78:                                               ; preds = %19
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @NS_INADDRSZ, align 4
  %85 = call i32 @memcpy(i32* %83, i32* %18, i32 %84)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %82, %81, %75, %71, %59, %49, %45
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
