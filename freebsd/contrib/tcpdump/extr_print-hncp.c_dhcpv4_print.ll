; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_dhcpv4_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_dhcpv4_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dh4opt_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" (%u)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i32)* @dhcpv4_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcpv4_print(i32* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %122, %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %127

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i64, i64* %8, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %128

27:                                               ; preds = %21
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %12, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %15, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64* %38, i64** %13, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %49, %27
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %11, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @dh4opt_str, align 4
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @tok2str(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @ND_PRINT(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %61, 2
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @ND_PRINT(i32* %63)
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 2
  %67 = load i64, i64* %15, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %128

72:                                               ; preds = %52
  %73 = load i64, i64* %14, align 8
  switch i64 %73, label %122 [
    i64 130, label %74
    i64 128, label %74
    i64 129, label %101
  ]

74:                                               ; preds = %72, %72
  %75 = load i64, i64* %15, align 8
  %76 = icmp slt i64 %75, 4
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %15, align 8
  %79 = srem i64 %78, 4
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74
  store i32 -1, i32* %5, align 4
  br label %128

82:                                               ; preds = %77
  store i64 0, i64* %11, align 8
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %15, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = call i32 @ipaddr_string(i32* %89, i64* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @ND_PRINT(i32* %95)
  br label %97

97:                                               ; preds = %87
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, 4
  store i64 %99, i64* %11, align 8
  br label %83

100:                                              ; preds = %83
  br label %122

101:                                              ; preds = %72
  %102 = load i64*, i64** %13, align 8
  store i64* %102, i64** %16, align 8
  br label %103

103:                                              ; preds = %120, %101
  %104 = load i64*, i64** %16, align 8
  %105 = load i64*, i64** %13, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = icmp ult i64* %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  %112 = load i32*, i32** %6, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = call i64* @ns_nprint(i32* %112, i64* %113, i64* %116)
  store i64* %117, i64** %16, align 8
  %118 = icmp eq i64* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 -1, i32* %5, align 4
  br label %128

120:                                              ; preds = %109
  br label %103

121:                                              ; preds = %103
  br label %122

122:                                              ; preds = %72, %121, %100
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 2, %123
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %10, align 8
  br label %17

127:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %119, %81, %71, %26
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ipaddr_string(i32*, i64*) #1

declare dso_local i64* @ns_nprint(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
