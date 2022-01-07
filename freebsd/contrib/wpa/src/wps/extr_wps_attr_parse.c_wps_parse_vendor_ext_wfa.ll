; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_parse_vendor_ext_wfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_parse.c_wps_parse_vendor_ext_wfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_parse_attr*, i32*, i32)* @wps_parse_vendor_ext_wfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_parse_vendor_ext_wfa(%struct.wps_parse_attr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %8, align 8
  br label %15

15:                                               ; preds = %48, %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp sge i64 %21, 2
  br i1 %22, label %23, label %53

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = icmp sgt i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %53

40:                                               ; preds = %23
  %41 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @wps_set_vendor_ext_wfa_subelem(%struct.wps_parse_attr* %41, i32 %42, i32 %43, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %6, align 8
  br label %15

53:                                               ; preds = %39, %15
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @wps_set_vendor_ext_wfa_subelem(%struct.wps_parse_attr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
