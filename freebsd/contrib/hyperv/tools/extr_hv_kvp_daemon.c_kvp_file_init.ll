; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_file_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64, %struct.kvp_record* }
%struct.kvp_record = type { i32 }

@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@POOL_DIR = common dso_local global i32 0, align 4
@POOL_DIR_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c" Failed to create /var/db/hyperv/pool\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@HV_KVP_POOL_COUNT = common dso_local global i32 0, align 4
@kvp_pools = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_FILE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"/var/db/hyperv/pool/.kvp_pool_%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@POOL_FILE_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read file, pool: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvp_file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_file_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kvp_record*, align 8
  %7 = alloca %struct.kvp_record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @POOL_DIR, align 4
  %16 = load i32, i32* @POOL_DIR_MODE, align 4
  %17 = call i64 @mkdir(i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %0
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EEXIST, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EISDIR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %23, %19, %0
  %33 = load i32, i32* @POOL_DIR, align 4
  %34 = load i32, i32* @POOL_DIR_MODE, align 4
  %35 = call i32 @chmod(i32 %33, i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %151, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HV_KVP_POOL_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %154

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  store i64 0, i64* %4, align 8
  store i32 1, i32* %8, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @MAX_FILE_NAME, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = load i32, i32* @O_CREAT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @POOL_FILE_MODE, align 4
  %56 = call i32 @open(i8* %51, i32 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  store i32 1, i32* %1, align 4
  br label %155

60:                                               ; preds = %40
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @POOL_FILE_MODE, align 4
  %63 = call i32 @fchmod(i32 %61, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32* @fopen(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %65, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @close(i32 %69)
  store i32 1, i32* %1, align 4
  br label %155

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call %struct.kvp_record* @malloc(i32 %74)
  store %struct.kvp_record* %75, %struct.kvp_record** %6, align 8
  %76 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %77 = icmp eq %struct.kvp_record* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @fclose(i32* %81)
  store i32 1, i32* %1, align 4
  br label %155

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %122, %83
  %85 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %85, i64 %86
  store %struct.kvp_record* %87, %struct.kvp_record** %7, align 8
  %88 = load %struct.kvp_record*, %struct.kvp_record** %7, align 8
  %89 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @fread(%struct.kvp_record* %88, i32 4, i32 %89, i32* %90)
  %92 = load i64, i64* %4, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %4, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i64 @ferror(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 @exit(i32 %101) #3
  unreachable

103:                                              ; preds = %84
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @feof(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 %111, %112
  %114 = call %struct.kvp_record* @realloc(%struct.kvp_record* %110, i32 %113)
  store %struct.kvp_record* %114, %struct.kvp_record** %6, align 8
  %115 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %116 = icmp eq %struct.kvp_record* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @fclose(i32* %120)
  store i32 1, i32* %1, align 4
  br label %155

122:                                              ; preds = %107
  br label %84

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %2, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %125, i32* %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  store i32 %131, i32* %136, align 4
  %137 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  store %struct.kvp_record* %137, %struct.kvp_record** %142, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  store i64 %143, i64* %148, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @fclose(i32* %149)
  br label %151

151:                                              ; preds = %124
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %36

154:                                              ; preds = %36
  store i32 0, i32* %1, align 4
  br label %155

155:                                              ; preds = %154, %117, %78, %68, %59
  %156 = load i32, i32* %1, align 4
  ret i32 %156
}

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i32 @KVP_LOG(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.kvp_record* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(%struct.kvp_record*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local %struct.kvp_record* @realloc(%struct.kvp_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
