; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_dump_maps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_dump_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"/proc/%d/task/%d/maps\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\0AMAPPED_LIBRARIES:\0A\00", align 1
@prof_dump_buf_end = common dso_local global i64 0, align 8
@PROF_DUMP_BUFSIZE = common dso_local global i64 0, align 8
@prof_dump_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @prof_dump_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prof_dump_maps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @config_prof, align 4
  %8 = call i32 @cassert(i32 %7)
  %9 = call i32 (...) @prof_getpid()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, ...) @prof_open_maps(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @prof_open_maps(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @prof_dump_write(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %61

29:                                               ; preds = %25, %21
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @prof_dump_buf_end, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* @prof_dump_buf_end, align 8
  %34 = load i64, i64* @prof_dump_buf_end, align 8
  %35 = load i64, i64* @PROF_DUMP_BUFSIZE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @prof_dump_flush(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %61

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** @prof_dump_buf, align 8
  %49 = load i64, i64* @prof_dump_buf_end, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64, i64* @PROF_DUMP_BUFSIZE, align 8
  %52 = load i64, i64* @prof_dump_buf_end, align 8
  %53 = sub i64 %51, %52
  %54 = call i64 @malloc_read_fd(i32 %47, i32* %50, i64 %53)
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %30, label %58

58:                                               ; preds = %55
  br label %60

59:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %44, %28
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @prof_getpid(...) #1

declare dso_local i32 @prof_open_maps(i8*, ...) #1

declare dso_local i64 @prof_dump_write(i32, i8*) #1

declare dso_local i64 @prof_dump_flush(i32) #1

declare dso_local i64 @malloc_read_fd(i32, i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
