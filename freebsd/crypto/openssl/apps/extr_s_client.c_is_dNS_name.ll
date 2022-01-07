; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_is_dNS_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_is_dNS_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_dNS_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dNS_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i64 63, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %105, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %17, 63
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %108

21:                                               ; preds = %19
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* %9, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 97
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 122
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %21
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 65
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %33
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 95
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37, %29
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %105

48:                                               ; preds = %41
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %105

59:                                               ; preds = %52, %48
  %60 = load i64, i64* %4, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %64, 1
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %62
  %68 = load i8, i8* %9, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %105

74:                                               ; preds = %67
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i8*, i8** %2, align 8
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 46
  br i1 %85, label %86, label %103

86:                                               ; preds = %78
  %87 = load i8*, i8** %2, align 8
  %88 = load i64, i64* %4, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 45
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i8*, i8** %2, align 8
  %96 = load i64, i64* %4, align 8
  %97 = add i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 45
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i64 0, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %105

103:                                              ; preds = %94, %86, %78, %74
  br label %104

104:                                              ; preds = %103, %62, %59
  store i32 0, i32* %5, align 4
  br label %108

105:                                              ; preds = %102, %71, %56, %45
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %12

108:                                              ; preds = %104, %19
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %112, 63
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
