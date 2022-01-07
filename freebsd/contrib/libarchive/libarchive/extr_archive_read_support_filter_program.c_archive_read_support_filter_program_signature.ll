; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_archive_read_support_filter_program_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_archive_read_support_filter_program_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.archive_read_filter_bidder = type { i32 }
%struct.program_bidder = type { i32* }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_filter_program_signature(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.archive_read*, align 8
  %11 = alloca %struct.archive_read_filter_bidder*, align 8
  %12 = alloca %struct.program_bidder*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = bitcast %struct.archive* %13 to %struct.archive_read*
  store %struct.archive_read* %14, %struct.archive_read** %10, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %16 = call i64 @__archive_read_get_bidder(%struct.archive_read* %15, %struct.archive_read_filter_bidder** %11)
  %17 = load i64, i64* @ARCHIVE_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = call i64 @calloc(i32 1, i32 8)
  %23 = inttoptr i64 %22 to %struct.program_bidder*
  store %struct.program_bidder* %23, %struct.program_bidder** %12, align 8
  %24 = load %struct.program_bidder*, %struct.program_bidder** %12, align 8
  %25 = icmp eq %struct.program_bidder* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %43

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @strdup(i8* %28)
  %30 = load %struct.program_bidder*, %struct.program_bidder** %12, align 8
  %31 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.program_bidder*, %struct.program_bidder** %12, align 8
  %33 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %11, align 8
  %39 = load %struct.program_bidder*, %struct.program_bidder** %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @set_bidder_signature(%struct.archive_read_filter_bidder* %38, %struct.program_bidder* %39, i8* %40, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %36, %26
  %44 = load %struct.program_bidder*, %struct.program_bidder** %12, align 8
  %45 = call i32 @free_state(%struct.program_bidder* %44)
  %46 = load %struct.archive*, %struct.archive** %6, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @archive_set_error(%struct.archive* %46, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %37, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @__archive_read_get_bidder(%struct.archive_read*, %struct.archive_read_filter_bidder**) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @set_bidder_signature(%struct.archive_read_filter_bidder*, %struct.program_bidder*, i8*, i64) #1

declare dso_local i32 @free_state(%struct.program_bidder*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
