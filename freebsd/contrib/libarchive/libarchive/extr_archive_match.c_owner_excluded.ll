; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_owner_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_owner_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.archive_entry*)* @owner_excluded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owner_excluded(%struct.archive_match* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_match*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_match* %0, %struct.archive_match** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %7 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %8 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %14 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %13, i32 0, i32 3
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i32 @archive_entry_uid(%struct.archive_entry* %15)
  %17 = call i32 @match_owner_id(%struct.TYPE_5__* %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %83

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %23 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %29 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %28, i32 0, i32 2
  %30 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %31 = call i32 @archive_entry_gid(%struct.archive_entry* %30)
  %32 = call i32 @match_owner_id(%struct.TYPE_5__* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %83

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %38 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %44 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %45 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %44, i32 0, i32 1
  %46 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %47 = call i32 @archive_entry_uname(%struct.archive_entry* %46)
  %48 = call i32 @match_owner_name_mbs(%struct.archive_match* %43, %struct.TYPE_4__* %45, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %83

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %61 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %67 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %68 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %67, i32 0, i32 0
  %69 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %70 = call i32 @archive_entry_gname(%struct.archive_entry* %69)
  %71 = call i32 @match_owner_name_mbs(%struct.archive_match* %66, %struct.TYPE_4__* %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %83

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %59
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %78, %74, %55, %51, %34, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @match_owner_id(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @match_owner_name_mbs(%struct.archive_match*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
