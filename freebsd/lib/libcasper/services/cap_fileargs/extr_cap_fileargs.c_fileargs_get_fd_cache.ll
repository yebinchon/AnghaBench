; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_get_fd_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_get_fd_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@FILEARGS_MAGIC = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @fileargs_get_fd_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fileargs_get_fd_cache(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FILEARGS_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %84

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* @dnvlist_get_nvlist(i32* %40, i8* %41, i32* null)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %84

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32* @nvlist_take_nvlist(i32* %49, i8* %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @nvlist_exists_descriptor(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @nvlist_destroy(i32* %56)
  store i32 -1, i32* %3, align 4
  br label %84

58:                                               ; preds = %46
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @nvlist_take_descriptor(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @nvlist_destroy(i32* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @O_CLOEXEC, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @O_CLOEXEC, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @F_SETFD, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fcntl(i32 %71, i32 %72, i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @close(i32 %79)
  store i32 -1, i32* %3, align 4
  br label %84

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %78, %55, %45, %36, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dnvlist_get_nvlist(i32*, i8*, i32*) #1

declare dso_local i32* @nvlist_take_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
