; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-cfm.c_cfm_network_addr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-cfm.c_cfm_network_addr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"\0A\09  Network Address Type (invalid, no data\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A\09  Network Address Type %s (%u)\00", align 1
@af_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(invalid IPv4 address length %u)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"(invalid IPv6 address length %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @cfm_network_addr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfm_network_addr_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ND_PRINT(i32* bitcast ([43 x i8]* @.str to i32*))
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @af_values, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @tok2str(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @ND_PRINT(i32* %26)
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %69 [
    i32 129, label %29
    i32 128, label %49
  ]

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %9, align 4
  br label %71

40:                                               ; preds = %29
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @ipaddr_string(i32* %42, i32* %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  br label %71

49:                                               ; preds = %17
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 17
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %9, align 4
  br label %71

60:                                               ; preds = %49
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @ip6addr_string(i32* %62, i32* %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  br label %71

69:                                               ; preds = %17
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %60, %52, %40, %32
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
