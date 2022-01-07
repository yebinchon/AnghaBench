; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_archive_names_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_archive_names_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32, i32 }
%struct.archive = type { i32 }
%struct.lafe_line_reader = type { i32 }

@OPTFLAG_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Meaningless argument for -C: ''\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Unexpected end of filename list; directory expected after -C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdtar*, %struct.archive*)* @archive_names_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @archive_names_from_file(%struct.bsdtar* %0, %struct.archive* %1) #0 {
  %3 = alloca %struct.bsdtar*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.lafe_line_reader*, align 8
  %6 = alloca i8*, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %3, align 8
  store %struct.archive* %1, %struct.archive** %4, align 8
  %7 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %8 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %10 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %13 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OPTFLAG_NULL, align 4
  %16 = and i32 %14, %15
  %17 = call %struct.lafe_line_reader* @lafe_line_reader(i32 %11, i32 %16)
  store %struct.lafe_line_reader* %17, %struct.lafe_line_reader** %5, align 8
  br label %18

18:                                               ; preds = %71, %2
  %19 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %20 = call i8* @lafe_line_reader_next(%struct.lafe_line_reader* %19)
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @set_chdir(%struct.bsdtar* %33, i8* %34)
  br label %40

36:                                               ; preds = %27
  %37 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %39 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %42 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %71

43:                                               ; preds = %22
  %44 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %45 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OPTFLAG_NULL, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %56 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %70

57:                                               ; preds = %50, %43
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %64 = call i32 @do_chdir(%struct.bsdtar* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %67 = load %struct.archive*, %struct.archive** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @write_hierarchy(%struct.bsdtar* %66, %struct.archive* %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %54
  br label %71

71:                                               ; preds = %70, %40
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %74 = call i32 @lafe_line_reader_free(%struct.lafe_line_reader* %73)
  %75 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %76 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @lafe_errc(i32 1, i32 %80, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  ret void
}

declare dso_local %struct.lafe_line_reader* @lafe_line_reader(i32, i32) #1

declare dso_local i8* @lafe_line_reader_next(%struct.lafe_line_reader*) #1

declare dso_local i32 @set_chdir(%struct.bsdtar*, i8*) #1

declare dso_local i32 @lafe_warnc(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @do_chdir(%struct.bsdtar*) #1

declare dso_local i32 @write_hierarchy(%struct.bsdtar*, %struct.archive*, i8*) #1

declare dso_local i32 @lafe_line_reader_free(%struct.lafe_line_reader*) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
