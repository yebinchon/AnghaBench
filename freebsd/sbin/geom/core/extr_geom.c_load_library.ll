; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_load_library.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not enough memory for library path\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/geom_%s.so\00", align 1
@class_name = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot access library\00", align 1
@RTLD_NOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot open library: %s.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lib_version\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot find symbol %s: %s.\00", align 1
@G_LIB_VERSION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"%s and %s are not synchronized.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@version = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"class_commands\00", align 1
@class_commands = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_library() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 (...) @library_path()
  %15 = call i8* @strdup(i32 %14)
  store i8* %15, i8** %5, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @strchr(i8* %22, i8 signext 58)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %1, align 8
  br label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %1, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i8*, i8** %1, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = trunc i64 %11 to i32
  %35 = load i8*, i8** %1, align 8
  %36 = load i8*, i8** @class_name, align 8
  %37 = call i32 @snprintf(i8* %13, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* @F_OK, align 4
  %39 = call i32 @access(i8* %13, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ENOENT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %1, align 8
  br label %30

48:                                               ; preds = %42
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @err(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %33
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %9, align 4
  br label %118

58:                                               ; preds = %52
  %59 = load i32, i32* @RTLD_NOW, align 4
  %60 = call i8* @dlopen(i8* %13, i32 %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 (...) @dlerror()
  %66 = call i32 (i32, i8*, i32, ...) @errx(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @dlsym(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %6, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = icmp eq i64* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = call i32 (...) @dlerror()
  %75 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @dlclose(i8* %76)
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 @exit(i32 %78) #4
  unreachable

80:                                               ; preds = %67
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @G_LIB_VERSION, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @dlclose(i8* %86)
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 (...) @getprogname()
  %90 = call i32 (i32, i8*, i32, ...) @errx(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %89, i8* %13)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i8*, i8** %7, align 8
  %93 = call i8* @dlsym(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** @version, align 8
  %95 = load i32*, i32** @version, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = call i32 (...) @dlerror()
  %99 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @dlclose(i8* %100)
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = call i32 @exit(i32 %102) #4
  unreachable

104:                                              ; preds = %91
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @dlsym(i8* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** @class_commands, align 8
  %108 = load i32*, i32** @class_commands, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = call i32 (...) @dlerror()
  %112 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @dlclose(i8* %113)
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @exit(i32 %115) #4
  unreachable

117:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %57
  %119 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %9, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strdup(i32) #2

declare dso_local i32 @library_path(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @dlopen(i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i32, ...) #2

declare dso_local i32 @dlerror(...) #2

declare dso_local i8* @dlsym(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i32) #2

declare dso_local i32 @dlclose(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @getprogname(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
