; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mmap.c__citrus_map_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mmap.c__citrus_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_region = type { i32 }
%struct.stat = type { i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_map_file(%struct._citrus_region* noalias %0, i8* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_region*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._citrus_region* %0, %struct._citrus_region** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct._citrus_region*, %struct._citrus_region** %4, align 8
  %11 = call i32 @_region_init(%struct._citrus_region* %10, i8* null, i64 0)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @_open(i8* %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @_fstat(i32 %21, %struct.stat* %6)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %9, align 4
  br label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %32, i32* %9, align 4
  br label %53

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PROT_READ, align 4
  %37 = load i32, i32* @MAP_FILE, align 4
  %38 = load i32, i32* @MAP_PRIVATE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @mmap(i32* null, i64 %35, i32 %36, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %9, align 4
  br label %53

47:                                               ; preds = %33
  %48 = load %struct._citrus_region*, %struct._citrus_region** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @_region_init(%struct._citrus_region* %48, i8* %49, i64 %51)
  br label %53

53:                                               ; preds = %47, %45, %31, %24
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @_close(i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @_region_init(%struct._citrus_region*, i8*, i64) #1

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i32 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
