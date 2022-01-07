; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_trad_enc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_trad_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_enc_ctx = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trad_enc_ctx*, i8*, i64)* @trad_enc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trad_enc_init(%struct.trad_enc_ctx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.trad_enc_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.trad_enc_ctx* %0, %struct.trad_enc_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 305419896, i64* %10, align 8
  %11 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 591751049, i64* %14, align 8
  %15 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.trad_enc_ctx, %struct.trad_enc_ctx* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 2
  store i64 878082192, i64* %18, align 8
  br label %19

19:                                               ; preds = %29, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.trad_enc_ctx*, %struct.trad_enc_ctx** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @trad_enc_update_keys(%struct.trad_enc_ctx* %23, i32 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  br label %19

32:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @trad_enc_update_keys(%struct.trad_enc_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
