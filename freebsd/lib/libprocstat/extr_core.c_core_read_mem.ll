; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_read_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_core = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@PROCSTAT_CORE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"gelf_getphdr: %s\00", align 1
@PT_LOAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"format error: attempt to read out of segment\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"format error: address %ju not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.procstat_core*, i8*, i64, i64, i32)* @core_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_read_mem(%struct.procstat_core* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.procstat_core*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.procstat_core* %0, %struct.procstat_core** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.procstat_core*, %struct.procstat_core** %7, align 8
  %16 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PROCSTAT_CORE_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %105, %5
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.procstat_core*, %struct.procstat_core** %7, align 8
  %25 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %22
  %30 = load %struct.procstat_core*, %struct.procstat_core** %7, align 8
  %31 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.TYPE_6__* @gelf_getphdr(i32 %32, i32 %33, %struct.TYPE_6__* %12)
  %35 = icmp ne %struct.TYPE_6__* %34, %12
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 @elf_errmsg(i32 -1)
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %6, align 4
  br label %112

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PT_LOAD, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %105

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %53, %55
  %57 = icmp sgt i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %45
  br label %105

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %62, %64
  %66 = add nsw i64 %61, %65
  store i64 %66, i64* %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %9, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %59
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %112

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %83, %85
  %87 = load i64, i64* %10, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %81, %59
  %90 = load %struct.procstat_core*, %struct.procstat_core** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @core_offset(%struct.procstat_core* %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 -1, i32* %6, align 4
  br label %112

95:                                               ; preds = %89
  %96 = load %struct.procstat_core*, %struct.procstat_core** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @core_read(%struct.procstat_core* %96, i8* %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  store i32 -1, i32* %6, align 4
  br label %112

102:                                              ; preds = %95
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %6, align 4
  br label %112

105:                                              ; preds = %58, %44
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %22

108:                                              ; preds = %22
  %109 = load i64, i64* %10, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 -1, i32* %6, align 4
  br label %112

112:                                              ; preds = %108, %102, %101, %94, %79, %36
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @gelf_getphdr(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @core_offset(%struct.procstat_core*, i64) #1

declare dso_local i32 @core_read(%struct.procstat_core*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
