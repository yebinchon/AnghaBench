; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_pton_cidr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_pton_cidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.xaddr*, i64*)* @addr_pton_cidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_pton_cidr(i8* %0, %struct.xaddr* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xaddr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.xaddr, align 4
  %9 = alloca i64, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.xaddr* %1, %struct.xaddr** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 999, i64* %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlcpy(i8* %16, i8* %17, i32 64)
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %83

22:                                               ; preds = %15
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %24 = call i8* @strchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %12, i32 10)
  store i64 %31, i64* %9, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %36, %26
  store i32 -1, i32* %4, align 4
  br label %83

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %22
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %48 = call i32 @addr_pton(i8* %47, %struct.xaddr* %8)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %83

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @addr_unicast_masklen(i32 %56)
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @masklen_valid(i32 %60, i64 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -2, i32* %4, align 4
  br label %83

65:                                               ; preds = %58
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @addr_host_is_all0s(%struct.xaddr* %8, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -2, i32* %4, align 4
  br label %83

70:                                               ; preds = %65
  %71 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %72 = icmp ne %struct.xaddr* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %75 = call i32 @memcpy(%struct.xaddr* %74, %struct.xaddr* %8, i32 4)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i64*, i64** %7, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %69, %64, %50, %44, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @addr_pton(i8*, %struct.xaddr*) #1

declare dso_local i64 @addr_unicast_masklen(i32) #1

declare dso_local i32 @masklen_valid(i32, i64) #1

declare dso_local i64 @addr_host_is_all0s(%struct.xaddr*, i64) #1

declare dso_local i32 @memcpy(%struct.xaddr*, %struct.xaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
