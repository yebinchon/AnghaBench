; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_rr_ER.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_rr_ER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }

@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@RRIP_ER_SIZE = common dso_local global i8 0, align 1
@RRIP_ER_ID_SIZE = common dso_local global i8 0, align 1
@RRIP_ER_DSC_SIZE = common dso_local global i8 0, align 1
@RRIP_ER_SRC_SIZE = common dso_local global i8 0, align 1
@rrip_identifier = common dso_local global i32 0, align 4
@rrip_descriptor = common dso_local global i32 0, align 4
@rrip_source = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @write_rr_ER to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rr_ER(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %4 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %5 = call i8* @wb_buffptr(%struct.archive_write* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %8 = call i32 @memset(i8* %6, i32 0, i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 69, i8* %10, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 82, i8* %12, align 1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 1, i8* %14, align 1
  %15 = load i8, i8* @RRIP_ER_SIZE, align 1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %15, i8* %17, align 1
  %18 = load i8, i8* @RRIP_ER_ID_SIZE, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %18, i8* %20, align 1
  %21 = load i8, i8* @RRIP_ER_DSC_SIZE, align 1
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  store i8 %21, i8* %23, align 1
  %24 = load i8, i8* @RRIP_ER_SRC_SIZE, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 6
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  store i8 1, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = load i32, i32* @rrip_identifier, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @memcpy(i8* %30, i32 %31, i8 zeroext %34)
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 8, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  %44 = load i32, i32* @rrip_descriptor, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @memcpy(i8* %43, i32 %44, i8 zeroext %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 8, %53
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %49, i64 %60
  %62 = load i32, i32* @rrip_source, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @memcpy(i8* %61, i32 %62, i8 zeroext %65)
  %67 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %68 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %69 = call i32 @wb_consume(%struct.archive_write* %67, i32 %68)
  ret i32 %69
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i8 zeroext) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
