; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_init_encoder_deflate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_init_encoder_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.la_zstream = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*, i32, i32)* @compression_init_encoder_deflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_init_encoder_deflate(%struct.archive* %0, %struct.la_zstream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.la_zstream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %12 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.archive*, %struct.archive** %5, align 8
  %17 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %18 = call i32 @compression_end(%struct.archive* %16, %struct.la_zstream* %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = load %struct.la_zstream*, %struct.la_zstream** %6, align 8
  %22 = call i32 @compression_unsupported_encoder(%struct.archive* %20, %struct.la_zstream* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret i32 %22
}

declare dso_local i32 @compression_end(%struct.archive*, %struct.la_zstream*) #1

declare dso_local i32 @compression_unsupported_encoder(%struct.archive*, %struct.la_zstream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
