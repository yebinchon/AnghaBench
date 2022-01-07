; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_log.c_CTLOG_STORE_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_log.c_CTLOG_STORE_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32* }

@CT_F_CTLOG_STORE_LOAD_FILE = common dso_local global i32 0, align 4
@CT_R_LOG_CONF_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"enabled_logs\00", align 1
@ctlog_store_load_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CTLOG_STORE_load_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call %struct.TYPE_5__* (...) @ctlog_store_load_ctx_new()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = call i32* @NCONF_new(i32* null)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %63

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @NCONF_load(i32* %28, i8* %29, i32* null)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @CT_F_CTLOG_STORE_LOAD_FILE, align 4
  %34 = load i32, i32* @CT_R_LOG_CONF_INVALID, align 4
  %35 = call i32 @CTerr(i32 %33, i32 %34)
  br label %63

36:                                               ; preds = %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @NCONF_get_string(i32* %39, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @CT_F_CTLOG_STORE_LOAD_FILE, align 4
  %45 = load i32, i32* @CT_R_LOG_CONF_INVALID, align 4
  %46 = call i32 @CTerr(i32 %44, i32 %45)
  br label %63

47:                                               ; preds = %36
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @ctlog_store_load_log, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = call i32 @CONF_parse_list(i8* %48, i8 signext 44, i32 1, i32 %49, %struct.TYPE_5__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %47
  %59 = load i32, i32* @CT_F_CTLOG_STORE_LOAD_FILE, align 4
  %60 = load i32, i32* @CT_R_LOG_CONF_INVALID, align 4
  %61 = call i32 @CTerr(i32 %59, i32 %60)
  br label %63

62:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %58, %43, %32, %24
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @NCONF_free(i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = call i32 @ctlog_store_load_ctx_free(%struct.TYPE_5__* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_5__* @ctlog_store_load_ctx_new(...) #1

declare dso_local i32* @NCONF_new(i32*) #1

declare dso_local i64 @NCONF_load(i32*, i8*, i32*) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i8* @NCONF_get_string(i32*, i32*, i8*) #1

declare dso_local i32 @CONF_parse_list(i8*, i8 signext, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @NCONF_free(i32*) #1

declare dso_local i32 @ctlog_store_load_ctx_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
