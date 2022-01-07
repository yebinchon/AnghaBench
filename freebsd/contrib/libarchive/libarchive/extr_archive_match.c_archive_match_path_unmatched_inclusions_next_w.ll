; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_path_unmatched_inclusions_next_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_path_unmatched_inclusions_next_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_match = type { i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"archive_match_unmatched_inclusions_next_w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_match_path_unmatched_inclusions_next_w(%struct.archive* %0, i32** %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive*, %struct.archive** %3, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_match*
  store %struct.archive_match* %13, %struct.archive_match** %5, align 8
  %14 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %15 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %16 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %15, i32 0, i32 0
  %17 = call i32 @match_list_unmatched_inclusions_next(%struct.archive_match* %14, i32* %16, i32 0, i8** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32**, i32*** %4, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @match_list_unmatched_inclusions_next(%struct.archive_match*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
