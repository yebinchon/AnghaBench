; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_copy_essid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_copy_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @copy_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_essid(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %11, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %18, %16
  store i64 0, i64* %12, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sgt i32 %34, 126
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  br label %43

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  br label %22

43:                                               ; preds = %36, %22
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %115

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @strlcpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, 2
  store i64 %56, i64* %7, align 8
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %10, align 8
  store i64 0, i64* %12, align 8
  br label %58

58:                                               ; preds = %80, %51
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %63, 2
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %83

67:                                               ; preds = %65
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %12, align 8
  %70 = mul i64 2, %69
  %71 = add i64 2, %70
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %76)
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 2
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %58

83:                                               ; preds = %65
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %12, align 8
  %90 = mul i64 2, %89
  %91 = add i64 2, %90
  %92 = sub i64 %91, 3
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = call i32 @memcpy(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  br label %95

95:                                               ; preds = %87, %83
  br label %112

96:                                               ; preds = %43
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(i8* %97, i8* %98, i32 %100)
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i8*, i8** %6, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub i64 %107, 3
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i32 @memcpy(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  br label %111

111:                                              ; preds = %105, %96
  br label %112

112:                                              ; preds = %111, %95
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %50
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
