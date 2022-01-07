; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_owner_name_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_owner_name_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { %struct.match* }
%struct.match = type { i32, i32, %struct.match* }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i8*)* @match_owner_name_mbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_owner_name_mbs(%struct.archive_match* %0, %struct.match_list* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca %struct.match_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.match*, align 8
  %9 = alloca i8*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store %struct.match_list* %1, %struct.match_list** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %58

18:                                               ; preds = %12
  %19 = load %struct.match_list*, %struct.match_list** %6, align 8
  %20 = getelementptr inbounds %struct.match_list, %struct.match_list* %19, i32 0, i32 0
  %21 = load %struct.match*, %struct.match** %20, align 8
  store %struct.match* %21, %struct.match** %8, align 8
  br label %22

22:                                               ; preds = %53, %18
  %23 = load %struct.match*, %struct.match** %8, align 8
  %24 = icmp ne %struct.match* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %27 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %26, i32 0, i32 0
  %28 = load %struct.match*, %struct.match** %8, align 8
  %29 = getelementptr inbounds %struct.match, %struct.match* %28, i32 0, i32 1
  %30 = call i64 @archive_mstring_get_mbs(i32* %27, i32* %29, i8** %9)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %38 = call i32 @error_nomem(%struct.archive_match* %37)
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %32, %25
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.match*, %struct.match** %8, align 8
  %49 = getelementptr inbounds %struct.match, %struct.match* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  store i32 1, i32* %4, align 4
  br label %58

52:                                               ; preds = %42, %39
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.match*, %struct.match** %8, align 8
  %55 = getelementptr inbounds %struct.match, %struct.match* %54, i32 0, i32 2
  %56 = load %struct.match*, %struct.match** %55, align 8
  store %struct.match* %56, %struct.match** %8, align 8
  br label %22

57:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %47, %36, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @archive_mstring_get_mbs(i32*, i32*, i8**) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
