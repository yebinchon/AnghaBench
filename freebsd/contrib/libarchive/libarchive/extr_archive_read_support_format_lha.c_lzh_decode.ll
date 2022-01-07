; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzh_stream = type { i32, i32, %struct.lzh_dec* }
%struct.lzh_dec = type { i32, i64 }

@ST_GET_LITERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzh_stream*, i32)* @lzh_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_decode(%struct.lzh_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzh_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lzh_dec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lzh_stream* %0, %struct.lzh_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %10 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %9, i32 0, i32 2
  %11 = load %struct.lzh_dec*, %struct.lzh_dec** %10, align 8
  store %struct.lzh_dec* %11, %struct.lzh_dec** %6, align 8
  %12 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %13 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %18 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %22 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %20
  %25 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %26 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ST_GET_LITERAL, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @lzh_read_blocks(%struct.lzh_stream* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @lzh_decode_blocks(%struct.lzh_stream* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 100
  br i1 %41, label %24, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %45 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %49 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @lzh_read_blocks(%struct.lzh_stream*, i32) #1

declare dso_local i32 @lzh_decode_blocks(%struct.lzh_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
