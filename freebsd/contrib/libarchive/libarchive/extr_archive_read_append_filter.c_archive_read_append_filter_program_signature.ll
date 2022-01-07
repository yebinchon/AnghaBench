; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_append_filter.c_archive_read_append_filter_program_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_append_filter.c_archive_read_append_filter_program_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_filter_bidder = type { i32 (%struct.archive_read_filter*)*, i64, i64 }
%struct.archive_read_filter = type opaque
%struct.archive_read_filter.0 = type { i64, %struct.archive_read_filter.0*, %struct.archive_read*, %struct.archive_read_filter_bidder* }
%struct.archive_read = type { i32, %struct.archive_read_filter.0*, i32, %struct.archive_read_filter_bidder* }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Internal error: Unable to append program filter\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_append_filter_program_signature(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.archive_read_filter_bidder*, align 8
  %14 = alloca %struct.archive_read_filter.0*, align 8
  %15 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = bitcast %struct.archive* %16 to %struct.archive_read*
  store %struct.archive_read* %17, %struct.archive_read** %15, align 8
  %18 = load %struct.archive*, %struct.archive** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @archive_read_support_filter_program_signature(%struct.archive* %18, i8* %19, i8* %20, i64 %21)
  %23 = load i64, i64* @ARCHIVE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %28 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 3
  %30 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %29, align 8
  store %struct.archive_read_filter_bidder* %30, %struct.archive_read_filter_bidder** %13, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %37 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %42 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %52

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  %50 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %51 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %50, i32 1
  store %struct.archive_read_filter_bidder* %51, %struct.archive_read_filter_bidder** %13, align 8
  br label %31

52:                                               ; preds = %45, %31
  %53 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %54 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %59 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %58, i32 0, i32 2
  %60 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %61 = call i32 @archive_set_error(i32* %59, i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %62, i32* %5, align 4
  br label %116

63:                                               ; preds = %52
  %64 = call i64 @calloc(i32 1, i32 32)
  %65 = inttoptr i64 %64 to %struct.archive_read_filter.0*
  store %struct.archive_read_filter.0* %65, %struct.archive_read_filter.0** %14, align 8
  %66 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %14, align 8
  %67 = icmp eq %struct.archive_read_filter.0* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %69, i32 0, i32 2
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @archive_set_error(i32* %70, i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %5, align 4
  br label %116

74:                                               ; preds = %63
  %75 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %76 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %14, align 8
  %77 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %76, i32 0, i32 3
  store %struct.archive_read_filter_bidder* %75, %struct.archive_read_filter_bidder** %77, align 8
  %78 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %79 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %14, align 8
  %80 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %79, i32 0, i32 2
  store %struct.archive_read* %78, %struct.archive_read** %80, align 8
  %81 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %82 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %81, i32 0, i32 1
  %83 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %82, align 8
  %84 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %14, align 8
  %85 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %84, i32 0, i32 1
  store %struct.archive_read_filter.0* %83, %struct.archive_read_filter.0** %85, align 8
  %86 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %14, align 8
  %87 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %87, i32 0, i32 1
  store %struct.archive_read_filter.0* %86, %struct.archive_read_filter.0** %88, align 8
  %89 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %90 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %89, i32 0, i32 0
  %91 = load i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)** %90, align 8
  %92 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %93 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %92, i32 0, i32 1
  %94 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %93, align 8
  %95 = bitcast %struct.archive_read_filter.0* %94 to %struct.archive_read_filter*
  %96 = call i32 %91(%struct.archive_read_filter* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @ARCHIVE_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %74
  %102 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %103 = call i32 @__archive_read_free_filters(%struct.archive_read* %102)
  %104 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %104, i32* %5, align 4
  br label %116

105:                                              ; preds = %74
  %106 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 1
  %108 = load %struct.archive_read_filter.0*, %struct.archive_read_filter.0** %107, align 8
  %109 = getelementptr inbounds %struct.archive_read_filter.0, %struct.archive_read_filter.0* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %13, align 8
  %112 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.archive_read*, %struct.archive_read** %15, align 8
  %114 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %105, %101, %68, %57, %25
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @archive_read_support_filter_program_signature(%struct.archive*, i8*, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @__archive_read_free_filters(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
