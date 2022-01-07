; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_read_pt_bitlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_read_pt_bitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzh_stream = type { %struct.lzh_dec* }
%struct.lzh_dec = type { %struct.TYPE_2__, %struct.lzh_br }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.lzh_br = type { i32 }

@bitlen_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzh_stream*, i32, i32)* @lzh_read_pt_bitlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_read_pt_bitlen(%struct.lzh_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lzh_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lzh_dec*, align 8
  %9 = alloca %struct.lzh_br*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lzh_stream* %0, %struct.lzh_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lzh_stream*, %struct.lzh_stream** %5, align 8
  %13 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %12, i32 0, i32 0
  %14 = load %struct.lzh_dec*, %struct.lzh_dec** %13, align 8
  store %struct.lzh_dec* %14, %struct.lzh_dec** %8, align 8
  %15 = load %struct.lzh_dec*, %struct.lzh_dec** %8, align 8
  %16 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %15, i32 0, i32 1
  store %struct.lzh_br* %16, %struct.lzh_br** %9, align 8
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %60, %3
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = load %struct.lzh_stream*, %struct.lzh_stream** %5, align 8
  %24 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %25 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %23, %struct.lzh_br* %24, i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %22
  %30 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %31 = call i32 @lzh_br_bits(%struct.lzh_br* %30, i32 3)
  store i32 %31, i32* %10, align 4
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.lzh_stream*, %struct.lzh_stream** %5, align 8
  %35 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %36 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %34, %struct.lzh_br* %35, i32 13)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %33
  %41 = load i32*, i32** @bitlen_tbl, align 8
  %42 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %43 = call i32 @lzh_br_bits(%struct.lzh_br* %42, i32 13)
  %44 = and i32 %43, 1023
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 3
  %54 = call i32 @lzh_br_consume(%struct.lzh_br* %51, i32 %53)
  br label %56

55:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %81

56:                                               ; preds = %50
  br label %60

57:                                               ; preds = %29
  %58 = load %struct.lzh_br*, %struct.lzh_br** %9, align 8
  %59 = call i32 @lzh_br_consume(%struct.lzh_br* %58, i32 3)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.lzh_dec*, %struct.lzh_dec** %8, align 8
  %63 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load %struct.lzh_dec*, %struct.lzh_dec** %8, align 8
  %71 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %18

79:                                               ; preds = %18
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %55, %38, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @lzh_br_read_ahead(%struct.lzh_stream*, %struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_br_bits(%struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_br_consume(%struct.lzh_br*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
