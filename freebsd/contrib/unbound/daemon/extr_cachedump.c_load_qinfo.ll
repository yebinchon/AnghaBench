; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_qinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_qinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32*, i32*, i32, i32 }
%struct.regional = type { i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error line too short, %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error cannot parse: %s %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"error out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.query_info*, %struct.regional*)* @load_qinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @load_qinfo(i8* %0, %struct.query_info* %1, %struct.regional* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = mul nuw i64 4, %17
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strchr(i8* %27, i8 signext 32)
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @strchr(i8* %34, i8 signext 32)
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @sldns_str2wire_rr_question_buf(i8* %47, i32* %19, i64* %11, i64* %12, i32* null, i32 0, i32* null, i32 0)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @sldns_get_errorstr_parse(i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %54)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

56:                                               ; preds = %42
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @sldns_wirerr_get_type(i32* %19, i64 %57, i64 %58)
  %60 = load %struct.query_info*, %struct.query_info** %6, align 8
  %61 = getelementptr inbounds %struct.query_info, %struct.query_info* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @sldns_wirerr_get_class(i32* %19, i64 %62, i64 %63)
  %65 = load %struct.query_info*, %struct.query_info** %6, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.query_info*, %struct.query_info** %6, align 8
  %69 = getelementptr inbounds %struct.query_info, %struct.query_info* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.regional*, %struct.regional** %7, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @regional_alloc_init(%struct.regional* %70, i32* %19, i64 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.query_info*, %struct.query_info** %6, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.query_info*, %struct.query_info** %6, align 8
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.query_info*, %struct.query_info** %6, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %56
  %83 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

84:                                               ; preds = %56
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %82, %51, %39
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i8*, i8** %4, align 8
  ret i8* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @log_warn(i8*, ...) #2

declare dso_local i32 @sldns_str2wire_rr_question_buf(i8*, i32*, i64*, i64*, i32*, i32, i32*, i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i32 @sldns_wirerr_get_type(i32*, i64, i64) #2

declare dso_local i32 @sldns_wirerr_get_class(i32*, i64, i64) #2

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
