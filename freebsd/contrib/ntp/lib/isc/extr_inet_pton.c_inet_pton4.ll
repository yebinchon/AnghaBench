; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @NS_INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* %18, i8** %11, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %79, %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = sext i32 %33 to i64
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 %36, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

47:                                               ; preds = %41, %29
  %48 = load i64, i64* %13, align 8
  %49 = icmp ugt i64 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = trunc i64 %52 to i8
  %54 = load i8*, i8** %11, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

62:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %51
  br label %79

64:                                               ; preds = %25
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 0, i8* %76, align 1
  store i32 0, i32* %6, align 4
  br label %78

77:                                               ; preds = %67, %64
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %63
  br label %19

80:                                               ; preds = %19
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* @NS_INADDRSZ, align 4
  %87 = call i32 @memcpy(i8* %85, i8* %18, i32 %86)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %83, %77, %73, %61, %50, %46
  %89 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
