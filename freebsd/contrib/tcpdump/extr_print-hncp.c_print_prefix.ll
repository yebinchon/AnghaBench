; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_print_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_print_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@IPV4_MAPPED_HEADING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @print_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_prefix(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [46 x i8], align 16
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 96
  br i1 %15, label %16, label %80

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IPV4_MAPPED_HEADING_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i64 @is_ipv4_mapped_address(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 96
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 32, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %92

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = call i32 @memset(%struct.in_addr* %10, i32 0, i32 4)
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 7
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IPV4_MAPPED_HEADING_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 -3, i32* %4, align 4
  br label %92

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @IPV4_MAPPED_HEADING_LEN, align 4
  %50 = add nsw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(%struct.in_addr* %10, i32* %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = srem i32 %55, 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = srem i32 %59, 8
  %61 = ashr i32 65280, %60
  %62 = and i32 %61, 255
  %63 = bitcast %struct.in_addr* %10 to i32*
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %62
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %58, %47
  %71 = getelementptr inbounds [46 x i8], [46 x i8]* %9, i64 0, i64 0
  %72 = load i32*, i32** %5, align 8
  %73 = call i8* @ipaddr_string(i32* %72, %struct.in_addr* %10)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @snprintf(i8* %71, i32 46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %74)
  %76 = load i32, i32* @IPV4_MAPPED_HEADING_LEN, align 4
  %77 = add nsw i32 1, %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %86

80:                                               ; preds = %21, %16, %3
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds [46 x i8], [46 x i8]* %9, i64 0, i64 0
  %85 = call i32 @decode_prefix6(i32* %81, i32* %82, i32 %83, i8* %84, i32 46)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %70
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds [46 x i8], [46 x i8]* %9, i64 0, i64 0
  %89 = bitcast i8* %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %46, %33
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @is_ipv4_mapped_address(i32*) #1

declare dso_local i32 @memset(%struct.in_addr*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @ipaddr_string(i32*, %struct.in_addr*) #1

declare dso_local i32 @decode_prefix6(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
