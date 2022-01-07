; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_init_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_init_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { %struct._citrus_iconv_std_shared* }
%struct._citrus_iconv_std_shared = type { i32, i32, i32, i32, i32 }
%struct._citrus_esdb = type { i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv_shared*, i8*, i8*)* @_citrus_iconv_std_iconv_init_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_iconv_std_iconv_init_shared(%struct._citrus_iconv_shared* %0, i8* noalias %1, i8* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_iconv_shared*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._citrus_esdb, align 4
  %9 = alloca %struct._citrus_esdb, align 4
  %10 = alloca %struct._citrus_iconv_std_shared*, align 8
  %11 = alloca i32, align 4
  store %struct._citrus_iconv_shared* %0, %struct._citrus_iconv_shared** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call %struct._citrus_iconv_std_shared* @malloc(i32 20)
  store %struct._citrus_iconv_std_shared* %12, %struct._citrus_iconv_std_shared** %10, align 8
  %13 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %14 = icmp eq %struct._citrus_iconv_std_shared* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %11, align 4
  br label %96

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @_citrus_esdb_open(%struct._citrus_esdb* %9, i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %93

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @_citrus_esdb_open(%struct._citrus_esdb* %8, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %91

29:                                               ; preds = %23
  %30 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %31 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %9, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %9, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_stdenc_open(i32* %31, i32 %33, i32 %35, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %89

42:                                               ; preds = %29
  %43 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %44 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %8, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %8, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %8, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_stdenc_open(i32* %44, i32 %46, i32 %48, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %84

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %59 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct._citrus_esdb, %struct._citrus_esdb* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %63 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %65 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %64, i32 0, i32 2
  %66 = call i32 @TAILQ_INIT(i32* %65)
  %67 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %68 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %67, i32 0, i32 2
  %69 = call i32 @open_srcs(i32* %68, %struct._citrus_esdb* %9, %struct._citrus_esdb* %8)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %79

73:                                               ; preds = %55
  %74 = call i32 @_esdb_close(%struct._citrus_esdb* %9)
  %75 = call i32 @_esdb_close(%struct._citrus_esdb* %8)
  %76 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %77 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %5, align 8
  %78 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %77, i32 0, i32 0
  store %struct._citrus_iconv_std_shared* %76, %struct._citrus_iconv_std_shared** %78, align 8
  store i32 0, i32* %4, align 4
  br label %98

79:                                               ; preds = %72
  %80 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %81 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @_stdenc_close(i32 %82)
  br label %84

84:                                               ; preds = %79, %54
  %85 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %86 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_stdenc_close(i32 %87)
  br label %89

89:                                               ; preds = %84, %41
  %90 = call i32 @_esdb_close(%struct._citrus_esdb* %8)
  br label %91

91:                                               ; preds = %89, %28
  %92 = call i32 @_esdb_close(%struct._citrus_esdb* %9)
  br label %93

93:                                               ; preds = %91, %22
  %94 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %10, align 8
  %95 = call i32 @free(%struct._citrus_iconv_std_shared* %94)
  br label %96

96:                                               ; preds = %93, %15
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %73
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct._citrus_iconv_std_shared* @malloc(i32) #1

declare dso_local i32 @_citrus_esdb_open(%struct._citrus_esdb*, i8*) #1

declare dso_local i32 @_stdenc_open(i32*, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @open_srcs(i32*, %struct._citrus_esdb*, %struct._citrus_esdb*) #1

declare dso_local i32 @_esdb_close(%struct._citrus_esdb*) #1

declare dso_local i32 @_stdenc_close(i32) #1

declare dso_local i32 @free(%struct._citrus_iconv_std_shared*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
