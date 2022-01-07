; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_response_buckets.c_serf_response_full_become_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_response_buckets.c_serf_response_full_become_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"HTTP/%d.%d %d \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf_response_full_become_aggregate(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = call i32 @serf_bucket_aggregate_become(%struct.TYPE_12__* %10)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SERF_HTTP_VERSION_MAJOR(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SERF_HTTP_VERSION_MINOR(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @apr_snprintf(i8* %12, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_12__* @serf_bucket_simple_copy_create(i8* %28, i32 %29, i32 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %4, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_12__* %34, %struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_12__* @serf_bucket_simple_copy_create(i8* %40, i32 %45, i32 %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %4, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_12__* %50, %struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_12__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %4, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_12__* %57, %struct.TYPE_12__* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_12__* %60, %struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_12__* %65, %struct.TYPE_12__* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call i32 @serf_bucket_mem_free(i32 %72, %struct.TYPE_13__* %73)
  %75 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %75
}

declare dso_local i32 @serf_bucket_aggregate_become(%struct.TYPE_12__*) #1

declare dso_local i32 @apr_snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SERF_HTTP_VERSION_MAJOR(i32) #1

declare dso_local i32 @SERF_HTTP_VERSION_MINOR(i32) #1

declare dso_local %struct.TYPE_12__* @serf_bucket_simple_copy_create(i8*, i32, i32) #1

declare dso_local i32 @serf_bucket_aggregate_append(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_12__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8*, i32, i32) #1

declare dso_local i32 @serf_bucket_mem_free(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
