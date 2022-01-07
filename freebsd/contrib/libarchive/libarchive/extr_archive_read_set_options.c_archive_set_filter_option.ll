; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_options.c_archive_set_filter_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_set_options.c_archive_set_filter_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.archive_read_filter* }
%struct.archive_read_filter = type { i32, %struct.archive_read_filter_bidder*, %struct.archive_read_filter* }
%struct.archive_read_filter_bidder = type { i32 (%struct.archive_read_filter_bidder*, i8*, i8*)* }

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
  %10 = alloca %struct.archive_read*, align 8
  %11 = alloca %struct.archive_read_filter*, align 8
  %12 = alloca %struct.archive_read_filter_bidder*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = bitcast %struct.archive* %16 to %struct.archive_read*
  store %struct.archive_read* %17, %struct.archive_read** %10, align 8
  %18 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 0
  %21 = load %struct.archive_read_filter*, %struct.archive_read_filter** %20, align 8
  store %struct.archive_read_filter* %21, %struct.archive_read_filter** %11, align 8
  br label %22

22:                                               ; preds = %72, %4
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %24 = icmp ne %struct.archive_read_filter* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %22
  %26 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %27 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %26, i32 0, i32 1
  %28 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %27, align 8
  store %struct.archive_read_filter_bidder* %28, %struct.archive_read_filter_bidder** %12, align 8
  %29 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %12, align 8
  %30 = icmp eq %struct.archive_read_filter_bidder* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %72

32:                                               ; preds = %25
  %33 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %12, align 8
  %34 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %33, i32 0, i32 0
  %35 = load i32 (%struct.archive_read_filter_bidder*, i8*, i8*)*, i32 (%struct.archive_read_filter_bidder*, i8*, i8*)** %34, align 8
  %36 = icmp eq i32 (%struct.archive_read_filter_bidder*, i8*, i8*)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %72

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %43 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %72

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %12, align 8
  %54 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %53, i32 0, i32 0
  %55 = load i32 (%struct.archive_read_filter_bidder*, i8*, i8*)*, i32 (%struct.archive_read_filter_bidder*, i8*, i8*)** %54, align 8
  %56 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %12, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 %55(%struct.archive_read_filter_bidder* %56, i8* %57, i8* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ARCHIVE_FATAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %64, i32* %5, align 4
  br label %87

65:                                               ; preds = %52
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %48, %37, %31
  %73 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %74 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %73, i32 0, i32 2
  %75 = load %struct.archive_read_filter*, %struct.archive_read_filter** %74, align 8
  store %struct.archive_read_filter* %75, %struct.archive_read_filter** %11, align 8
  br label %22

76:                                               ; preds = %22
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @ARCHIVE_WARN, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %82, %63
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
