; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"It should be excluded\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"It should not be excluded\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @excluded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @excluded(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %4, %struct.archive_entry** %3, align 8
  %5 = icmp ne %struct.archive_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %153

10:                                               ; preds = %1
  %11 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %12 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %13, i32 7879, i32 999)
  %15 = call i32 @failure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.archive*, %struct.archive** %2, align 8
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = call i32 @archive_match_time_excluded(%struct.archive* %16, %struct.archive_entry* %17)
  %19 = call i32 @assertEqualInt(i32 1, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %22 = call i32 @archive_match_excluded(%struct.archive* %20, %struct.archive_entry* %21)
  %23 = call i32 @assertEqualInt(i32 1, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %25 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %24, i32 7880, i32 0)
  %26 = call i32 @failure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %29 = call i32 @archive_match_time_excluded(%struct.archive* %27, %struct.archive_entry* %28)
  %30 = call i32 @assertEqualInt(i32 1, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %33 = call i32 @archive_match_excluded(%struct.archive* %31, %struct.archive_entry* %32)
  %34 = call i32 @assertEqualInt(i32 1, i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %36 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %35, i32 7880, i32 1)
  %37 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.archive*, %struct.archive** %2, align 8
  %39 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %40 = call i32 @archive_match_time_excluded(%struct.archive* %38, %struct.archive_entry* %39)
  %41 = call i32 @assertEqualInt(i32 0, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %2, align 8
  %43 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %44 = call i32 @archive_match_excluded(%struct.archive* %42, %struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 0, i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %47 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %49 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %48, i32 7879, i32 999)
  %50 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %53 = call i32 @archive_match_time_excluded(%struct.archive* %51, %struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 0, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %2, align 8
  %56 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %57 = call i32 @archive_match_excluded(%struct.archive* %55, %struct.archive_entry* %56)
  %58 = call i32 @assertEqualInt(i32 0, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %60 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %59, i32 7880, i32 0)
  %61 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.archive*, %struct.archive** %2, align 8
  %63 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %64 = call i32 @archive_match_time_excluded(%struct.archive* %62, %struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 0, i32 %64)
  %66 = load %struct.archive*, %struct.archive** %2, align 8
  %67 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %68 = call i32 @archive_match_excluded(%struct.archive* %66, %struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 0, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %71 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %70, i32 7880, i32 1)
  %72 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.archive*, %struct.archive** %2, align 8
  %74 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %75 = call i32 @archive_match_time_excluded(%struct.archive* %73, %struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 0, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %2, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %79 = call i32 @archive_match_excluded(%struct.archive* %77, %struct.archive_entry* %78)
  %80 = call i32 @assertEqualInt(i32 0, i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %82 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %84 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %83, i32 7879, i32 999)
  %85 = call i32 @failure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.archive*, %struct.archive** %2, align 8
  %87 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %88 = call i32 @archive_match_time_excluded(%struct.archive* %86, %struct.archive_entry* %87)
  %89 = call i32 @assertEqualInt(i32 1, i32 %88)
  %90 = load %struct.archive*, %struct.archive** %2, align 8
  %91 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %92 = call i32 @archive_match_excluded(%struct.archive* %90, %struct.archive_entry* %91)
  %93 = call i32 @assertEqualInt(i32 1, i32 %92)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %95 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %94, i32 7880, i32 0)
  %96 = call i32 @failure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.archive*, %struct.archive** %2, align 8
  %98 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %99 = call i32 @archive_match_time_excluded(%struct.archive* %97, %struct.archive_entry* %98)
  %100 = call i32 @assertEqualInt(i32 1, i32 %99)
  %101 = load %struct.archive*, %struct.archive** %2, align 8
  %102 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %103 = call i32 @archive_match_excluded(%struct.archive* %101, %struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 1, i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %106 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %105, i32 7880, i32 1)
  %107 = call i32 @failure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.archive*, %struct.archive** %2, align 8
  %109 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %110 = call i32 @archive_match_time_excluded(%struct.archive* %108, %struct.archive_entry* %109)
  %111 = call i32 @assertEqualInt(i32 1, i32 %110)
  %112 = load %struct.archive*, %struct.archive** %2, align 8
  %113 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %114 = call i32 @archive_match_excluded(%struct.archive* %112, %struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 1, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %117 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %119 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %118, i32 7879, i32 999)
  %120 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.archive*, %struct.archive** %2, align 8
  %122 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %123 = call i32 @archive_match_time_excluded(%struct.archive* %121, %struct.archive_entry* %122)
  %124 = call i32 @assertEqualInt(i32 0, i32 %123)
  %125 = load %struct.archive*, %struct.archive** %2, align 8
  %126 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %127 = call i32 @archive_match_excluded(%struct.archive* %125, %struct.archive_entry* %126)
  %128 = call i32 @assertEqualInt(i32 0, i32 %127)
  %129 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %130 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %129, i32 7880, i32 0)
  %131 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.archive*, %struct.archive** %2, align 8
  %133 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %134 = call i32 @archive_match_time_excluded(%struct.archive* %132, %struct.archive_entry* %133)
  %135 = call i32 @assertEqualInt(i32 0, i32 %134)
  %136 = load %struct.archive*, %struct.archive** %2, align 8
  %137 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %138 = call i32 @archive_match_excluded(%struct.archive* %136, %struct.archive_entry* %137)
  %139 = call i32 @assertEqualInt(i32 0, i32 %138)
  %140 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %141 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %140, i32 7880, i32 1)
  %142 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.archive*, %struct.archive** %2, align 8
  %144 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %145 = call i32 @archive_match_time_excluded(%struct.archive* %143, %struct.archive_entry* %144)
  %146 = call i32 @assertEqualInt(i32 0, i32 %145)
  %147 = load %struct.archive*, %struct.archive** %2, align 8
  %148 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %149 = call i32 @archive_match_excluded(%struct.archive* %147, %struct.archive_entry* %148)
  %150 = call i32 @assertEqualInt(i32 0, i32 %149)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %152 = call i32 @archive_entry_free(%struct.archive_entry* %151)
  br label %153

153:                                              ; preds = %10, %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_time_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
