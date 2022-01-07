; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c", (rtaf=ip\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c", (rtaf=asn\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c", (rtaf=0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32)* @gre_sre_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_sre_print(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %37 [
    i32 128, label %15
    i32 129, label %26
  ]

15:                                               ; preds = %6
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str to i32*))
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @gre_sre_ip_print(i32* %18, i32 %19, i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %43

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.2 to i32*))
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @gre_sre_asn_print(i32* %29, i32 %30, i32 %31, i32* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %43

37:                                               ; preds = %6
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %37, %26, %15
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @gre_sre_ip_print(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @gre_sre_asn_print(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
