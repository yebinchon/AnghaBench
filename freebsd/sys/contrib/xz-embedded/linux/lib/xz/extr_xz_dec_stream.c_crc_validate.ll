; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_stream.c_crc_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_stream.c_crc_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32 }
%struct.xz_buf = type { i64, i64, i32* }

@XZ_OK = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, %struct.xz_buf*, i32)* @crc_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_validate(%struct.xz_dec* %0, %struct.xz_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xz_dec*, align 8
  %6 = alloca %struct.xz_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %5, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load %struct.xz_buf*, %struct.xz_buf** %6, align 8
  %10 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.xz_buf*, %struct.xz_buf** %6, align 8
  %13 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @XZ_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %8
  %19 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %20 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %23 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  %26 = and i32 %25, 255
  %27 = load %struct.xz_buf*, %struct.xz_buf** %6, align 8
  %28 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.xz_buf*, %struct.xz_buf** %6, align 8
  %31 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %26, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %18
  %40 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %41 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %46 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %8, label %50

50:                                               ; preds = %44
  %51 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %52 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %54 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @XZ_STREAM_END, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %37, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
