; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_write_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.iso9660 = type { i32, i64, i64, i64, i64 }

@LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@WB_TO_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @wb_write_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_write_out(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iso9660*
  store %struct.iso9660* %10, %struct.iso9660** %3, align 8
  %11 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %12 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = sub i64 8, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %18 = urem i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WB_TO_STREAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %26 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %27 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %29, %30
  %32 = call i32 @__archive_write_output(%struct.archive_write* %25, i64 %28, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %35 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %36 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %38, %39
  %41 = call i32 @write_to_temp(%struct.archive_write* %34, i64 %37, i64 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %43, %44
  %46 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %47 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %51 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %54 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %59 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %62 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %42
  %64 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %65 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %64, i32 0, i32 0
  store i32 8, i32* %65, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %77 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %80 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %5, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @memmove(i64 %78, i64 %85, i64 %86)
  br label %88

88:                                               ; preds = %68, %63
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i64, i64) #1

declare dso_local i32 @write_to_temp(%struct.archive_write*, i64, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
