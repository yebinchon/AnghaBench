; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_update_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_update_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_enc_ctx = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trad_enc_ctx*, i32)* @trad_enc_update_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trad_enc_update_keys(%struct.trad_enc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.trad_enc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.trad_enc_ctx* %0, %struct.trad_enc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i64, i32*, i32, ...) bitcast (i32 (...)* @crc32 to i32 (i64, i32*, i32, ...)*)(i64 %11, i32* %4, i32 1)
  %13 = sext i32 %12 to i64
  %14 = xor i64 %13, 4294967295
  %15 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %14, i64* %18, align 8
  %19 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, 255
  %30 = add nsw i64 %23, %29
  %31 = mul nsw i64 %30, 134775813
  %32 = add nsw i64 %31, 1
  %33 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %32, i64* %36, align 8
  %37 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = ashr i64 %41, 24
  %43 = and i64 %42, 255
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, 4294967295
  %51 = call i32 (i64, i32*, i32, ...) bitcast (i32 (...)* @crc32 to i32 (i64, i32*, i32, ...)*)(i64 %50, i32* %5, i32 1)
  %52 = sext i32 %51 to i64
  %53 = xor i64 %52, 4294967295
  %54 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  store i64 %53, i64* %57, align 8
  ret void
}

declare dso_local i32 @crc32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
