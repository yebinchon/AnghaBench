; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mtid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mtid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@isis_mt_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Reserved for IETF Consensus\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" Topology (0x%03x), Flags: [%s]\00", align 1
@isis_mt_flag_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @isis_print_mtid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_mtid(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ND_TTEST2(i32 %9, i32 2)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @isis_mt_values, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @EXTRACT_16BITS(i32* %17)
  %19 = call i32 @ISIS_MASK_MTID(i32 %18)
  %20 = call i32 @tok2str(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @ND_PRINT(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @EXTRACT_16BITS(i32* %25)
  %27 = call i32 @ISIS_MASK_MTID(i32 %26)
  %28 = load i32, i32* @isis_mt_flag_values, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @EXTRACT_16BITS(i32* %29)
  %31 = call i32 @ISIS_MASK_MTFLAGS(i32 %30)
  %32 = call i32 @bittok2str(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @ND_PRINT(i32* %34)
  store i32 2, i32* %4, align 4
  br label %36

36:                                               ; preds = %13, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ISIS_MASK_MTID(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @ISIS_MASK_MTFLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
