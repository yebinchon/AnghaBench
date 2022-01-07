; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32*, i32, i32, i32, i32*, i32** }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"no files or directories specified\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pax restricted\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't use format %s: %s\0A\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unsupported compression option --%s\00", align 1
@passphrase_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tar_mode_c(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %6 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %7 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %6, i32 0, i32 6
  %8 = load i32**, i32*** %7, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %13 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11, %1
  %19 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %19, %struct.archive** %3, align 8
  %20 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %21 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cset_get_format(i32 %22)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_write_set_format_pax_restricted(%struct.archive* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %29 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cset_set_format(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.archive*, %struct.archive** %3, align 8
  %34 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %35 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cset_get_format(i32 %36)
  %38 = call i32 @archive_write_set_format_by_name(%struct.archive* %33, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %46 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @cset_get_format(i32 %47)
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = call i8* @archive_error_string(%struct.archive* %49)
  %51 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %50)
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %43, %39
  %54 = load %struct.archive*, %struct.archive** %3, align 8
  %55 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %56 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %54, i32 %57)
  %59 = load %struct.archive*, %struct.archive** %3, align 8
  %60 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %61 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %59, i32 %62)
  %64 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %65 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.archive*, %struct.archive** %3, align 8
  %68 = call i32 @cset_write_add_filters(i32 %66, %struct.archive* %67, i8** %4)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ARCHIVE_WARN, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %53
  %76 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %77 = load %struct.archive*, %struct.archive** %3, align 8
  %78 = call i32 @set_writer_options(%struct.bsdtar* %76, %struct.archive* %77)
  %79 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %80 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.archive*, %struct.archive** %3, align 8
  %85 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %86 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @archive_write_set_passphrase(%struct.archive* %84, i32* %87)
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %75
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %92 = call i32 @archive_write_set_passphrase_callback(%struct.archive* %90, %struct.bsdtar* %91, i32* @passphrase_callback)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @ARCHIVE_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.archive*, %struct.archive** %3, align 8
  %99 = call i8* @archive_error_string(%struct.archive* %98)
  %100 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = load %struct.archive*, %struct.archive** %3, align 8
  %104 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %105 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @archive_write_open_filename(%struct.archive* %103, i32 %106)
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.archive*, %struct.archive** %3, align 8
  %111 = call i8* @archive_error_string(%struct.archive* %110)
  %112 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %101
  %114 = load %struct.archive*, %struct.archive** %3, align 8
  %115 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %116 = call i32 @write_archive(%struct.archive* %114, %struct.bsdtar* %115)
  ret void
}

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i8* @cset_get_format(i32) #1

declare dso_local i32 @archive_write_set_format_pax_restricted(%struct.archive*) #1

declare dso_local i32 @cset_set_format(i32, i8*) #1

declare dso_local i32 @archive_write_set_format_by_name(%struct.archive*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

declare dso_local i32 @cset_write_add_filters(i32, %struct.archive*, i8**) #1

declare dso_local i32 @set_writer_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i32 @archive_write_set_passphrase(%struct.archive*, i32*) #1

declare dso_local i32 @archive_write_set_passphrase_callback(%struct.archive*, %struct.bsdtar*, i32*) #1

declare dso_local i32 @archive_write_open_filename(%struct.archive*, i32) #1

declare dso_local i32 @write_archive(%struct.archive*, %struct.bsdtar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
