; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_parse_ca_cong_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_parse_ca_cong_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@null_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"value must be specified in addition to SL\0A\00", align 1
@IB_CA_CONG_ENTRY_DATA_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid SL specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*)* @parse_ca_cong_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ca_cong_common(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @null_str, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strdup(i8* %18)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i8* [ %19, %17 ], [ null, %20 ]
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %58

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @strtok_r(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %28, i8** %10, align 8
  %29 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = call i32 @log_report(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  store i32 -1, i32* %4, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strtoul(i8* %37, i32* null, i32 0)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @IB_CA_CONG_ENTRY_DATA_SIZE, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = call i32 @log_report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  store i32 -1, i32* %4, align 4
  br label %58

46:                                               ; preds = %36
  %47 = load i64, i64* %12, align 8
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %42, %32, %25
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @log_report(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
