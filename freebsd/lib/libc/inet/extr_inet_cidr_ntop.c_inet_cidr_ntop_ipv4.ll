; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_cidr_ntop.c_inet_cidr_ntop_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_cidr_ntop.c_inet_cidr_ntop_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i32, i8*, i64)* @inet_cidr_ntop_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_cidr_ntop_ipv4(i64* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  store i64 4, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %95

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 4, i64* %11, align 8
  br label %44

26:                                               ; preds = %22
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %12, align 8
  br label %27

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 1, %47 ], [ %49, %48 ]
  %52 = add nsw i32 %51, 7
  %53 = sdiv i32 %52, 8
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @decoct(i64* %61, i64 %62, i8* %63, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %93

69:                                               ; preds = %60
  %70 = load i64, i64* %12, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i64, i64* %9, align 8
  %80 = icmp ult i64 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %93

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @SPRINTF(i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %82, %69
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %5, align 8
  br label %95

93:                                               ; preds = %81, %68
  %94 = load i32, i32* @EMSGSIZE, align 4
  store i32 %94, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %95

95:                                               ; preds = %93, %91, %20
  %96 = load i8*, i8** %5, align 8
  ret i8* %96
}

declare dso_local i64 @decoct(i64*, i64, i8*, i64) #1

declare dso_local i32 @SPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
