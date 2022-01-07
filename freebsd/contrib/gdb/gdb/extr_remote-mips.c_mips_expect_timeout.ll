; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_expect_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_expect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Expected \22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\22, got \22\00", align 1
@immediate_quit = common dso_local global i32 0, align 4
@mips_desc = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\22: FAIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\22: OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @mips_expect_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_expect_timeout(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i64, i64* @remote_debug, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @gdb_stdlog, align 4
  %13 = call i32 @fprintf_unfiltered(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @gdb_stdlog, align 4
  %16 = call i32 @fputs_readable(i8* %14, i32 %15)
  %17 = load i32, i32* @gdb_stdlog, align 4
  %18 = call i32 @fprintf_unfiltered(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @immediate_quit, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @immediate_quit, align 4
  br label %22

22:                                               ; preds = %19, %76
  %23 = load i32, i32* @mips_desc, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @serial_readchar(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i64, i64* @remote_debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @gdb_stdlog, align 4
  %34 = call i32 @fprintf_unfiltered(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* %3, align 4
  br label %77

36:                                               ; preds = %22
  %37 = load i64, i64* @remote_debug, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @gdb_stdlog, align 4
  %42 = call i32 @fputc_readable(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @immediate_quit, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* @immediate_quit, align 4
  %58 = load i64, i64* @remote_debug, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @gdb_stdlog, align 4
  %62 = call i32 @fprintf_unfiltered(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  store i32 1, i32* %3, align 4
  br label %77

64:                                               ; preds = %50
  br label %76

65:                                               ; preds = %43
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %64
  br label %22

77:                                               ; preds = %63, %35
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @fputs_readable(i8*, i32) #1

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @fputc_readable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
