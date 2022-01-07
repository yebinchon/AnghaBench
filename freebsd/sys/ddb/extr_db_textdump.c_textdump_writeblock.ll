; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_textdump_writeblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_textdump_writeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i64, i64 }

@textdump_error = common dso_local global i32 0, align 4
@TEXTDUMP_BLOCKSIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SIZEOF_METADATA = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"textdump_writeblock: offset %jd, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i64, i8*)* @textdump_writeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @textdump_writeblock(%struct.dumperinfo* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dumperinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @textdump_error, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @textdump_error, align 4
  store i32 %11, i32* %4, align 4
  br label %47

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @TEXTDUMP_BLOCKSIZE, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %17 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @SIZEOF_METADATA, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOSPC, align 4
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %22
  %29 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %33 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* @TEXTDUMP_BLOCKSIZE, align 8
  %37 = call i32 @dump_write(%struct.dumperinfo* %29, i8* %30, i32 0, i64 %35, i64 %36)
  store i32 %37, i32* @textdump_error, align 4
  %38 = load i32, i32* @textdump_error, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @textdump_error, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i32, i32* @textdump_error, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %26, %20, %10
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @dump_write(%struct.dumperinfo*, i8*, i32, i64, i64) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
