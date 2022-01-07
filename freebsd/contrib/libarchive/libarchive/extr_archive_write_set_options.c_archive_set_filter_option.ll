; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_options.c_archive_set_filter_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_options.c_archive_set_filter_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { %struct.archive_write_filter* }
%struct.archive_write_filter = type { i32 (%struct.archive_write_filter*, i8*, i8*)*, i32, %struct.archive_write_filter* }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8*, i8*)* @archive_set_filter_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_set_filter_option(%struct.archive* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_write*, align 8
  %11 = alloca %struct.archive_write_filter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.archive*, %struct.archive** %6, align 8
  %15 = bitcast %struct.archive* %14 to %struct.archive_write*
  store %struct.archive_write* %15, %struct.archive_write** %10, align 8
  %16 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 0
  %19 = load %struct.archive_write_filter*, %struct.archive_write_filter** %18, align 8
  store %struct.archive_write_filter* %19, %struct.archive_write_filter** %11, align 8
  br label %20

20:                                               ; preds = %65, %4
  %21 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %22 = icmp ne %struct.archive_write_filter* %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %25 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %24, i32 0, i32 0
  %26 = load i32 (%struct.archive_write_filter*, i8*, i8*)*, i32 (%struct.archive_write_filter*, i8*, i8*)** %25, align 8
  %27 = icmp eq i32 (%struct.archive_write_filter*, i8*, i8*)* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %65

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %34 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strcmp(i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %65

40:                                               ; preds = %32, %29
  %41 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %42 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %41, i32 0, i32 0
  %43 = load i32 (%struct.archive_write_filter*, i8*, i8*)*, i32 (%struct.archive_write_filter*, i8*, i8*)** %42, align 8
  %44 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 %43(%struct.archive_write_filter* %44, i8* %45, i8* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %52, i32* %5, align 4
  br label %81

53:                                               ; preds = %40
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %81

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %39, %28
  %66 = load %struct.archive_write_filter*, %struct.archive_write_filter** %11, align 8
  %67 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %66, i32 0, i32 2
  %68 = load %struct.archive_write_filter*, %struct.archive_write_filter** %67, align 8
  store %struct.archive_write_filter* %68, %struct.archive_write_filter** %11, align 8
  br label %20

69:                                               ; preds = %20
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @ARCHIVE_WARN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @ARCHIVE_WARN, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %73, %69
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %56, %51
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
