; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_filestat_new_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_filestat_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filestat* (i8*, i32, i32, i32, i32, i32, i32, i8*, i32*)* @filestat_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filestat* @filestat_new_entry(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.filestat*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.filestat*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = call %struct.filestat* @calloc(i32 1, i32 48)
  store %struct.filestat* %21, %struct.filestat** %20, align 8
  %22 = load %struct.filestat*, %struct.filestat** %20, align 8
  %23 = icmp eq %struct.filestat* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.filestat* null, %struct.filestat** %10, align 8
  br label %64

26:                                               ; preds = %9
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.filestat*, %struct.filestat** %20, align 8
  %29 = getelementptr inbounds %struct.filestat, %struct.filestat* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.filestat*, %struct.filestat** %20, align 8
  %32 = getelementptr inbounds %struct.filestat, %struct.filestat* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.filestat*, %struct.filestat** %20, align 8
  %35 = getelementptr inbounds %struct.filestat, %struct.filestat* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.filestat*, %struct.filestat** %20, align 8
  %38 = getelementptr inbounds %struct.filestat, %struct.filestat* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.filestat*, %struct.filestat** %20, align 8
  %41 = getelementptr inbounds %struct.filestat, %struct.filestat* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.filestat*, %struct.filestat** %20, align 8
  %44 = getelementptr inbounds %struct.filestat, %struct.filestat* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load %struct.filestat*, %struct.filestat** %20, align 8
  %47 = getelementptr inbounds %struct.filestat, %struct.filestat* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %18, align 8
  %49 = load %struct.filestat*, %struct.filestat** %20, align 8
  %50 = getelementptr inbounds %struct.filestat, %struct.filestat* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %26
  %54 = load i32*, i32** %19, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.filestat*, %struct.filestat** %20, align 8
  %57 = getelementptr inbounds %struct.filestat, %struct.filestat* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %26
  %59 = load %struct.filestat*, %struct.filestat** %20, align 8
  %60 = getelementptr inbounds %struct.filestat, %struct.filestat* %59, i32 0, i32 6
  %61 = call i32 @cap_rights_init(i32* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.filestat*, %struct.filestat** %20, align 8
  store %struct.filestat* %63, %struct.filestat** %10, align 8
  br label %64

64:                                               ; preds = %62, %24
  %65 = load %struct.filestat*, %struct.filestat** %10, align 8
  ret %struct.filestat* %65
}

declare dso_local %struct.filestat* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cap_rights_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
