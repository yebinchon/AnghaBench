; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_time_str_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_time_str_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i32] [i32 49, i32 57, i32 56, i32 48, i32 47, i32 50, i32 47, i32 49, i32 32, i32 48, i32 58, i32 48, i32 58, i32 48, i32 32, i32 85, i32 84, i32 67, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"1980/2/1 0:0:0 UTC\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Both Its mtime and ctime should be excluded\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"1980/1/1 0:0:0 UTC\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Both Its mtime and ctime should not be excluded\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"1980/3/1 0:0:0 UTC\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Its mtime should be excluded\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Its ctime should be excluded\00", align 1
@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_older_time_str_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_older_time_str_w() #0 {
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
  br label %190

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
  br label %190

20:                                               ; preds = %11
  %21 = call i32 @time(i32* %3)
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %25 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @archive_match_include_date_w(%struct.archive* %23, i32 %28, i8* bitcast ([19 x i32]* @.str to i8*))
  %30 = call i32 @assertEqualIntA(%struct.archive* %22, i32 0, i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %32 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @__archive_get_date(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %35, i32 %36, i32 0)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %38, i32 %39, i32 0)
  %41 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.archive*, %struct.archive** %2, align 8
  %43 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %44 = call i32 @archive_match_time_excluded(%struct.archive* %42, %struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 1, i32 %44)
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %48 = call i32 @archive_match_excluded(%struct.archive* %46, %struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 1, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @__archive_get_date(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  %52 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %52, i32 %53, i32 0)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %55, i32 %56, i32 0)
  %58 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.archive*, %struct.archive** %2, align 8
  %60 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %61 = call i32 @archive_match_time_excluded(%struct.archive* %59, %struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 0, i32 %61)
  %63 = load %struct.archive*, %struct.archive** %2, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %65 = call i32 @archive_match_excluded(%struct.archive* %63, %struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 0, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @__archive_get_date(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  %69 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %69, i32 %70, i32 0)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %72, i32 %73, i32 0)
  %75 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.archive*, %struct.archive** %2, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %78 = call i32 @archive_match_time_excluded(%struct.archive* %76, %struct.archive_entry* %77)
  %79 = call i32 @assertEqualInt(i32 1, i32 %78)
  %80 = load %struct.archive*, %struct.archive** %2, align 8
  %81 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %82 = call i32 @archive_match_excluded(%struct.archive* %80, %struct.archive_entry* %81)
  %83 = call i32 @assertEqualInt(i32 1, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @__archive_get_date(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %85, i32* %4, align 4
  %86 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %86, i32 %87, i32 0)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @__archive_get_date(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %90, i32* %4, align 4
  %91 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %91, i32 %92, i32 0)
  %94 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %95 = load %struct.archive*, %struct.archive** %2, align 8
  %96 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %97 = call i32 @archive_match_time_excluded(%struct.archive* %95, %struct.archive_entry* %96)
  %98 = call i32 @assertEqualInt(i32 1, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %2, align 8
  %100 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %101 = call i32 @archive_match_excluded(%struct.archive* %99, %struct.archive_entry* %100)
  %102 = call i32 @assertEqualInt(i32 1, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @__archive_get_date(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  %105 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %105, i32 %106, i32 0)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @__archive_get_date(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %109, i32* %4, align 4
  %110 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %110, i32 %111, i32 0)
  %113 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %114 = load %struct.archive*, %struct.archive** %2, align 8
  %115 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %116 = call i32 @archive_match_time_excluded(%struct.archive* %114, %struct.archive_entry* %115)
  %117 = call i32 @assertEqualInt(i32 1, i32 %116)
  %118 = load %struct.archive*, %struct.archive** %2, align 8
  %119 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %120 = call i32 @archive_match_excluded(%struct.archive* %118, %struct.archive_entry* %119)
  %121 = call i32 @assertEqualInt(i32 1, i32 %120)
  %122 = load %struct.archive*, %struct.archive** %2, align 8
  %123 = load %struct.archive*, %struct.archive** %2, align 8
  %124 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %125 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @archive_match_include_date_w(%struct.archive* %123, i32 %130, i8* bitcast ([19 x i32]* @.str to i8*))
  %132 = call i32 @assertEqualIntA(%struct.archive* %122, i32 0, i32 %131)
  %133 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %134 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @__archive_get_date(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %136, i32* %4, align 4
  %137 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %137, i32 %138, i32 0)
  %140 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %140, i32 %141, i32 0)
  %143 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %144 = load %struct.archive*, %struct.archive** %2, align 8
  %145 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %146 = call i32 @archive_match_time_excluded(%struct.archive* %144, %struct.archive_entry* %145)
  %147 = call i32 @assertEqualInt(i32 0, i32 %146)
  %148 = load %struct.archive*, %struct.archive** %2, align 8
  %149 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %150 = call i32 @archive_match_excluded(%struct.archive* %148, %struct.archive_entry* %149)
  %151 = call i32 @assertEqualInt(i32 0, i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @__archive_get_date(i32 %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %153, i32* %4, align 4
  %154 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %154, i32 %155, i32 0)
  %157 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %157, i32 %158, i32 0)
  %160 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.archive*, %struct.archive** %2, align 8
  %162 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %163 = call i32 @archive_match_time_excluded(%struct.archive* %161, %struct.archive_entry* %162)
  %164 = call i32 @assertEqualInt(i32 0, i32 %163)
  %165 = load %struct.archive*, %struct.archive** %2, align 8
  %166 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %167 = call i32 @archive_match_excluded(%struct.archive* %165, %struct.archive_entry* %166)
  %168 = call i32 @assertEqualInt(i32 0, i32 %167)
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @__archive_get_date(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %170, i32* %4, align 4
  %171 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %171, i32 %172, i32 0)
  %174 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %174, i32 %175, i32 0)
  %177 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %178 = load %struct.archive*, %struct.archive** %2, align 8
  %179 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %180 = call i32 @archive_match_time_excluded(%struct.archive* %178, %struct.archive_entry* %179)
  %181 = call i32 @assertEqualInt(i32 1, i32 %180)
  %182 = load %struct.archive*, %struct.archive** %2, align 8
  %183 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %184 = call i32 @archive_match_excluded(%struct.archive* %182, %struct.archive_entry* %183)
  %185 = call i32 @assertEqualInt(i32 1, i32 %184)
  %186 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %187 = call i32 @archive_entry_free(%struct.archive_entry* %186)
  %188 = load %struct.archive*, %struct.archive** %2, align 8
  %189 = call i32 @archive_match_free(%struct.archive* %188)
  br label %190

190:                                              ; preds = %20, %17, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_date_w(%struct.archive*, i32, i8*) #1

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
