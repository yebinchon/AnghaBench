; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_parse_taglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_parse_taglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"parse taglist, but no tags defined\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"unknown tag: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @config_parse_taglist(%struct.config_file* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.config_file* %0, %struct.config_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.config_file*, %struct.config_file** %5, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.config_file*, %struct.config_file** %5, align 8
  %21 = getelementptr inbounds %struct.config_file, %struct.config_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 7
  %24 = udiv i64 %23, 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32* @calloc(i32 1, i64 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %61

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %56, %31
  %34 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.config_file*, %struct.config_file** %5, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @find_tag_id(%struct.config_file* %41, i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @free(i32* %49)
  store i32* null, i32** %4, align 8
  br label %61

51:                                               ; preds = %40
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @cfg_set_bit(i32* %52, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %36
  br label %33

57:                                               ; preds = %33
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %57, %46, %29, %17
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @find_tag_id(%struct.config_file*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @cfg_set_bit(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
