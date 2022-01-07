; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_ensure_poolsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_ensure_poolsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.idr = type { i32, %struct.idrent* }
%struct.idrent = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.idr*, i32)* @idr_ensure_poolsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_ensure_poolsize(%struct.archive_write* %0, %struct.idr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.idr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.idr* %1, %struct.idr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.idr*, %struct.idr** %6, align 8
  %12 = getelementptr inbounds %struct.idr, %struct.idr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  store i32 127, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 127
  %19 = and i32 %18, -128
  store i32 %19, i32* %10, align 4
  %20 = load %struct.idr*, %struct.idr** %6, align 8
  %21 = getelementptr inbounds %struct.idr, %struct.idr* %20, i32 0, i32 1
  %22 = load %struct.idrent*, %struct.idrent** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @realloc(%struct.idrent* %22, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %32 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %31, i32 0, i32 0
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @archive_set_error(i32* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %16
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to %struct.idrent*
  %39 = load %struct.idr*, %struct.idr** %6, align 8
  %40 = getelementptr inbounds %struct.idr, %struct.idr* %39, i32 0, i32 1
  store %struct.idrent* %38, %struct.idrent** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.idr*, %struct.idr** %6, align 8
  %43 = getelementptr inbounds %struct.idr, %struct.idr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %3
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @realloc(%struct.idrent*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
