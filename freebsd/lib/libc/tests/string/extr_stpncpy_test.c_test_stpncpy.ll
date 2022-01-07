; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/string/extr_stpncpy_test.c_test_stpncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/string/extr_stpncpy_test.c_test_stpncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_stpncpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stpncpy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %95, %1
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %98

18:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %91, %18
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %87, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 10
  %27 = icmp ule i64 %24, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @makebuf(i64 %29, i32 %30)
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @makebuf(i64 %36, i32 %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @memset(i8* %39, i8 signext 88, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i64, i64* %7, align 8
  br label %50

47:                                               ; preds = %28
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, 1
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i64 [ %46, %45 ], [ %49, %47 ]
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i8* @stpncpy(i8* %52, i8* %53, i64 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = icmp eq i8* %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @memcmp(i8* %62, i8* %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %83, %50
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %70

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %23

90:                                               ; preds = %23
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %19

94:                                               ; preds = %19
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %15

98:                                               ; preds = %15
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @makebuf(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @stpncpy(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
