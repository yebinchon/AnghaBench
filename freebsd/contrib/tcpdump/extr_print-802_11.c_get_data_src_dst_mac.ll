; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_get_data_src_dst_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_get_data_src_dst_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR1 = common dso_local global i32* null, align 8
@ADDR2 = common dso_local global i32* null, align 8
@ADDR3 = common dso_local global i32* null, align 8
@ADDR4 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32**, i32**)* @get_data_src_dst_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_data_src_dst_mac(i32 %0, i32* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @FC_TO_DS(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @FC_FROM_DS(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 10
  %19 = load i32**, i32*** %7, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32**, i32*** %8, align 8
  store i32* %21, i32** %22, align 8
  br label %30

23:                                               ; preds = %12
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 16
  %26 = load i32**, i32*** %7, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32**, i32*** %8, align 8
  store i32* %28, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %16
  br label %50

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FC_FROM_DS(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 10
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 16
  %41 = load i32**, i32*** %8, align 8
  store i32* %40, i32** %41, align 8
  br label %49

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 24
  %45 = load i32**, i32*** %7, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = load i32**, i32*** %8, align 8
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

declare dso_local i32 @FC_TO_DS(i32) #1

declare dso_local i32 @FC_FROM_DS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
