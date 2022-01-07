; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_context = type { i32, i32*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LIBUSB_DEBUG\00", align 1
@errno = common dso_local global i64 0, align 8
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4
@NO_THREAD = common dso_local global i8* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@default_context_lock = common dso_local global i32 0, align 4
@usbi_default_context = common dso_local global %struct.libusb_context* null, align 8
@LIBUSB_DEBUG_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"libusb_init complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_init(%struct.libusb_context** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb_context**, align 8
  %4 = alloca %struct.libusb_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.libusb_context** %0, %struct.libusb_context*** %3, align 8
  %9 = call %struct.libusb_context* @malloc(i32 72)
  store %struct.libusb_context* %9, %struct.libusb_context** %4, align 8
  %10 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %11 = icmp ne %struct.libusb_context* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %13, i32* %2, align 4
  br label %182

14:                                               ; preds = %1
  %15 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %16 = call i32 @memset(%struct.libusb_context* %15, i32 0, i32 72)
  %17 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  store i64 0, i64* @errno, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strtol(i8* %21, i8** %7, i32 10)
  %23 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %24 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %23, i32 0, i32 12
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @errno, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %34 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %38

35:                                               ; preds = %27, %20
  %36 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %37 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %36, i32 0, i32 12
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %41 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %40, i32 0, i32 11
  %42 = call i32 @TAILQ_INIT(i32* %41)
  %43 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %44 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %43, i32 0, i32 10
  %45 = call i32 @TAILQ_INIT(i32* %44)
  %46 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %47 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %46, i32 0, i32 9
  %48 = call i32 @TAILQ_INIT(i32* %47)
  %49 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %50 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %49, i32 0, i32 8
  %51 = call i32 @TAILQ_INIT(i32* %50)
  %52 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %53 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %52, i32 0, i32 5
  %54 = call i64 @pthread_mutex_init(i32* %53, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %58 = call i32 @free(%struct.libusb_context* %57)
  %59 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %59, i32* %2, align 4
  br label %182

60:                                               ; preds = %39
  %61 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %62 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %61, i32 0, i32 4
  %63 = call i64 @pthread_mutex_init(i32* %62, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %67 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %66, i32 0, i32 5
  %68 = call i32 @pthread_mutex_destroy(i32* %67)
  %69 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %70 = call i32 @free(%struct.libusb_context* %69)
  %71 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %71, i32* %2, align 4
  br label %182

72:                                               ; preds = %60
  %73 = call i64 @pthread_condattr_init(i32* %5)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %77 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %76, i32 0, i32 5
  %78 = call i32 @pthread_mutex_destroy(i32* %77)
  %79 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %80 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %79, i32 0, i32 4
  %81 = call i32 @pthread_mutex_destroy(i32* %80)
  %82 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %83 = call i32 @free(%struct.libusb_context* %82)
  %84 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %84, i32* %2, align 4
  br label %182

85:                                               ; preds = %72
  %86 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %87 = call i64 @pthread_condattr_setclock(i32* %5, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %91 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %90, i32 0, i32 5
  %92 = call i32 @pthread_mutex_destroy(i32* %91)
  %93 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %94 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %93, i32 0, i32 4
  %95 = call i32 @pthread_mutex_destroy(i32* %94)
  %96 = call i32 @pthread_condattr_destroy(i32* %5)
  %97 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %98 = call i32 @free(%struct.libusb_context* %97)
  %99 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %99, i32* %2, align 4
  br label %182

100:                                              ; preds = %85
  %101 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %102 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %101, i32 0, i32 3
  %103 = call i64 @pthread_cond_init(i32* %102, i32* %5)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %107 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %106, i32 0, i32 5
  %108 = call i32 @pthread_mutex_destroy(i32* %107)
  %109 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %110 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %109, i32 0, i32 4
  %111 = call i32 @pthread_mutex_destroy(i32* %110)
  %112 = call i32 @pthread_condattr_destroy(i32* %5)
  %113 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %114 = call i32 @free(%struct.libusb_context* %113)
  %115 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %115, i32* %2, align 4
  br label %182

116:                                              ; preds = %100
  %117 = call i32 @pthread_condattr_destroy(i32* %5)
  %118 = load i8*, i8** @NO_THREAD, align 8
  %119 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %120 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @NO_THREAD, align 8
  %122 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %123 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %125 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @pipe(i32* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %116
  %131 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %132 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %131, i32 0, i32 5
  %133 = call i32 @pthread_mutex_destroy(i32* %132)
  %134 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %135 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %134, i32 0, i32 4
  %136 = call i32 @pthread_mutex_destroy(i32* %135)
  %137 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %138 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %137, i32 0, i32 3
  %139 = call i32 @pthread_cond_destroy(i32* %138)
  %140 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %141 = call i32 @free(%struct.libusb_context* %140)
  %142 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %142, i32* %2, align 4
  br label %182

143:                                              ; preds = %116
  %144 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %145 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @libusb_set_nonblocking(i32 %148)
  %150 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %151 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @libusb_set_nonblocking(i32 %154)
  %156 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %157 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %158 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %157, i32 0, i32 2
  %159 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %160 = getelementptr inbounds %struct.libusb_context, %struct.libusb_context* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @POLLIN, align 4
  %165 = call i32 @libusb10_add_pollfd(%struct.libusb_context* %156, i32* %158, i32* null, i32 %163, i32 %164)
  %166 = call i32 @pthread_mutex_lock(i32* @default_context_lock)
  %167 = load %struct.libusb_context*, %struct.libusb_context** @usbi_default_context, align 8
  %168 = icmp eq %struct.libusb_context* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %143
  %170 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  store %struct.libusb_context* %170, %struct.libusb_context** @usbi_default_context, align 8
  br label %171

171:                                              ; preds = %169, %143
  %172 = call i32 @pthread_mutex_unlock(i32* @default_context_lock)
  %173 = load %struct.libusb_context**, %struct.libusb_context*** %3, align 8
  %174 = icmp ne %struct.libusb_context** %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %177 = load %struct.libusb_context**, %struct.libusb_context*** %3, align 8
  store %struct.libusb_context* %176, %struct.libusb_context** %177, align 8
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.libusb_context*, %struct.libusb_context** %4, align 8
  %180 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %181 = call i32 @DPRINTF(%struct.libusb_context* %179, i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %130, %105, %89, %75, %65, %56, %12
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.libusb_context* @malloc(i32) #1

declare dso_local i32 @memset(%struct.libusb_context*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @free(%struct.libusb_context*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @pthread_condattr_init(i32*) #1

declare dso_local i64 @pthread_condattr_setclock(i32*, i32) #1

declare dso_local i32 @pthread_condattr_destroy(i32*) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @libusb_set_nonblocking(i32) #1

declare dso_local i32 @libusb10_add_pollfd(%struct.libusb_context*, i32*, i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @DPRINTF(%struct.libusb_context*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
