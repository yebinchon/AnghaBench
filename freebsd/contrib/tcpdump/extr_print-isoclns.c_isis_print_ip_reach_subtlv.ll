; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_ip_reach_subtlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_ip_reach_subtlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"%s%s subTLV #%u, length: %u\00", align 1
@isis_ext_ip_reach_subtlv_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", 0x%08x (=%u)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", 0x%08x%08x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0A\09\09    \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i8*)* @isis_print_ip_reach_subtlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_ip_reach_subtlv(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = load i32, i32* @isis_ext_ip_reach_subtlv_values, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @tok2str(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @ND_PRINT(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ND_TCHECK2(i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %64 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %45
  ]

27:                                               ; preds = %5, %5
  br label %28

28:                                               ; preds = %31, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @EXTRACT_32BITS(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @EXTRACT_32BITS(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ND_PRINT(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 4
  store i32 %43, i32* %10, align 4
  br label %28

44:                                               ; preds = %28
  br label %72

45:                                               ; preds = %5
  br label %46

46:                                               ; preds = %49, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 8
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @EXTRACT_32BITS(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = call i32 @EXTRACT_32BITS(i32* %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %10, align 4
  br label %46

63:                                               ; preds = %46
  br label %72

64:                                               ; preds = %5
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @print_unknown_data(i32* %65, i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %83

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %63, %44
  store i32 1, i32* %6, align 4
  br label %83

73:                                               ; No predecessors!
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @tstr, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %73, %72, %70
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @print_unknown_data(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
