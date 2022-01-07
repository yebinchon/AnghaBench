; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow.c_of_header_body_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow.c_of_header_body_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @of_header_body_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of_header_body_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @OF_HEADER_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %89

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TCHECK2(i32 %21, i32 1)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ND_TCHECK2(i32 %28, i32 1)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK2(i32 %35, i32 2)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @EXTRACT_16BITS(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ND_TCHECK2(i32 %42, i32 4)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @EXTRACT_32BITS(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @OF_HEADER_LEN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %19
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @of_header_print(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %89

58:                                               ; preds = %19
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %68 [
    i32 128, label %60
  ]

60:                                               ; preds = %58
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32* @of10_header_body_print(i32* %61, i32* %62, i32* %63, i32 %64, i32 %65, i32 %66)
  store i32* %67, i32** %4, align 8
  br label %113

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @of_header_print(i32* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @OF_HEADER_LEN, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @ND_TCHECK2(i32 %76, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* @OF_HEADER_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32* %88, i32** %4, align 8
  br label %113

89:                                               ; preds = %51, %18
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @istr, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @ND_PRINT(i32* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ND_TCHECK2(i32 %96, i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32* %105, i32** %4, align 8
  br label %113

106:                                              ; No predecessors!
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @tstr, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 @ND_PRINT(i32* %110)
  %112 = load i32*, i32** %7, align 8
  store i32* %112, i32** %4, align 8
  br label %113

113:                                              ; preds = %106, %89, %68, %60
  %114 = load i32*, i32** %4, align 8
  ret i32* %114
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @of_header_print(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @of10_header_body_print(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
