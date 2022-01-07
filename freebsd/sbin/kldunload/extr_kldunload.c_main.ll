; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldunload/extr_kldunload.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldunload/extr_kldunload.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kld_file_stat = type { i32, i8* }

@OPT_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"finv\00", align 1
@OPT_FORCE = common dso_local global i32 0, align 4
@OPT_ID = common dso_local global i32 0, align 4
@OPT_VERBOSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid ID %s\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"can't find file %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"can't stat file\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unloading %s, id=%d\0A\00", align 1
@LINKER_UNLOAD_FORCE = common dso_local global i32 0, align 4
@LINKER_UNLOAD_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"can't unload file\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kld_file_stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* @OPT_NULL, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %33 [
    i32 102, label %20
    i32 105, label %24
    i32 110, label %28
    i32 118, label %29
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @OPT_FORCE, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* @OPT_ID, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %35

28:                                               ; preds = %18
  br label %35

29:                                               ; preds = %18
  %30 = load i32, i32* @OPT_VERBOSE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %35

33:                                               ; preds = %18
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %29, %28, %24, %20
  br label %13

36:                                               ; preds = %13
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %36
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  %53 = load i8*, i8** %51, align 8
  store i8* %53, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %115

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @OPT_ID, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @atoi(i8* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @errx(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %79

70:                                               ; preds = %55
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @kldfind(i8* %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @errx(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @OPT_VERBOSE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %6, i32 0, i32 0
  store i32 16, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @kldstat(i32 %86, %struct.kld_file_stat* %6)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 @err(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %6, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %79
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @OPT_FORCE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @LINKER_UNLOAD_FORCE, align 4
  store i32 %103, i32* %9, align 4
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @LINKER_UNLOAD_NORMAL, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @kldunloadf(i32 %107, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @EXIT_FAILURE, align 4
  %113 = call i32 @err(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  br label %50

115:                                              ; preds = %50
  %116 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %116
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @kldfind(i8*) #1

declare dso_local i64 @kldstat(i32, %struct.kld_file_stat*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i64 @kldunloadf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
