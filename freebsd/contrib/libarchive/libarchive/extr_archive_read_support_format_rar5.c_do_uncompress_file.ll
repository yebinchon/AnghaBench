; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_uncompress_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_uncompress_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.filter_info = type { i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@CDE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't read first filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @do_uncompress_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_uncompress_file(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.rar5*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.filter_info*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %9 = call %struct.rar5* @get_context(%struct.archive_read* %8)
  store %struct.rar5* %9, %struct.rar5** %4, align 8
  %10 = load %struct.rar5*, %struct.rar5** %4, align 8
  %11 = getelementptr inbounds %struct.rar5, %struct.rar5* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %1
  %16 = load %struct.rar5*, %struct.rar5** %4, align 8
  %17 = getelementptr inbounds %struct.rar5, %struct.rar5* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.rar5*, %struct.rar5** %4, align 8
  %23 = getelementptr inbounds %struct.rar5, %struct.rar5* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.rar5*, %struct.rar5** %4, align 8
  %29 = call i32 @init_unpack(%struct.rar5* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.rar5*, %struct.rar5** %4, align 8
  %32 = getelementptr inbounds %struct.rar5, %struct.rar5* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.rar5*, %struct.rar5** %4, align 8
  %36 = getelementptr inbounds %struct.rar5, %struct.rar5* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %63
  %42 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %43 = call i32 @process_block(%struct.archive_read* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ARCHIVE_EOF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %139

53:                                               ; preds = %47
  %54 = load %struct.rar5*, %struct.rar5** %4, align 8
  %55 = getelementptr inbounds %struct.rar5, %struct.rar5* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rar5*, %struct.rar5** %4, align 8
  %59 = getelementptr inbounds %struct.rar5, %struct.rar5* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %41

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %68 = call i32 @apply_filters(%struct.archive_read* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ARCHIVE_RETRY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %73, i32* %2, align 4
  br label %139

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ARCHIVE_FATAL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %2, align 4
  br label %139

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.rar5*, %struct.rar5** %4, align 8
  %83 = getelementptr inbounds %struct.rar5, %struct.rar5* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = call i64 @cdeque_size(i32* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %81
  %88 = load i64, i64* @CDE_OK, align 8
  %89 = load %struct.rar5*, %struct.rar5** %4, align 8
  %90 = getelementptr inbounds %struct.rar5, %struct.rar5* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = call i32 @cdeque_filter_p(%struct.filter_info** %7)
  %93 = call i64 @cdeque_front(i32* %91, i32 %92)
  %94 = icmp ne i64 %88, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %97 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %96, i32 0, i32 0
  %98 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %99 = call i32 @archive_set_error(i32* %97, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %100, i32* %2, align 4
  br label %139

101:                                              ; preds = %87
  %102 = load %struct.filter_info*, %struct.filter_info** %7, align 8
  %103 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rar5*, %struct.rar5** %4, align 8
  %106 = getelementptr inbounds %struct.rar5, %struct.rar5* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @rar5_min(i32 %104, i64 %108)
  store i64 %109, i64* %6, align 8
  br label %115

110:                                              ; preds = %81
  %111 = load %struct.rar5*, %struct.rar5** %4, align 8
  %112 = getelementptr inbounds %struct.rar5, %struct.rar5* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %110, %101
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.rar5*, %struct.rar5** %4, align 8
  %118 = getelementptr inbounds %struct.rar5, %struct.rar5* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %116, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %123, i32* %2, align 4
  br label %139

124:                                              ; preds = %115
  %125 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %126 = load %struct.rar5*, %struct.rar5** %4, align 8
  %127 = load %struct.rar5*, %struct.rar5** %4, align 8
  %128 = getelementptr inbounds %struct.rar5, %struct.rar5* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @push_window_data(%struct.archive_read* %125, %struct.rar5* %126, i64 %130, i64 %131)
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.rar5*, %struct.rar5** %4, align 8
  %135 = getelementptr inbounds %struct.rar5, %struct.rar5* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %122, %95, %78, %72, %51
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @init_unpack(%struct.rar5*) #1

declare dso_local i32 @process_block(%struct.archive_read*) #1

declare dso_local i32 @apply_filters(%struct.archive_read*) #1

declare dso_local i64 @cdeque_size(i32*) #1

declare dso_local i64 @cdeque_front(i32*, i32) #1

declare dso_local i32 @cdeque_filter_p(%struct.filter_info**) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @rar5_min(i32, i64) #1

declare dso_local i32 @push_window_data(%struct.archive_read*, %struct.rar5*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
