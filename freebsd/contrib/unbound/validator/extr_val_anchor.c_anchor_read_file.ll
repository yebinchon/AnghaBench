; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32 }
%struct.val_anchors = type { i32 }
%struct.sldns_file_parse_state = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error opening file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"parse error in %s:%d:%d : %s\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"mem error at %s line %d\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"error at %s line %d: no multiple anchor domains allowed (you can have multiple keys, but they must have the same name).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i32*, i8*, i32)* @anchor_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @anchor_read_file(%struct.val_anchors* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trust_anchor*, align 8
  %11 = alloca %struct.trust_anchor*, align 8
  %12 = alloca %struct.sldns_file_parse_state, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.trust_anchor* null, %struct.trust_anchor** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @sldns_buffer_begin(i32* %19)
  store i32* %20, i32** %16, align 8
  store i32 1, i32* %17, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %18, align 8
  %23 = load i32*, i32** %18, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %119

30:                                               ; preds = %4
  %31 = call i32 @memset(%struct.sldns_file_parse_state* %12, i32 0, i32 8)
  %32 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %12, i32 0, i32 0
  store i32 3600, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %12, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %102, %74, %47, %30
  %35 = load i32*, i32** %18, align 8
  %36 = call i32 @feof(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %104

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @sldns_buffer_capacity(i32* %40)
  store i64 %41, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @sldns_fp2wire_rr_buf(i32* %42, i32* %43, i64* %14, i64* %15, %struct.sldns_file_parse_state* %12)
  store i32 %44, i32* %13, align 4
  %45 = load i64, i64* %14, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %34

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @sldns_get_errorstr_parse(i32 %57)
  %59 = call i32 (i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %54, i32 %56, i32 %58)
  store i32 0, i32* %17, align 4
  br label %104

60:                                               ; preds = %48
  %61 = load i32*, i32** %16, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @sldns_wirerr_get_type(i32* %61, i64 %62, i64 %63)
  %65 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32*, i32** %16, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i64 @sldns_wirerr_get_type(i32* %68, i64 %69, i64 %70)
  %72 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %34

75:                                               ; preds = %67, %60
  %76 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call %struct.trust_anchor* @anchor_store_new_rr(%struct.val_anchors* %76, i32* %77, i64 %78, i64 %79)
  store %struct.trust_anchor* %80, %struct.trust_anchor** %11, align 8
  %81 = icmp ne %struct.trust_anchor* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %12, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %85)
  store i32 0, i32* %17, align 4
  br label %104

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %92 = icmp ne %struct.trust_anchor* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %95 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %96 = icmp ne %struct.trust_anchor* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i8*, i32, ...) @log_err(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0), i8* %98, i32 %100)
  store i32 0, i32* %17, align 4
  br label %104

102:                                              ; preds = %93, %90, %87
  %103 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  store %struct.trust_anchor* %103, %struct.trust_anchor** %10, align 8
  br label %34

104:                                              ; preds = %97, %82, %51, %34
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @fclose(i32* %105)
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %119

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %115 = icmp ne %struct.trust_anchor* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store %struct.trust_anchor* inttoptr (i64 1 to %struct.trust_anchor*), %struct.trust_anchor** %5, align 8
  br label %119

117:                                              ; preds = %113, %110
  %118 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %118, %struct.trust_anchor** %5, align 8
  br label %119

119:                                              ; preds = %117, %116, %109, %25
  %120 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  ret %struct.trust_anchor* %120
}

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.sldns_file_parse_state*, i32, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @sldns_buffer_capacity(i32*) #1

declare dso_local i32 @sldns_fp2wire_rr_buf(i32*, i32*, i64*, i64*, %struct.sldns_file_parse_state*) #1

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #1

declare dso_local i32 @sldns_get_errorstr_parse(i32) #1

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #1

declare dso_local %struct.trust_anchor* @anchor_store_new_rr(%struct.val_anchors*, i32*, i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
