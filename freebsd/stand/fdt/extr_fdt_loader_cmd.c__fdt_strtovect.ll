; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c__fdt_strtovect.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c__fdt_strtovect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8, i64)* @_fdt_strtovect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fdt_strtovect(i8* %0, i8* %1, i32 %2, i8 zeroext %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -2
  store i8* %23, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i64* null, i64** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i64
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %14, align 8
  br label %33

30:                                               ; preds = %5
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %15, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %113

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %110, %37
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isxdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ult i8* %49, %50
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %43

57:                                               ; preds = %52
  %58 = load i32*, i32** %14, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @strtol(i8* %61, i32* null, i64 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @cpu_to_fdt32(i32 %64)
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %78

70:                                               ; preds = %57
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @strtol(i8* %71, i32* null, i64 %72)
  %74 = load i64*, i64** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %60
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sle i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %88

87:                                               ; preds = %78
  br label %111

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %107, %88
  %92 = load i8*, i8** %12, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isxdigit(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 120
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = icmp ult i8* %102, %103
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i1 [ false, %96 ], [ %104, %101 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %12, align 8
  br label %91

110:                                              ; preds = %105
  br label %38

111:                                              ; preds = %87, %38
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %36
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i64 @strtol(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
