; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_open_srcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_open_srcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_std_src_list = type { i32 }
%struct._esdb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct._citrus_iconv_std_src = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@ss_entry = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv_std_src_list*, %struct._esdb*, %struct._esdb*)* @open_srcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_srcs(%struct._citrus_iconv_std_src_list* %0, %struct._esdb* %1, %struct._esdb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_iconv_std_src_list*, align 8
  %6 = alloca %struct._esdb*, align 8
  %7 = alloca %struct._esdb*, align 8
  %8 = alloca %struct._citrus_iconv_std_src*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._citrus_iconv_std_src_list* %0, %struct._citrus_iconv_std_src_list** %5, align 8
  store %struct._esdb* %1, %struct._esdb** %6, align 8
  store %struct._esdb* %2, %struct._esdb** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = call %struct._citrus_iconv_std_src* @malloc(i32 8)
  store %struct._citrus_iconv_std_src* %12, %struct._citrus_iconv_std_src** %8, align 8
  %13 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %14 = icmp eq %struct._citrus_iconv_std_src* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %19 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %18, i32 0, i32 0
  %20 = call i32 @TAILQ_INIT(i32* %19)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %73, %17
  %22 = load i32, i32* %10, align 4
  %23 = load %struct._esdb*, %struct._esdb** %6, align 8
  %24 = getelementptr inbounds %struct._esdb, %struct._esdb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %21
  %28 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %29 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %28, i32 0, i32 0
  %30 = load %struct._esdb*, %struct._esdb** %6, align 8
  %31 = getelementptr inbounds %struct._esdb, %struct._esdb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = load %struct._esdb*, %struct._esdb** %7, align 8
  %37 = call i32 @open_dsts(i32* %29, %struct.TYPE_2__* %35, %struct._esdb* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %86

41:                                               ; preds = %27
  %42 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %43 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %42, i32 0, i32 0
  %44 = call i32 @TAILQ_EMPTY(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %41
  %47 = load %struct._esdb*, %struct._esdb** %6, align 8
  %48 = getelementptr inbounds %struct._esdb, %struct._esdb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %56 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src_list** %5, align 8
  %58 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %59 = load i32, i32* @ss_entry, align 4
  %60 = call i32 @TAILQ_INSERT_TAIL(%struct._citrus_iconv_std_src_list* %57, %struct._citrus_iconv_std_src* %58, i32 %59)
  %61 = call %struct._citrus_iconv_std_src* @malloc(i32 8)
  store %struct._citrus_iconv_std_src* %61, %struct._citrus_iconv_std_src** %8, align 8
  %62 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %63 = icmp eq %struct._citrus_iconv_std_src* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %11, align 4
  br label %86

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %70 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %69, i32 0, i32 0
  %71 = call i32 @TAILQ_INIT(i32* %70)
  br label %72

72:                                               ; preds = %66, %41
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %21

76:                                               ; preds = %21
  %77 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %78 = call i32 @free(%struct._citrus_iconv_std_src* %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOENT, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ 0, %81 ], [ %83, %82 ]
  store i32 %85, i32* %4, align 4
  br label %92

86:                                               ; preds = %64, %40
  %87 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %8, align 8
  %88 = call i32 @free(%struct._citrus_iconv_std_src* %87)
  %89 = load %struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src_list** %5, align 8
  %90 = call i32 @close_srcs(%struct._citrus_iconv_std_src_list* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %84, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct._citrus_iconv_std_src* @malloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @open_dsts(i32*, %struct.TYPE_2__*, %struct._esdb*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src*, i32) #1

declare dso_local i32 @free(%struct._citrus_iconv_std_src*) #1

declare dso_local i32 @close_srcs(%struct._citrus_iconv_std_src_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
