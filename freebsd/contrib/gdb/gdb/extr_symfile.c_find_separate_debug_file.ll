; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_separate_debug_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_separate_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8* }

@debug_file_directory = common dso_local global i8* null, align 8
@DEBUG_SUBDIRECTORY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.objfile*)* @find_separate_debug_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_separate_debug_file(%struct.objfile* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  %12 = load %struct.objfile*, %struct.objfile** %3, align 8
  %13 = call i8* @get_debug_link_info(%struct.objfile* %12, i64* %10)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %145

17:                                               ; preds = %1
  %18 = load %struct.objfile*, %struct.objfile** %3, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %38, %17
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @IS_DIR_SEPARATOR(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %11, align 4
  br label %25

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @IS_DIR_SEPARATOR(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @gdb_assert(i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** @debug_file_directory, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %63, %65
  %67 = load i8*, i8** @DEBUG_SUBDIRECTORY, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %66, %68
  %70 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = add nsw i32 %69, %70
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, 1
  %76 = call i8* @alloca(i32 %75)
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strcpy(i8* %77, i8* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcat(i8* %80, i8* %81)
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @separate_debug_file_exists(i8* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %52
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @xfree(i8* %88)
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @xfree(i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = call i8* @xstrdup(i8* %92)
  store i8* %93, i8** %2, align 8
  br label %145

94:                                               ; preds = %52
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @strcpy(i8* %95, i8* %96)
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** @DEBUG_SUBDIRECTORY, align 8
  %100 = call i32 @strcat(i8* %98, i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @strcat(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strcat(i8* %103, i8* %104)
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @separate_debug_file_exists(i8* %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %94
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @xfree(i8* %111)
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @xfree(i8* %113)
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* @xstrdup(i8* %115)
  store i8* %116, i8** %2, align 8
  br label %145

117:                                              ; preds = %94
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** @debug_file_directory, align 8
  %120 = call i32 @strcpy(i8* %118, i8* %119)
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @strcat(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @strcat(i8* %123, i8* %124)
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @strcat(i8* %126, i8* %127)
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i64 @separate_debug_file_exists(i8* %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %117
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @xfree(i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @xfree(i8* %136)
  %138 = load i8*, i8** %7, align 8
  %139 = call i8* @xstrdup(i8* %138)
  store i8* %139, i8** %2, align 8
  br label %145

140:                                              ; preds = %117
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @xfree(i8* %141)
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @xfree(i8* %143)
  store i8* null, i8** %2, align 8
  br label %145

145:                                              ; preds = %140, %133, %110, %87, %16
  %146 = load i8*, i8** %2, align 8
  ret i8* %146
}

declare dso_local i8* @get_debug_link_info(%struct.objfile*, i64*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @separate_debug_file_exists(i8*, i64) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
