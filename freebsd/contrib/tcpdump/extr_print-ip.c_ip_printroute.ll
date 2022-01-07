; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_printroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_printroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c" [bad length %u]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" [bad ptr %u]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @ip_printroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_printroute(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @ND_PRINT(i32* %16)
  store i32 0, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @ND_PRINT(i32* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ND_TCHECK(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45, %40, %29
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  br label %58

58:                                               ; preds = %50, %45
  store i32 3, i32* %9, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ND_TCHECK2(i32 %68, i32 4)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @ipaddr_string(i32* %71, i32* %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ND_PRINT(i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  br label %86

86:                                               ; preds = %83, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %9, align 4
  br label %59

90:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %92

91:                                               ; No predecessors!
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %90, %12
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
