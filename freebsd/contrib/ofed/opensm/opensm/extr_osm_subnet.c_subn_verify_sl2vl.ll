; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_subn_verify_sl2vl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_subn_verify_sl2vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c" Warning: Cached Option %s_sl2vl:vl=%s improperly formatted\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c" Warning: Cached Option %s_sl2vl:vl=%ld out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c" Warning: Cached Option %s_sl2vl: < 16 VLs listed\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c" Warning: Cached Option %s_sl2vl: > 16 listed: excess VLs will be dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @subn_verify_sl2vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subn_verify_sl2vl(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %65

15:                                               ; preds = %2
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strtok_r(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %45, %15
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strtol(i8* %25, i8** %7, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  br label %45

34:                                               ; preds = %24
  %35 = load i64, i64* %10, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %38, 15
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 (i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %48, i8** %6, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 16
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %14
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @log_report(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
