; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_check_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_check_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { i8* }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"redirect tag data '%s' must not coexist with other data.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"rr data [char %d] parse error %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config_strlist*)* @check_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_data(i8* %0, %struct.config_strlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  %6 = alloca [65536 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.config_strlist* %1, %struct.config_strlist** %5, align 8
  %13 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = mul nuw i64 4, %14
  store i64 %17, i64* %9, align 8
  %18 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @snprintf(i8* %18, i32 65536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %22 = call i32 @sldns_str2wire_rr_buf(i8* %21, i32* %16, i64* %9, i32* null, i32 3600, i32* null, i32 0, i32* null, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %2
  %26 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %27 = icmp ne %struct.config_strlist* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  store i8* null, i8** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @sldns_wirerr_get_type(i32* %16, i64 %29, i32 1)
  %31 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %11, align 8
  br label %57

35:                                               ; preds = %28
  %36 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %37 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %38 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i8* %36, i32 65536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = mul nuw i64 4, %14
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %43 = call i32 @sldns_str2wire_rr_buf(i8* %42, i32* %16, i64* %9, i32* null, i32 3600, i32* null, i32 0, i32* null, i32 0)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @sldns_wirerr_get_type(i32* %16, i64 %48, i32 1)
  %50 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %54 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %25, %2
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @LDNS_WIREPARSE_OFFSET(i32 %69)
  %71 = trunc i64 %70 to i32
  %72 = sub nsw i32 %71, 13
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @sldns_get_errorstr_parse(i32 %73)
  %75 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %74)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %68, %67, %60, %46
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i32) #2

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i64 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
