; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_str2sectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_str2sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"ERROR line %d: unexpected size: '%s'\00", align 1
@current_line_number = common dso_local global i32 0, align 4
@NO_DISK_SECTORS = common dso_local global i64 0, align 8
@secsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR line %d: unexpected modifier: %c (not K/M/G)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @str2sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str2sectors(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strtoul(i8* %6, i8** %4, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @current_line_number, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load i64, i64* @NO_DISK_SECTORS, align 8
  store i64 %20, i64* %2, align 8
  br label %62

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 75
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i64, i64* @secsize, align 8
  %28 = udiv i64 1024, %27
  %29 = load i64, i64* %5, align 8
  %30 = mul i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %60

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 77
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i64, i64* @secsize, align 8
  %38 = udiv i64 1048576, %37
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %59

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 71
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* @secsize, align 8
  %48 = udiv i64 1073741824, %47
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %49, %48
  store i64 %50, i64* %5, align 8
  br label %58

51:                                               ; preds = %41
  %52 = load i32, i32* @current_line_number, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i64, i64* @NO_DISK_SECTORS, align 8
  store i64 %57, i64* %2, align 8
  br label %62

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %60, %51, %16
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
