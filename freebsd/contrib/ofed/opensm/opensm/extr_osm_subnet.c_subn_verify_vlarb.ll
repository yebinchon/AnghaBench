; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_subn_verify_vlarb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_subn_verify_vlarb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c" Warning: Cached Option %s_vlarb_%s:vl=%s improperly formatted\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c" Warning: Cached Option %s_vlarb_%s:vl=%ld out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c" Warning: Cached Option %s_vlarb_%s:weight=%s improperly formatted\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c" Warning: Cached Option %s_vlarb_%s:weight=%ld out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c" Warning: Cached Option %s_vlarb_%s:vl:weight=%s improperly formatted\0A\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c" Warning: Cached Option %s_vlarb_%s: > 64 listed: excess vl:weight pairs will be dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i8*)* @subn_verify_vlarb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subn_verify_vlarb(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %104

20:                                               ; preds = %3
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strtok_r(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %90, %20
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %94

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 58)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %85

35:                                               ; preds = %29
  %36 = load i8*, i8** %13, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strtol(i8* %39, i8** %9, i32 0)
  store i64 %40, i64* %14, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46, i8* %47)
  br label %61

49:                                               ; preds = %35
  %50 = load i64, i64* %14, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %14, align 8
  %54 = icmp sgt i64 %53, 14
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i8*, i8** %13, align 8
  %63 = call i64 @strtol(i8* %62, i8** %9, i32 0)
  store i64 %63, i64* %15, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %69, i8* %70)
  br label %84

72:                                               ; preds = %61
  %73 = load i64, i64* %15, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %15, align 8
  %77 = icmp sgt i64 %76, 255
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %67
  br label %90

85:                                               ; preds = %29
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %93, i8** %8, align 8
  br label %26

94:                                               ; preds = %26
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 64
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i8*, i8*, i8*, ...) @log_report(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %101, %19
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @log_report(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
