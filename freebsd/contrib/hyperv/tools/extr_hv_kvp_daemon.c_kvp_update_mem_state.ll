; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_update_mem_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_update_mem_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.kvp_record*, i32 }
%struct.kvp_record = type { i32 }

@kvp_pools = common dso_local global %struct.TYPE_2__* null, align 8
@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to open file, pool: %d\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to read file, pool: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_update_mem_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_update_mem_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvp_record*, align 8
  %6 = alloca %struct.kvp_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.kvp_record*, %struct.kvp_record** %13, align 8
  store %struct.kvp_record* %14, %struct.kvp_record** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @kvp_acquire_lock(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @fopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @kvp_release_lock(i32 %37)
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @exit(i32 %42) #3
  unreachable

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %85, %44
  %46 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %46, i64 %47
  store %struct.kvp_record* %48, %struct.kvp_record** %6, align 8
  %49 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %50 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @fread(%struct.kvp_record* %49, i32 4, i32 %52, i32* %53)
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @ferror(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load i32, i32* @LOG_ERR, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @exit(i32 %64) #3
  unreachable

66:                                               ; preds = %45
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @feof(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = call %struct.kvp_record* @realloc(%struct.kvp_record* %73, i32 %76)
  store %struct.kvp_record* %77, %struct.kvp_record** %5, align 8
  %78 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %79 = icmp eq %struct.kvp_record* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @LOG_ERR, align 4
  %82 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = call i32 @exit(i32 %83) #3
  unreachable

85:                                               ; preds = %70
  br label %45

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 8
  %94 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store %struct.kvp_record* %94, %struct.kvp_record** %99, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @kvp_release_lock(i32 %108)
  ret void
}

declare dso_local i32 @kvp_acquire_lock(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @kvp_release_lock(i32) #1

declare dso_local i32 @KVP_LOG(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fread(%struct.kvp_record*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local %struct.kvp_record* @realloc(%struct.kvp_record*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
