; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_trustanchor_frm_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_trustanchor_frm_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { i32 }
%struct.val_anchors = type { i32 }
%struct.trust_anchor = type { i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ldns error while converting string to RR at%d: %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"malloc failure in add_trustanchor\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"malloc failure in add trustanchor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.autr_ta* (%struct.val_anchors*, i8*, %struct.trust_anchor**, i32*, i64, i32**, i64*, i32*)* @add_trustanchor_frm_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.autr_ta* @add_trustanchor_frm_str(%struct.val_anchors* %0, i8* %1, %struct.trust_anchor** %2, i32* %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.autr_ta*, align 8
  %10 = alloca %struct.val_anchors*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.trust_anchor**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.val_anchors* %0, %struct.val_anchors** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.trust_anchor** %2, %struct.trust_anchor*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = mul nuw i64 4, %26
  store i64 %29, i64* %20, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @str_contains_data(i8* %30, i8 signext 59)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %8
  %34 = load i32*, i32** %17, align 8
  store i32 1, i32* %34, align 4
  store %struct.autr_ta* null, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

35:                                               ; preds = %8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i32**, i32*** %15, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i64*, i64** %16, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sldns_str2wire_rr_buf(i8* %36, i32* %28, i64* %20, i64* %21, i32 0, i32* %37, i64 %38, i32* %40, i64 %42)
  store i32 %43, i32* %23, align 4
  %44 = icmp ne i32 0, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %46)
  %48 = load i32, i32* %23, align 4
  %49 = call i32 @sldns_get_errorstr_parse(i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i8* %50)
  store %struct.autr_ta* null, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

52:                                               ; preds = %35
  %53 = load i32**, i32*** %15, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free(i32* %54)
  %56 = load i64, i64* %21, align 8
  %57 = call i32* @memdup(i32* %28, i64 %56)
  %58 = load i32**, i32*** %15, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i64, i64* %21, align 8
  %60 = load i64*, i64** %16, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32**, i32*** %15, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %52
  %65 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.autr_ta* null, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

66:                                               ; preds = %52
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %21, align 8
  %69 = call i64 @sldns_wirerr_get_type(i32* %28, i64 %67, i64 %68)
  %70 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i64, i64* %20, align 8
  %74 = load i64, i64* %21, align 8
  %75 = call i64 @sldns_wirerr_get_type(i32* %28, i64 %73, i64 %74)
  %76 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32*, i32** %17, align 8
  store i32 1, i32* %79, align 4
  store %struct.autr_ta* null, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

80:                                               ; preds = %72, %66
  %81 = load i64, i64* %20, align 8
  %82 = call i32* @memdup(i32* %28, i64 %81)
  store i32* %82, i32** %22, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store %struct.autr_ta* null, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

87:                                               ; preds = %80
  %88 = load %struct.val_anchors*, %struct.val_anchors** %10, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load %struct.trust_anchor**, %struct.trust_anchor*** %12, align 8
  %93 = call %struct.autr_ta* @add_trustanchor_frm_rr(%struct.val_anchors* %88, i32* %89, i64 %90, i64 %91, %struct.trust_anchor** %92)
  store %struct.autr_ta* %93, %struct.autr_ta** %9, align 8
  store i32 1, i32* %24, align 4
  br label %94

94:                                               ; preds = %87, %85, %78, %64, %45, %33
  %95 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load %struct.autr_ta*, %struct.autr_ta** %9, align 8
  ret %struct.autr_ta* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @str_contains_data(i8*, i8 signext) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i64, i32*, i64) #2

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32* @memdup(i32*, i64) #2

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #2

declare dso_local %struct.autr_ta* @add_trustanchor_frm_rr(%struct.val_anchors*, i32*, i64, i64, %struct.trust_anchor**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
