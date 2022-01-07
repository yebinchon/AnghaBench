; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_greatest_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_greatest_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i8* }

@ISC_LOG_TOFILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*)* @greatest_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @greatest_version(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %10, align 4
  store i8 47, i8* %14, align 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISC_LOG_TOFILE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i8* @FILE_NAME(%struct.TYPE_11__* %22)
  %24 = load i8, i8* %14, align 1
  %25 = call i8* @strrchr(i8* %23, i8 signext %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 0, i8* %29, align 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i8* @FILE_NAME(%struct.TYPE_11__* %31)
  store i8* %32, i8** %8, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i8* @FILE_NAME(%struct.TYPE_11__* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @DE_CONST(i8* %35, i8* %36)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %11, align 8
  %41 = call i32 @isc_dir_init(%struct.TYPE_12__* %12)
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @isc_dir_open(%struct.TYPE_12__* %12, i8* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = call i8* @FILE_NAME(%struct.TYPE_11__* %45)
  %47 = icmp ne i8* %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i8, i8* %14, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8 %49, i8* %51, align 1
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @ISC_R_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %3, align 8
  br label %112

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %105, %58
  %60 = call i64 @isc_dir_read(%struct.TYPE_12__* %12)
  %61 = load i64, i64* @ISC_R_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @strncmp(i8* %72, i8* %73, i64 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 @strtol(i8* %92, i8** %7, i32 10)
  store i32 %93, i32* %9, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %98, %86
  br label %105

105:                                              ; preds = %104, %77, %69, %63
  br label %59

106:                                              ; preds = %59
  %107 = call i32 @isc_dir_close(%struct.TYPE_12__* %12)
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %106, %56
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @FILE_NAME(%struct.TYPE_11__*) #1

declare dso_local i32 @DE_CONST(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isc_dir_init(%struct.TYPE_12__*) #1

declare dso_local i64 @isc_dir_open(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @isc_dir_read(%struct.TYPE_12__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @isc_dir_close(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
