; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_list_unmatched_inclusions_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_list_unmatched_inclusions_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { i32, i64, %struct.match*, %struct.match* }
%struct.match = type { %struct.match*, i32, i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i32, i8**)* @match_list_unmatched_inclusions_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_list_unmatched_inclusions_next(%struct.archive_match* %0, %struct.match_list* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_match*, align 8
  %7 = alloca %struct.match_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.match*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %6, align 8
  store %struct.match_list* %1, %struct.match_list** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load i8**, i8*** %9, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.match_list*, %struct.match_list** %7, align 8
  %16 = getelementptr inbounds %struct.match_list, %struct.match_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.match_list*, %struct.match_list** %7, align 8
  %21 = getelementptr inbounds %struct.match_list, %struct.match_list* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %22, i32* %5, align 4
  br label %124

23:                                               ; preds = %4
  %24 = load %struct.match_list*, %struct.match_list** %7, align 8
  %25 = getelementptr inbounds %struct.match_list, %struct.match_list* %24, i32 0, i32 2
  %26 = load %struct.match*, %struct.match** %25, align 8
  %27 = icmp eq %struct.match* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.match_list*, %struct.match_list** %7, align 8
  %30 = getelementptr inbounds %struct.match_list, %struct.match_list* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %34, i32* %5, align 4
  br label %124

35:                                               ; preds = %28
  %36 = load %struct.match_list*, %struct.match_list** %7, align 8
  %37 = getelementptr inbounds %struct.match_list, %struct.match_list* %36, i32 0, i32 3
  %38 = load %struct.match*, %struct.match** %37, align 8
  %39 = load %struct.match_list*, %struct.match_list** %7, align 8
  %40 = getelementptr inbounds %struct.match_list, %struct.match_list* %39, i32 0, i32 2
  store %struct.match* %38, %struct.match** %40, align 8
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.match_list*, %struct.match_list** %7, align 8
  %43 = getelementptr inbounds %struct.match_list, %struct.match_list* %42, i32 0, i32 2
  %44 = load %struct.match*, %struct.match** %43, align 8
  store %struct.match* %44, %struct.match** %10, align 8
  br label %45

45:                                               ; preds = %116, %41
  %46 = load %struct.match*, %struct.match** %10, align 8
  %47 = icmp ne %struct.match* %46, null
  br i1 %47, label %48, label %120

48:                                               ; preds = %45
  %49 = load %struct.match*, %struct.match** %10, align 8
  %50 = getelementptr inbounds %struct.match, %struct.match* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %116

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %59 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %58, i32 0, i32 0
  %60 = load %struct.match*, %struct.match** %10, align 8
  %61 = getelementptr inbounds %struct.match, %struct.match* %60, i32 0, i32 1
  %62 = call i32 @archive_mstring_get_mbs(i32* %59, i32* %61, i8** %12)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @ENOMEM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %71 = call i32 @error_nomem(%struct.archive_match* %70)
  store i32 %71, i32* %5, align 4
  br label %124

72:                                               ; preds = %65, %57
  %73 = load i8*, i8** %12, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i8*, i8** %12, align 8
  %78 = load i8**, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  br label %101

79:                                               ; preds = %54
  %80 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %81 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %80, i32 0, i32 0
  %82 = load %struct.match*, %struct.match** %10, align 8
  %83 = getelementptr inbounds %struct.match, %struct.match* %82, i32 0, i32 1
  %84 = call i32 @archive_mstring_get_wcs(i32* %81, i32* %83, i8** %13)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @ENOMEM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %93 = call i32 @error_nomem(%struct.archive_match* %92)
  store i32 %93, i32* %5, align 4
  br label %124

94:                                               ; preds = %87, %79
  %95 = load i8*, i8** %13, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8* bitcast ([1 x i32]* @.str.1 to i8*), i8** %13, align 8
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i8*, i8** %13, align 8
  %100 = load i8**, i8*** %9, align 8
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %76
  %102 = load %struct.match*, %struct.match** %10, align 8
  %103 = getelementptr inbounds %struct.match, %struct.match* %102, i32 0, i32 0
  %104 = load %struct.match*, %struct.match** %103, align 8
  %105 = load %struct.match_list*, %struct.match_list** %7, align 8
  %106 = getelementptr inbounds %struct.match_list, %struct.match_list* %105, i32 0, i32 2
  store %struct.match* %104, %struct.match** %106, align 8
  %107 = load %struct.match_list*, %struct.match_list** %7, align 8
  %108 = getelementptr inbounds %struct.match_list, %struct.match_list* %107, i32 0, i32 2
  %109 = load %struct.match*, %struct.match** %108, align 8
  %110 = icmp eq %struct.match* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.match_list*, %struct.match_list** %7, align 8
  %113 = getelementptr inbounds %struct.match_list, %struct.match_list* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %101
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %115, i32* %5, align 4
  br label %124

116:                                              ; preds = %53
  %117 = load %struct.match*, %struct.match** %10, align 8
  %118 = getelementptr inbounds %struct.match, %struct.match* %117, i32 0, i32 0
  %119 = load %struct.match*, %struct.match** %118, align 8
  store %struct.match* %119, %struct.match** %10, align 8
  br label %45

120:                                              ; preds = %45
  %121 = load %struct.match_list*, %struct.match_list** %7, align 8
  %122 = getelementptr inbounds %struct.match_list, %struct.match_list* %121, i32 0, i32 2
  store %struct.match* null, %struct.match** %122, align 8
  %123 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %114, %91, %69, %33, %19
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @archive_mstring_get_mbs(i32*, i32*, i8**) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i32 @archive_mstring_get_wcs(i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
