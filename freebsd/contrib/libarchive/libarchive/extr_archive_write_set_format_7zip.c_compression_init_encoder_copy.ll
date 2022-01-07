; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_init_encoder_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_compression_init_encoder_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.la_zstream = type { i32, i32, i32 }

@compression_code_copy = common dso_local global i32 0, align 4
@compression_end_copy = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.la_zstream*)* @compression_init_encoder_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compression_init_encoder_copy(%struct.archive* %0, %struct.la_zstream* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.la_zstream*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.la_zstream* %1, %struct.la_zstream** %4, align 8
  %5 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %6 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %12 = call i32 @compression_end(%struct.archive* %10, %struct.la_zstream* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %15 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @compression_code_copy, align 4
  %17 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %18 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @compression_end_copy, align 4
  %20 = load %struct.la_zstream*, %struct.la_zstream** %4, align 8
  %21 = getelementptr inbounds %struct.la_zstream, %struct.la_zstream* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %22
}

declare dso_local i32 @compression_end(%struct.archive*, %struct.la_zstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
