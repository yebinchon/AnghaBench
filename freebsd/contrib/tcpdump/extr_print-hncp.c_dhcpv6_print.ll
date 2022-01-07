; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_dhcpv6_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_dhcpv6_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dh6opt_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" (%u)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@istr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32)* @dhcpv6_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcpv6_print(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %123, %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %128

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = add nsw i64 %22, 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %129

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @EXTRACT_16BITS(i32* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = call i64 @EXTRACT_16BITS(i32* %34)
  store i64 %35, i64* %15, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %48, %27
  %43 = load i64, i64* %11, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %11, align 8
  br label %42

51:                                               ; preds = %42
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @dh6opt_str, align 4
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @tok2str(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = add nsw i64 %60, 4
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @ND_PRINT(i32* %62)
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 4
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %129

71:                                               ; preds = %51
  %72 = load i64, i64* %14, align 8
  switch i64 %72, label %123 [
    i64 130, label %73
    i64 128, label %73
    i64 129, label %102
  ]

73:                                               ; preds = %71, %71
  %74 = load i64, i64* %15, align 8
  %75 = srem i64 %74, 16
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @istr, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  store i32 -1, i32* %5, align 4
  br label %129

83:                                               ; preds = %73
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i32 @ip6addr_string(i32* %90, i32* %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  br label %98

98:                                               ; preds = %88
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, 16
  store i64 %100, i64* %11, align 8
  br label %84

101:                                              ; preds = %84
  br label %123

102:                                              ; preds = %71
  %103 = load i32*, i32** %13, align 8
  store i32* %103, i32** %16, align 8
  br label %104

104:                                              ; preds = %121, %102
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = icmp ult i32* %105, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i32* @ns_nprint(i32* %113, i32* %114, i32* %117)
  store i32* %118, i32** %16, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %129

121:                                              ; preds = %110
  br label %104

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %71, %122, %101
  %124 = load i64, i64* %15, align 8
  %125 = add nsw i64 4, %124
  %126 = load i64, i64* %10, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %10, align 8
  br label %17

128:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %120, %77, %70, %26
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i32* @ns_nprint(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
