; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_read_key_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_read_key_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LINELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error opening %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Error parsing DNSKEY RR in line %d: %s\0A\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_key_file(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @LDNS_MAX_LINELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %35, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %100

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load i32*, i32** %14, align 8
  %42 = trunc i64 %18 to i32
  %43 = call i64 @read_line(i32* %41, i8* %20, i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %40
  %50 = getelementptr inbounds i8, i8* %20, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 59
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = call i64 @ldns_rr_new_frm_str(i32** %15, i8* %20, i32 0, i32* null, i32* null)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @LDNS_STATUS_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i64, i64* %13, align 8
  %66 = call i8* @ldns_get_errorstr_by_id(i64 %65)
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %64, i8* %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %89

69:                                               ; preds = %54
  %70 = load i32*, i32** %15, align 8
  %71 = call i64 @ldns_rr_get_type(i32* %70)
  %72 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %15, align 8
  %76 = call i64 @ldns_rr_get_type(i32* %75)
  %77 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74, %69
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @ldns_rr_list_push_rr(i32* %80, i32* %81)
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @ldns_rr_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %68
  br label %90

90:                                               ; preds = %89, %49, %40
  br label %37

91:                                               ; preds = %37
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @fclose(i32* %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %97, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %99, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %98, %96, %34
  %101 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @read_line(i32*, i8*, i32) #2

declare dso_local i64 @ldns_rr_new_frm_str(i32**, i8*, i32, i32*, i32*) #2

declare dso_local i8* @ldns_get_errorstr_by_id(i64) #2

declare dso_local i64 @ldns_rr_get_type(i32*) #2

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #2

declare dso_local i32 @ldns_rr_free(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
