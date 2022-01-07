; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_esdb.c__citrus_esdb_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_esdb.c__citrus_esdb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_esdb = type { i32 }
%struct._region = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_PATH_ESDB = common dso_local global i8* null, align 8
@ESDB_ALIAS = common dso_local global i8* null, align 8
@_LOOKUP_CASE_IGNORE = common dso_local global i32 0, align 4
@ESDB_DIR = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_esdb_open(%struct._citrus_esdb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_esdb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._region, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._citrus_esdb* %0, %struct._citrus_esdb** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = trunc i64 %23 to i32
  %26 = load i8*, i8** @_PATH_ESDB, align 8
  %27 = load i8*, i8** @ESDB_ALIAS, align 8
  %28 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = trunc i64 %16 to i32
  %31 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %32 = call i8* @_lookup_alias(i8* %24, i8* %29, i8* %18, i32 %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = trunc i64 %23 to i32
  %34 = load i8*, i8** @_PATH_ESDB, align 8
  %35 = load i8*, i8** @ESDB_DIR, align 8
  %36 = call i32 @snprintf(i8* %24, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = trunc i64 %20 to i32
  %39 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %40 = call i8* @_lookup_simple(i8* %24, i8* %37, i8* %21, i32 %38, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOENT, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %60

45:                                               ; preds = %2
  %46 = trunc i64 %23 to i32
  %47 = load i8*, i8** @_PATH_ESDB, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @snprintf(i8* %24, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  %50 = call i32 @_map_file(%struct._region* %6, i8* %24)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load %struct._citrus_esdb*, %struct._citrus_esdb** %4, align 8
  %57 = call i32 @conv_esdb(%struct._citrus_esdb* %56, %struct._region* %6)
  store i32 %57, i32* %13, align 4
  %58 = call i32 @_unmap_file(%struct._region* %6)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %55, %53, %43
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @_lookup_alias(i8*, i8*, i8*, i32, i32) #2

declare dso_local i8* @_lookup_simple(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @_map_file(%struct._region*, i8*) #2

declare dso_local i32 @conv_esdb(%struct._citrus_esdb*, %struct._region*) #2

declare dso_local i32 @_unmap_file(%struct._region*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
