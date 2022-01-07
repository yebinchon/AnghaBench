; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_curl_data_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_curl_data_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@g_data_dir = common dso_local global i32 0, align 4
@data_type_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"zstd -dqfo '\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@ENOMEM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"zstd -dc | tar -x -C '\00", align 1
@errno = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i64)* @curl_data_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @curl_data_create(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i64 %2, i64* %5, align 8
  %8 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %10 = call i32 @XXH64_reset(i32* %9, i32 0)
  %11 = load i32, i32* @g_data_dir, align 4
  %12 = call i32 @UTIL_isDirectory(i32 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @data_type_file, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cat3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** @ENOMEM, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  br label %57

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @popen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @free(i8* %32)
  br label %49

34:                                               ; preds = %3
  %35 = load i32, i32* @g_data_dir, align 4
  %36 = call i8* @cat3(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** @ENOMEM, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %57

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @popen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32* %45, i32** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %42, %27
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** @errno, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %39, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @XXH64_reset(i32*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @UTIL_isDirectory(i32) #2

declare dso_local i8* @cat3(i8*, i32, i8*) #2

declare dso_local i8* @popen(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
