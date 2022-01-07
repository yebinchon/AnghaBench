; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_zonefile_syntax_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_http_zonefile_syntax_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.auth_chunk* }
%struct.auth_chunk = type { i32 }
%struct.sldns_file_parse_state = type { i32, i32, i64, i32*, i32* }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"parse failure on first RR[%d]: %s\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"parse failure: first record in downloaded zonefile from wrong RR class\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, i32*)* @http_zonefile_syntax_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_zonefile_syntax_check(%struct.auth_xfer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sldns_file_parse_state, align 8
  %11 = alloca %struct.auth_chunk*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %19 = call i32 @memset(%struct.sldns_file_parse_state* %10, i32 0, i32 32)
  %20 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 0
  store i32 3600, i32* %20, align 8
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %34 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memmove(i32* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %26, %2
  %41 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %42 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.auth_chunk*, %struct.auth_chunk** %44, align 8
  store %struct.auth_chunk* %45, %struct.auth_chunk** %11, align 8
  store i64 0, i64* %12, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @chunkline_non_comment_RR(%struct.auth_chunk** %11, i64* %12, i32* %46, %struct.sldns_file_parse_state* %10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

50:                                               ; preds = %40
  %51 = mul nuw i64 4, %16
  store i64 %51, i64* %8, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @sldns_buffer_begin(i32* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32* [ %62, %60 ], [ null, %63 ]
  %66 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32* [ %73, %71 ], [ null, %74 ]
  %77 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %10, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sldns_str2wire_rr_buf(i8* %54, i32* %18, i64* %8, i64* %9, i32 %56, i32* %65, i32 %67, i32* %76, i64 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @LDNS_WIREPARSE_ERROR(i32 %85)
  %87 = call i32 @sldns_get_errorstr_parse(i32 %86)
  %88 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

89:                                               ; preds = %75
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @sldns_wirerr_get_class(i32* %18, i64 %90, i64 %91)
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

99:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

100:                                              ; preds = %99, %97, %82, %49
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sldns_file_parse_state*, i32, i32) #2

declare dso_local i32 @memmove(i32*, i32, i32) #2

declare dso_local i32 @chunkline_non_comment_RR(%struct.auth_chunk**, i64*, i32*, %struct.sldns_file_parse_state*) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i32, i32*, i64) #2

declare dso_local i64 @sldns_buffer_begin(i32*) #2

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i32 @LDNS_WIREPARSE_ERROR(i32) #2

declare dso_local i64 @sldns_wirerr_get_class(i32*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
