; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_stream.c_dec_stream_footer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_stream.c_dec_stream_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }

@FOOTER_MAGIC = common dso_local global i32 0, align 4
@FOOTER_MAGIC_SIZE = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*)* @dec_stream_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_stream_footer(%struct.xz_dec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xz_dec*, align 8
  store %struct.xz_dec* %0, %struct.xz_dec** %3, align 8
  %4 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %5 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 10
  %9 = load i32, i32* @FOOTER_MAGIC, align 4
  %10 = load i32, i32* @FOOTER_MAGIC_SIZE, align 4
  %11 = call i32 @memeq(i64* %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %17 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 4
  %21 = call i32 @xz_crc32(i64* %20, i32 6, i32 0)
  %22 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %23 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 @get_le32(i64* %25)
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %29, i32* %2, align 4
  br label %68

30:                                               ; preds = %15
  %31 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %32 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 2
  %36 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %37 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 4
  %41 = call i32 @get_le32(i64* %40)
  %42 = icmp ne i32 %35, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %30
  %46 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %47 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %55 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 9
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %61 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53, %45
  %65 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @XZ_STREAM_END, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %64, %43, %28, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @memeq(i64*, i32, i32) #1

declare dso_local i32 @xz_crc32(i64*, i32, i32) #1

declare dso_local i32 @get_le32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
