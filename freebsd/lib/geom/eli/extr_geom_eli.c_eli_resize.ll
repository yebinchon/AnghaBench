; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot get information about %s: %s.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Cannot allocate memory.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oldsize\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid oldsize: Out of range.\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Size hasn't changed.\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot read old metadata: %s.\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"Provider's %s metadata version %u is too new.\0Ageli: The highest supported version is %u.\00", align 1
@G_ELI_VERSION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Inconsistent provider's %s metadata.\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"Unexpected error while decoding provider's %s metadata: %s.\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Provider size mismatch at oldsize.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_resize(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_eli_metadata, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %12 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %13 = call i32 @gctl_get_int(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %18 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %149

19:                                               ; preds = %1
  %20 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %21 = call i8* @gctl_get_ascii(%struct.gctl_req* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @g_open(i8* %22, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %28, i32 %30)
  br label %134

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @g_mediasize(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @g_sectorsize(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39, %32
  %43 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %46)
  br label %134

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %55 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %134

56:                                               ; preds = %48
  %57 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %58 = call i32 @gctl_get_intmax(%struct.gctl_req* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %56
  %66 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %67 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %134

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %74 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %134

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @pread(i32 %76, i8* %77, i32 %78, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @strerror(i32 %87)
  %89 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  br label %134

90:                                               ; preds = %75
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @eli_metadata_decode(i8* %91, %struct.g_eli_metadata* %3)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  switch i32 %93, label %107 [
    i32 0, label %94
    i32 128, label %95
    i32 129, label %103
  ]

94:                                               ; preds = %90
  br label %113

95:                                               ; preds = %90
  %96 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @G_ELI_VERSION, align 4
  %102 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %96, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i8* %97, i32 %100, i32 %101)
  br label %134

103:                                              ; preds = %90
  %104 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %105)
  br label %134

107:                                              ; preds = %90
  %108 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @strerror(i32 %110)
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %108, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i8* %109, i32 %111)
  br label %134

113:                                              ; preds = %94
  %114 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %120 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %134

121:                                              ; preds = %113
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @eli_metadata_store(%struct.gctl_req* %124, i8* %125, %struct.g_eli_metadata* %3)
  %127 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @eli_trash_metadata(%struct.gctl_req* %127, i8* %128, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %121, %118, %107, %103, %95, %85, %72, %65, %53, %42, %26
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @g_close(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @explicit_bzero(i8* %144, i32 %145)
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @free(i8* %147)
  br label %149

149:                                              ; preds = %16, %143, %140
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_mediasize(i32) #1

declare dso_local i32 @g_sectorsize(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @gctl_get_intmax(%struct.gctl_req*, i8*) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @eli_metadata_decode(i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @eli_metadata_store(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @eli_trash_metadata(%struct.gctl_req*, i8*, i32, i32) #1

declare dso_local i32 @g_close(i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
