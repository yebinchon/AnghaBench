; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_to_str_bogus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_to_str_bogus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.config_strlist*, %struct.TYPE_2__ }
%struct.config_strlist = type { i8*, %struct.config_strlist* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"validation failure <%s %s %s>:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" misc failure\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"malloc failure in errinf_to_str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @errinf_to_str_bogus(%struct.module_qstate* %0) #0 {
  %2 = alloca %struct.module_qstate*, align 8
  %3 = alloca [20480 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  store %struct.module_qstate* %0, %struct.module_qstate** %2, align 8
  %11 = getelementptr inbounds [20480 x i8], [20480 x i8]* %3, i64 0, i64 0
  store i8* %11, i8** %4, align 8
  store i64 20480, i64* %5, align 8
  %12 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.module_qstate*, %struct.module_qstate** %2, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %22 = call i32 @sldns_wire2str_type_buf(i32 %20, i8* %21, i32 16)
  %23 = load %struct.module_qstate*, %struct.module_qstate** %2, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %28 = call i32 @sldns_wire2str_class_buf(i32 %26, i8* %27, i32 16)
  %29 = load %struct.module_qstate*, %struct.module_qstate** %2, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dname_str(i32 %32, i8* %16)
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %36, i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %4, align 8
  %47 = load %struct.module_qstate*, %struct.module_qstate** %2, align 8
  %48 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %47, i32 0, i32 0
  %49 = load %struct.config_strlist*, %struct.config_strlist** %48, align 8
  %50 = icmp ne %struct.config_strlist* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %1
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %82

55:                                               ; preds = %1
  %56 = load %struct.module_qstate*, %struct.module_qstate** %2, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 0
  %58 = load %struct.config_strlist*, %struct.config_strlist** %57, align 8
  store %struct.config_strlist* %58, %struct.config_strlist** %6, align 8
  br label %59

59:                                               ; preds = %77, %55
  %60 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %61 = icmp ne %struct.config_strlist* %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %66 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %5, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %79 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %78, i32 0, i32 1
  %80 = load %struct.config_strlist*, %struct.config_strlist** %79, align 8
  store %struct.config_strlist* %80, %struct.config_strlist** %6, align 8
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %51
  %83 = getelementptr inbounds [20480 x i8], [20480 x i8]* %3, i64 0, i64 0
  %84 = call i8* @strdup(i8* %83)
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i8* %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #2

declare dso_local i32 @sldns_wire2str_class_buf(i32, i8*, i32) #2

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @log_err(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
