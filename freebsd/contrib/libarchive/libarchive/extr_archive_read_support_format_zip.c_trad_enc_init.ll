; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_trad_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_enc_ctx = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trad_enc_ctx*, i8*, i64, i32*, i64, i32*)* @trad_enc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trad_enc_init(%struct.trad_enc_ctx* %0, i8* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trad_enc_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [12 x i32], align 16
  store %struct.trad_enc_ctx* %0, %struct.trad_enc_ctx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %12, align 8
  %16 = icmp ult i64 %15, 12
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32*, i32** %13, align 8
  store i32 255, i32* %18, align 4
  store i32 -1, i32* %7, align 4
  br label %53

19:                                               ; preds = %6
  %20 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 305419896, i64* %23, align 8
  %24 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 591751049, i64* %27, align 8
  %28 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 878082192, i64* %31, align 8
  br label %32

32:                                               ; preds = %42, %19
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 @trad_enc_update_keys(%struct.trad_enc_ctx* %36, i32 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %10, align 8
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %49 = call i32 @trad_enc_decrypt_update(%struct.trad_enc_ctx* %46, i32* %47, i32 12, i32* %48, i32 12)
  %50 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 11
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %17
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @trad_enc_update_keys(%struct.trad_enc_ctx*, i32) #1

declare dso_local i32 @trad_enc_decrypt_update(%struct.trad_enc_ctx*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
