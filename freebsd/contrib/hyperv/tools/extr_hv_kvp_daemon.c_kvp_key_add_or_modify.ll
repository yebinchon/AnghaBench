; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_key_add_or_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_key_add_or_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.kvp_record* }
%struct.kvp_record = type { i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"kvp_key_add_or_modify: pool =  %d, key = %s, value = %s\0A,\00", align 1
@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"kvp_key_add_or_modify: returning 1\0A\00", align 1
@kvp_pools = common dso_local global %struct.TYPE_2__* null, align 8
@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @kvp_key_add_or_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_key_add_or_modify(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvp_record*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @LOG_DEBUG, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17, i32* %18, i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %145

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kvp_update_mem_state(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.kvp_record*, %struct.kvp_record** %44, align 8
  store %struct.kvp_record* %45, %struct.kvp_record** %14, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %80, %31
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %58, i64 %60
  %62 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @memcmp(i32* %57, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %80

68:                                               ; preds = %56
  %69 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %69, i64 %71
  %73 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @memcpy(i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @kvp_update_file(i32 %78)
  store i32 0, i32* %6, align 4
  br label %145

80:                                               ; preds = %67
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %52

83:                                               ; preds = %52
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %91 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %93, %96
  %98 = trunc i64 %97 to i32
  %99 = call %struct.kvp_record* @realloc(%struct.kvp_record* %90, i32 %98)
  store %struct.kvp_record* %99, %struct.kvp_record** %14, align 8
  %100 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %101 = icmp eq %struct.kvp_record* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  store i32 1, i32* %6, align 4
  br label %145

103:                                              ; preds = %89
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %83
  %112 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %112, i64 %114
  %116 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @memcpy(i32 %117, i32* %118, i32 %119)
  %121 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %121, i64 %123
  %125 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @memcpy(i32 %126, i32* %127, i32 %128)
  %130 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store %struct.kvp_record* %130, %struct.kvp_record** %135, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @kvp_update_file(i32 %143)
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %111, %102, %68, %28
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @KVP_LOG(i32, i8*, ...) #1

declare dso_local i32 @kvp_update_mem_state(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kvp_update_file(i32) #1

declare dso_local %struct.kvp_record* @realloc(%struct.kvp_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
