; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_vpn_sg_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_vpn_sg_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c", Source %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c", Group %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @bgp_vpn_sg_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgp_vpn_sg_print(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TCHECK2(i32 %14, i32 1)
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 3
  %24 = call i32 @ND_TCHECK2(i32 %21, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 3
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @bgp_vpn_ip_print(i32* %42, i32* %43, i32 %44)
  %46 = call i32 @snprintf(i8* %38, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 3
  %49 = load i32*, i32** %6, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %34, %4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ND_TCHECK2(i32 %55, i32 1)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 3
  %65 = call i32 @ND_TCHECK2(i32 %62, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 3
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %52
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @bgp_vpn_ip_print(i32* %83, i32* %84, i32 %85)
  %87 = call i32 @snprintf(i8* %79, i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 3
  %90 = load i32*, i32** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %75, %52
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @bgp_vpn_ip_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
