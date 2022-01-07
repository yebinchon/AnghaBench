; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_getfile_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_getfile_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_file = type { i64 }
%struct.procstat_core = type { i32 }

@PSC_TYPE_FILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kinfo_file* (%struct.procstat_core*, i32*)* @kinfo_getfile_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kinfo_file* @kinfo_getfile_core(%struct.procstat_core* %0, i32* %1) #0 {
  %3 = alloca %struct.kinfo_file*, align 8
  %4 = alloca %struct.procstat_core*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kinfo_file*, align 8
  %12 = alloca %struct.kinfo_file*, align 8
  %13 = alloca %struct.kinfo_file*, align 8
  store %struct.procstat_core* %0, %struct.procstat_core** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.procstat_core*, %struct.procstat_core** %4, align 8
  %15 = load i32, i32* @PSC_TYPE_FILES, align 4
  %16 = call i8* @procstat_core_get(%struct.procstat_core* %14, i32 %15, i32* null, i64* %7)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.kinfo_file* null, %struct.kinfo_file** %3, align 8
  br label %95

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %38, %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = inttoptr i64 %31 to %struct.kinfo_file*
  store %struct.kinfo_file* %32, %struct.kinfo_file** %13, align 8
  %33 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %34 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %40 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %25

46:                                               ; preds = %37, %25
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.kinfo_file* @calloc(i32 %47, i32 8)
  store %struct.kinfo_file* %48, %struct.kinfo_file** %11, align 8
  %49 = load %struct.kinfo_file*, %struct.kinfo_file** %11, align 8
  %50 = icmp eq %struct.kinfo_file* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @free(i8* %52)
  store %struct.kinfo_file* null, %struct.kinfo_file** %3, align 8
  br label %95

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %10, align 8
  %59 = load %struct.kinfo_file*, %struct.kinfo_file** %11, align 8
  store %struct.kinfo_file* %59, %struct.kinfo_file** %12, align 8
  br label %60

60:                                               ; preds = %73, %54
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = inttoptr i64 %66 to %struct.kinfo_file*
  store %struct.kinfo_file* %67, %struct.kinfo_file** %13, align 8
  %68 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %69 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %89

73:                                               ; preds = %64
  %74 = load %struct.kinfo_file*, %struct.kinfo_file** %12, align 8
  %75 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %76 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %77 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(%struct.kinfo_file* %74, %struct.kinfo_file* %75, i64 %78)
  %80 = load %struct.kinfo_file*, %struct.kinfo_file** %13, align 8
  %81 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %9, align 8
  %85 = load %struct.kinfo_file*, %struct.kinfo_file** %12, align 8
  %86 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %85, i32 0, i32 0
  store i64 8, i64* %86, align 8
  %87 = load %struct.kinfo_file*, %struct.kinfo_file** %12, align 8
  %88 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %87, i32 1
  store %struct.kinfo_file* %88, %struct.kinfo_file** %12, align 8
  br label %60

89:                                               ; preds = %72, %60
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.kinfo_file*, %struct.kinfo_file** %11, align 8
  store %struct.kinfo_file* %94, %struct.kinfo_file** %3, align 8
  br label %95

95:                                               ; preds = %89, %51, %19
  %96 = load %struct.kinfo_file*, %struct.kinfo_file** %3, align 8
  ret %struct.kinfo_file* %96
}

declare dso_local i8* @procstat_core_get(%struct.procstat_core*, i32, i32*, i64*) #1

declare dso_local %struct.kinfo_file* @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(%struct.kinfo_file*, %struct.kinfo_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
