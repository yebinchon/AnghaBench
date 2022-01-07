; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_strange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_strange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"ERROR: length %u != 16\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"User_challenge (\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c") User_resp(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ERROR: length %u != 14\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"User can change password\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"User cannot change password\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c", Min password length: %d\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c", created at: \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c", expires in: \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c", Current Time: \00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ERROR: length %u != 8\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @print_attr_strange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr_strange(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %123 [
    i32 128, label %11
    i32 129, label %41
    i32 130, label %106
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 16
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @ND_PRINT(i32* %18)
  br label %130

20:                                               ; preds = %11
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.1 to i32*))
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK2(i32 %25, i32 8)
  store i32 8, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @PRINT_HEX(i32 %27, i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.2 to i32*))
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ND_TCHECK2(i32 %34, i32 8)
  store i32 8, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @PRINT_HEX(i32 %36, i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  br label %123

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 14
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @ND_PRINT(i32* %48)
  br label %130

50:                                               ; preds = %41
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ND_TCHECK2(i32 %53, i32 1)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ND_PRINT(i32* bitcast ([25 x i8]* @.str.5 to i32*))
  br label %64

61:                                               ; preds = %50
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ND_PRINT(i32* bitcast ([28 x i8]* @.str.6 to i32*))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ND_TCHECK2(i32 %69, i32 1)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.8 to i32*))
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ND_TCHECK2(i32 %83, i32 4)
  store i32 4, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @PRINT_HEX(i32 %85, i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.9 to i32*))
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ND_TCHECK2(i32 %92, i32 4)
  store i32 4, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @PRINT_HEX(i32 %94, i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.10 to i32*))
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ND_TCHECK2(i32 %101, i32 4)
  store i32 4, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @PRINT_HEX(i32 %103, i32* %104)
  br label %123

106:                                              ; preds = %4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i32*
  %114 = call i32 @ND_PRINT(i32* %113)
  br label %130

115:                                              ; preds = %106
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ND_TCHECK2(i32 %118, i32 8)
  store i32 8, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @PRINT_HEX(i32 %120, i32* %121)
  br label %123

123:                                              ; preds = %4, %115, %64, %20
  br label %130

124:                                              ; No predecessors!
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @tstr, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  %129 = call i32 @ND_PRINT(i32* %128)
  br label %130

130:                                              ; preds = %124, %123, %109, %44, %14
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @PRINT_HEX(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
