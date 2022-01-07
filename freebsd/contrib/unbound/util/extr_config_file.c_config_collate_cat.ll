; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_collate_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_collate_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { i8*, %struct.config_strlist* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_collate_cat(%struct.config_strlist* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.config_strlist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.config_strlist* %0, %struct.config_strlist** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  %11 = icmp ne %struct.config_strlist* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  %16 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %15, i32 0, i32 1
  %17 = load %struct.config_strlist*, %struct.config_strlist** %16, align 8
  %18 = icmp eq %struct.config_strlist* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  %21 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %2, align 8
  br label %91

24:                                               ; preds = %14
  %25 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  store %struct.config_strlist* %25, %struct.config_strlist** %6, align 8
  br label %26

26:                                               ; preds = %38, %24
  %27 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %28 = icmp ne %struct.config_strlist* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %31 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %29
  %39 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %40 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %39, i32 0, i32 1
  %41 = load %struct.config_strlist*, %struct.config_strlist** %40, align 8
  store %struct.config_strlist* %41, %struct.config_strlist** %6, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i8* null, i8** %2, align 8
  br label %91

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %8, align 8
  %52 = load %struct.config_strlist*, %struct.config_strlist** %3, align 8
  store %struct.config_strlist* %52, %struct.config_strlist** %6, align 8
  br label %53

53:                                               ; preds = %85, %50
  %54 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %55 = icmp ne %struct.config_strlist* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %58 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 2
  %64 = load i64, i64* %5, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @free(i8* %67)
  store i8* null, i8** %2, align 8
  br label %91

69:                                               ; preds = %56
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %73 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @snprintf(i8* %70, i64 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %69
  %86 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %87 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %86, i32 0, i32 1
  %88 = load %struct.config_strlist*, %struct.config_strlist** %87, align 8
  store %struct.config_strlist* %88, %struct.config_strlist** %6, align 8
  br label %53

89:                                               ; preds = %53
  %90 = load i8*, i8** %7, align 8
  store i8* %90, i8** %2, align 8
  br label %91

91:                                               ; preds = %89, %66, %49, %19, %12
  %92 = load i8*, i8** %2, align 8
  ret i8* %92
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
