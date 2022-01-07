; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_owner_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_owner_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { i32 }
%struct.match = type { i32 }

@ID_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i32, i8*)* @add_owner_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_owner_name(%struct.archive_match* %0, %struct.match_list* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_match*, align 8
  %7 = alloca %struct.match_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.match*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %6, align 8
  store %struct.match_list* %1, %struct.match_list** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = call %struct.match* @calloc(i32 1, i32 4)
  store %struct.match* %11, %struct.match** %10, align 8
  %12 = load %struct.match*, %struct.match** %10, align 8
  %13 = icmp eq %struct.match* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %16 = call i32 @error_nomem(%struct.archive_match* %15)
  store i32 %16, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.match*, %struct.match** %10, align 8
  %22 = getelementptr inbounds %struct.match, %struct.match* %21, i32 0, i32 0
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @archive_mstring_copy_mbs(i32* %22, i8* %23)
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.match*, %struct.match** %10, align 8
  %27 = getelementptr inbounds %struct.match, %struct.match* %26, i32 0, i32 0
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @archive_mstring_copy_wcs(i32* %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.match_list*, %struct.match_list** %7, align 8
  %32 = load %struct.match*, %struct.match** %10, align 8
  %33 = call i32 @match_list_add(%struct.match_list* %31, %struct.match* %32)
  %34 = load i32, i32* @ID_IS_SET, align 4
  %35 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %36 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.match* @calloc(i32, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i32 @archive_mstring_copy_mbs(i32*, i8*) #1

declare dso_local i32 @archive_mstring_copy_wcs(i32*, i8*) #1

declare dso_local i32 @match_list_add(%struct.match_list*, %struct.match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
