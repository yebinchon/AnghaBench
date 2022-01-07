; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_prefix4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_prefix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s/%d, label:%u %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8*, i32)* @decode_labeled_prefix4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_labeled_prefix4(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK2(i32 %17, i32 4)
  %19 = call i32 @ITEMCHECK(i32 4)
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 24, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %87

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 24
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 32, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %87

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %9, align 4
  %35 = call i32 @memset(%struct.in_addr* %12, i32 0, i32 4)
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 7
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @ND_TCHECK2(i32 %41, i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @ITEMCHECK(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @memcpy(%struct.in_addr* %12, i32* %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = srem i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %32
  %54 = load i32, i32* %13, align 4
  %55 = srem i32 %54, 8
  %56 = ashr i32 65280, %55
  %57 = and i32 %56, 255
  %58 = bitcast %struct.in_addr* %12 to i32*
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %57
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %53, %32
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i8* @ipaddr_string(i32* %68, %struct.in_addr* %12)
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = call i32 @EXTRACT_24BITS(i32* %72)
  %74 = ashr i32 %73, 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @snprintf(i8* %66, i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70, i32 %74, i8* %81)
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 4, %83
  store i32 %84, i32* %6, align 4
  br label %87

85:                                               ; No predecessors!
  store i32 -2, i32* %6, align 4
  br label %87

86:                                               ; No predecessors!
  store i32 -3, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %85, %65, %31, %25
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ITEMCHECK(i32) #1

declare dso_local i32 @memset(%struct.in_addr*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @ipaddr_string(i32*, %struct.in_addr*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
