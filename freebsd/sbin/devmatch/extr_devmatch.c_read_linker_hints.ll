; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_read_linker_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_read_linker_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@linker_hints = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"kern.module_path\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't find kernel module path.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't get memory for modpath.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s/linker.hints\00", align 1
@hints = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Can't read linker hints file.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Can't open %s for reading\00", align 1
@LINKER_HINTS_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Linker hints version %d doesn't match expected %d.\00", align 1
@hints_end = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_linker_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_linker_hints() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i8*, i8** @linker_hints, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %0
  %15 = call i64 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i64* %6, i32* null, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i64, i64* %6, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %27, i64* %6, i32* null, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %44, %32
  %35 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %35, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = trunc i64 %9 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @snprintf(i8* %11, i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = call i32* @read_hints(i8* %11, i64* %7)
  store i32* %41, i32** @hints, align 8
  %42 = load i32*, i32** @hints, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %34

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i8*, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  br label %60

52:                                               ; preds = %0
  %53 = load i8*, i8** @linker_hints, align 8
  %54 = call i32* @read_hints(i8* %53, i64* %7)
  store i32* %54, i32** @hints, align 8
  %55 = load i32*, i32** @hints, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32*, i32** @hints, align 8
  %62 = ptrtoint i32* %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LINKER_HINTS_VERSION, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32*, i32** @hints, align 8
  %69 = ptrtoint i32* %68 to i64
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @LINKER_HINTS_VERSION, align 4
  %73 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32*, i32** @hints, align 8
  %75 = call i32 @free(i32* %74)
  store i32* null, i32** @hints, align 8
  br label %76

76:                                               ; preds = %67, %60
  %77 = load i32*, i32** @hints, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** @hints, align 8
  %81 = ptrtoint i32* %80 to i64
  %82 = load i64, i64* %7, align 8
  %83 = add nsw i64 %81, %82
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** @hints_end, align 8
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @read_hints(i8*, i64*) #2

declare dso_local i32 @warnx(i8*, i32, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
