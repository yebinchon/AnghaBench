; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_json.c_mapfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_json.c_mapfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Error opening events file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @mapfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mapfile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @_SC_PAGESIZE, align 4
  %12 = call i32 @sysconf(i32 %11)
  store i32 %12, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i64, i64* @verbose, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %21, %18, %2
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %70

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fstat(i32 %34, %struct.stat* %7)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %66

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = sub i64 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, 1
  %51 = xor i32 %50, -1
  %52 = zext i32 %51 to i64
  %53 = and i64 %48, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @PROT_READ, align 4
  %56 = load i32, i32* @PROT_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MAP_PRIVATE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @mmap(i32* null, i32 %54, i32 %57, i32 %58, i32 %59, i32 0)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** @MAP_FAILED, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %66, %32
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
