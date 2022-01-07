; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-m3ua.c_m3ua_tags_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-m3ua.c_m3ua_tags_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"\0A\09\09\09%s: \00", align 1
@ParamName = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown Parameter (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @m3ua_tags_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3ua_tags_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %66, %3
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = icmp ult i32* %13, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = icmp ugt i32* %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %89

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ND_TCHECK2(i32 %30, i32 4)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @EXTRACT_16BITS(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @ParamName, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @tok2str(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @ND_PRINT(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = call i32 @EXTRACT_16BITS(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %89

48:                                               ; preds = %28
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32*, i32** %5, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = srem i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 4, %63
  br label %66

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @ND_TCHECK2(i32 %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @tag_value_print(i32* %74, i32* %75, i32 %76, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  br label %12

88:                                               ; preds = %12
  br label %105

89:                                               ; preds = %47, %27
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @istr, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @ND_PRINT(i32* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ND_TCHECK2(i32 %96, i32 %97)
  br label %105

99:                                               ; No predecessors!
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @tstr, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @ND_PRINT(i32* %103)
  br label %105

105:                                              ; preds = %99, %89, %88
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @tag_value_print(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
