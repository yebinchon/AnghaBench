; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_enabling_replicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_enabling_replicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@DTRACE_PROVNAMELEN = common dso_local global i64 0, align 8
@DTRACE_MODNAMELEN = common dso_local global i64 0, align 8
@DTRACE_FUNCNAMELEN = common dso_local global i64 0, align 8
@DTRACE_NAMELEN = common dso_local global i64 0, align 8
@dtrace_retained = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @dtrace_enabling_replicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_enabling_replicate(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %11, align 4
  %16 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = load i64, i64* @DTRACE_MODNAMELEN, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = load i64, i64* @DTRACE_FUNCNAMELEN, align 8
  %39 = icmp slt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strlen(i32 %44)
  %46 = load i64, i64* @DTRACE_NAMELEN, align 8
  %47 = icmp slt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = call %struct.TYPE_19__* @dtrace_enabling_create(i32* %51)
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %8, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dtrace_retained, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %9, align 8
  br label %54

54:                                               ; preds = %139, %3
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %143

57:                                               ; preds = %54
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = icmp ne %struct.TYPE_17__* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %139

74:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %135, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %84, i64 %86
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %13, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %14, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %135

100:                                              ; preds = %81
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @strcmp(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %135

110:                                              ; preds = %100
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @strcmp(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %135

120:                                              ; preds = %110
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strcmp(i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %135

130:                                              ; preds = %120
  store i32 1, i32* %10, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = call i32 @dtrace_enabling_addlike(%struct.TYPE_19__* %131, %struct.TYPE_20__* %132, %struct.TYPE_18__* %133)
  br label %135

135:                                              ; preds = %130, %129, %119, %109, %99
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %75

138:                                              ; preds = %75
  br label %139

139:                                              ; preds = %138, %73
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %9, align 8
  br label %54

143:                                              ; preds = %54
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %148 = call i32 @dtrace_enabling_retain(%struct.TYPE_19__* %147)
  store i32 %148, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146, %143
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %152 = call i32 @dtrace_enabling_destroy(%struct.TYPE_19__* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %150
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.TYPE_19__* @dtrace_enabling_create(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @dtrace_enabling_addlike(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @dtrace_enabling_retain(%struct.TYPE_19__*) #1

declare dso_local i32 @dtrace_enabling_destroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
