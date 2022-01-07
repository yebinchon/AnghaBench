; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/hwpmc/extr_overhead.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/hwpmc/extr_overhead.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"counter-name required\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"hwpmc(4) not loaded, kldload or update your kernel\00", align 1
@PMC_MODE_SC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"failed to allocate %s as a system counter in counting mode\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to zero counter %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to start counter %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to read counter %s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to stop counter %s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to read and zero %s\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"failed to release %s as a system counter in counting mode\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Counter %s, read value %ld, read/clear value %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Cycles to start: %ld\09stop: %ld\09read: %ld\09write: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EX_USAGE, align 4
  %19 = call i32 (i32, i8*, ...) @err(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = call i64 (...) @pmc_init()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EX_OSERR, align 4
  %28 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* @PMC_MODE_SC, align 4
  %32 = call i64 @pmc_allocate(i8* %30, i32 %31, i32 0, i32 0, i32* %6, i32 65536)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @EX_OSERR, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 (i32, i8*, ...) @err(i32 %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = call i64 (...) @rdtsc()
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @pmc_write(i32 %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EX_OSERR, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 (i32, i8*, ...) @err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = call i64 (...) @rdtsc()
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = call i64 (...) @rdtsc()
  store i64 %51, i64* %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @pmc_start(i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @EX_OSERR, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 (i32, i8*, ...) @err(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = call i64 (...) @rdtsc()
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = call i64 (...) @rdtsc()
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @pmc_read(i32 %64, i32* %7)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @EX_OSERR, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 (i32, i8*, ...) @err(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %59
  %72 = call i64 (...) @rdtsc()
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %12, align 8
  %75 = call i64 (...) @rdtsc()
  store i64 %75, i64* %9, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @pmc_stop(i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @EX_OSERR, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 (i32, i8*, ...) @err(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %71
  %84 = call i64 (...) @rdtsc()
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %13, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @pmc_rw(i32 %87, i32 0, i32* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @EX_OSERR, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 (i32, i8*, ...) @err(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @pmc_release(i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @EX_OSERR, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 (i32, i8*, ...) @err(i32 %99, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 (i8*, i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* %103, i64 %105, i64 %107)
  %109 = load i64, i64* %11, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 (i8*, i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %110, i64 %111, i64 %112, i64 %113)
  ret i32 0
}

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @pmc_init(...) #1

declare dso_local i64 @pmc_allocate(i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i64 @pmc_write(i32, i32) #1

declare dso_local i64 @pmc_start(i32) #1

declare dso_local i64 @pmc_read(i32, i32*) #1

declare dso_local i64 @pmc_stop(i32) #1

declare dso_local i64 @pmc_rw(i32, i32, i32*) #1

declare dso_local i64 @pmc_release(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
