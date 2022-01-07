; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_key_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.kvp_record* }
%struct.kvp_record = type { i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"kvp_key_delete: pool =  %d, key = %s\0A\00", align 1
@kvp_pools = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Found delete key in pool %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Not found delete key in pool %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @kvp_key_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_key_delete(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvp_record*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @LOG_DEBUG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 (i32, i8*, i32, ...) @KVP_LOG(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @kvp_update_mem_state(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.kvp_record*, %struct.kvp_record** %29, align 8
  store %struct.kvp_record* %30, %struct.kvp_record** %12, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %114, %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %117

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %37, i64 %39
  %41 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @memcmp(i32* %36, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %114

47:                                               ; preds = %35
  %48 = load i32, i32* @LOG_DEBUG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, i32, ...) @KVP_LOG(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @kvp_update_file(i32 %62)
  store i32 0, i32* %4, align 4
  br label %121

64:                                               ; preds = %47
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %101, %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %73, i64 %75
  %77 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %79, i64 %81
  %83 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strcpy(i32 %78, i32 %84)
  %86 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %86, i64 %88
  %90 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %92, i64 %94
  %96 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strcpy(i32 %91, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %68

104:                                              ; preds = %68
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @kvp_update_file(i32 %112)
  store i32 0, i32* %4, align 4
  br label %121

114:                                              ; preds = %46
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %31

117:                                              ; preds = %31
  %118 = load i32, i32* @LOG_DEBUG, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i32, i8*, i32, ...) @KVP_LOG(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %104, %54
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @KVP_LOG(i32, i8*, i32, ...) #1

declare dso_local i32 @kvp_update_mem_state(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @kvp_update_file(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
