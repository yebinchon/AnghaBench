; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_parse_add_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_parse_add_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.auth_zone = type { i32 }
%struct.sldns_file_parse_state = type { i64, i32*, i64, i32*, i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s/%s parse failure RR[%d]: %s in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.auth_zone*, i32*, %struct.sldns_file_parse_state*)* @http_parse_add_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_add_rr(%struct.auth_xfer* %0, %struct.auth_zone* %1, i32* %2, %struct.sldns_file_parse_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_xfer*, align 8
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sldns_file_parse_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %6, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.sldns_file_parse_state* %3, %struct.sldns_file_parse_state** %9, align 8
  %17 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @sldns_buffer_begin(i32* %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %15, align 8
  %24 = mul nuw i64 4, %18
  store i64 %24, i64* %12, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %27 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %30 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %35 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  br label %38

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32* [ %36, %33 ], [ null, %37 ]
  %40 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %41 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %44 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %49 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32* [ %50, %47 ], [ null, %51 ]
  %54 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %55 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @sldns_str2wire_rr_buf(i8* %25, i32* %20, i64* %12, i64* %13, i32 %28, i32* %39, i64 %42, i32* %53, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %52
  %61 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %62 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %69 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @LDNS_WIREPARSE_ERROR(i32 %77)
  %79 = call i32 @sldns_get_errorstr_parse(i32 %78)
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %74, i32 %76, i32 %79, i8* %80)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

82:                                               ; preds = %52
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

86:                                               ; preds = %82
  %87 = load i64, i64* %13, align 8
  %88 = icmp ult i64 %87, 8
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %91 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @memmove(i32* %92, i32* %20, i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %9, align 8
  %97 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %86
  %99 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @az_insert_rr(%struct.auth_zone* %99, i32* %20, i64 %100, i64 %101, i32* null)
  store i32 %102, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %98, %85, %60
  %104 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sldns_buffer_begin(i32*) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i64, i32*, i64) #2

declare dso_local i32 @log_err(i8*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i32 @LDNS_WIREPARSE_ERROR(i32) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @az_insert_rr(%struct.auth_zone*, i32*, i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
