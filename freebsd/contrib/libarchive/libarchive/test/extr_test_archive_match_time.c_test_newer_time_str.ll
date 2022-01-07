; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_newer_time_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_newer_time_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_NEWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"1980/2/1 0:0:0 UTC\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Both Its mtime and ctime should be excluded\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"1980/1/1 0:0:0 UTC\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"1980/2/1 0:0:1 UTC\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Both Its mtime and ctime should not be excluded\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Its mtime should be excluded\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Its ctime should be excluded\00", align 1
@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_newer_time_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_newer_time_str() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %5, %struct.archive** %2, align 8
  %6 = icmp ne %struct.archive* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %184

11:                                               ; preds = %0
  %12 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %12, %struct.archive_entry** %1, align 8
  %13 = icmp ne %struct.archive_entry* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.archive*, %struct.archive** %2, align 8
  %19 = call i32 @archive_match_free(%struct.archive* %18)
  br label %184

20:                                               ; preds = %11
  %21 = call i32 @time(i32* %3)
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %25 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @archive_match_include_date(%struct.archive* %23, i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @assertEqualIntA(%struct.archive* %22, i32 0, i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %32 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @__archive_get_date(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %35, i32 %36, i32 0)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %38, i32 %39, i32 0)
  %41 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.archive*, %struct.archive** %2, align 8
  %43 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %44 = call i32 @archive_match_time_excluded(%struct.archive* %42, %struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 1, i32 %44)
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %48 = call i32 @archive_match_excluded(%struct.archive* %46, %struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 1, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @__archive_get_date(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  %52 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %52, i32 %53, i32 0)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %55, i32 %56, i32 0)
  %58 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.archive*, %struct.archive** %2, align 8
  %60 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %61 = call i32 @archive_match_time_excluded(%struct.archive* %59, %struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 1, i32 %61)
  %63 = load %struct.archive*, %struct.archive** %2, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %65 = call i32 @archive_match_excluded(%struct.archive* %63, %struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 1, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @__archive_get_date(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  %69 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %69, i32 %70, i32 0)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %72, i32 %73, i32 0)
  %75 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.archive*, %struct.archive** %2, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %78 = call i32 @archive_match_time_excluded(%struct.archive* %76, %struct.archive_entry* %77)
  %79 = call i32 @assertEqualInt(i32 0, i32 %78)
  %80 = load %struct.archive*, %struct.archive** %2, align 8
  %81 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %82 = call i32 @archive_match_excluded(%struct.archive* %80, %struct.archive_entry* %81)
  %83 = call i32 @assertEqualInt(i32 0, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @__archive_get_date(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %85, i32* %4, align 4
  %86 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %86, i32 %87, i32 1)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %89, i32 %90, i32 0)
  %92 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.archive*, %struct.archive** %2, align 8
  %94 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %95 = call i32 @archive_match_time_excluded(%struct.archive* %93, %struct.archive_entry* %94)
  %96 = call i32 @assertEqualInt(i32 1, i32 %95)
  %97 = load %struct.archive*, %struct.archive** %2, align 8
  %98 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %99 = call i32 @archive_match_excluded(%struct.archive* %97, %struct.archive_entry* %98)
  %100 = call i32 @assertEqualInt(i32 1, i32 %99)
  %101 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %101, i32 %102, i32 0)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %104, i32 %105, i32 1)
  %107 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %108 = load %struct.archive*, %struct.archive** %2, align 8
  %109 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %110 = call i32 @archive_match_time_excluded(%struct.archive* %108, %struct.archive_entry* %109)
  %111 = call i32 @assertEqualInt(i32 1, i32 %110)
  %112 = load %struct.archive*, %struct.archive** %2, align 8
  %113 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %114 = call i32 @archive_match_excluded(%struct.archive* %112, %struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 1, i32 %114)
  %116 = load %struct.archive*, %struct.archive** %2, align 8
  %117 = load %struct.archive*, %struct.archive** %2, align 8
  %118 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %119 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @archive_match_include_date(%struct.archive* %117, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %126 = call i32 @assertEqualIntA(%struct.archive* %116, i32 0, i32 %125)
  %127 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %128 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @__archive_get_date(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %130, i32* %4, align 4
  %131 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %131, i32 %132, i32 0)
  %134 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %134, i32 %135, i32 0)
  %137 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.archive*, %struct.archive** %2, align 8
  %139 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %140 = call i32 @archive_match_time_excluded(%struct.archive* %138, %struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 0, i32 %140)
  %142 = load %struct.archive*, %struct.archive** %2, align 8
  %143 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %144 = call i32 @archive_match_excluded(%struct.archive* %142, %struct.archive_entry* %143)
  %145 = call i32 @assertEqualInt(i32 0, i32 %144)
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @__archive_get_date(i32 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %147, i32* %4, align 4
  %148 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %148, i32 %149, i32 0)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %151, i32 %152, i32 0)
  %154 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.archive*, %struct.archive** %2, align 8
  %156 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %157 = call i32 @archive_match_time_excluded(%struct.archive* %155, %struct.archive_entry* %156)
  %158 = call i32 @assertEqualInt(i32 1, i32 %157)
  %159 = load %struct.archive*, %struct.archive** %2, align 8
  %160 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %161 = call i32 @archive_match_excluded(%struct.archive* %159, %struct.archive_entry* %160)
  %162 = call i32 @assertEqualInt(i32 1, i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @__archive_get_date(i32 %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %164, i32* %4, align 4
  %165 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %165, i32 %166, i32 0)
  %168 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %168, i32 %169, i32 0)
  %171 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.archive*, %struct.archive** %2, align 8
  %173 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %174 = call i32 @archive_match_time_excluded(%struct.archive* %172, %struct.archive_entry* %173)
  %175 = call i32 @assertEqualInt(i32 0, i32 %174)
  %176 = load %struct.archive*, %struct.archive** %2, align 8
  %177 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %178 = call i32 @archive_match_excluded(%struct.archive* %176, %struct.archive_entry* %177)
  %179 = call i32 @assertEqualInt(i32 0, i32 %178)
  %180 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %181 = call i32 @archive_entry_free(%struct.archive_entry* %180)
  %182 = load %struct.archive*, %struct.archive** %2, align 8
  %183 = call i32 @archive_match_free(%struct.archive* %182)
  br label %184

184:                                              ; preds = %20, %17, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_date(%struct.archive*, i32, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @__archive_get_date(i32, i8*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

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
