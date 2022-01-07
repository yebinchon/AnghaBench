; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8*, i8* }
%struct.packed_rrset_data = type { i64*, i32**, i64* }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BADRR\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error cannot parse rr: %s: %s\00", align 1
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"error expected rrsig but got %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"error out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.regional*, %struct.ub_packed_rrset_key*, %struct.packed_rrset_data*, i32, i32, i32*, i64)* @load_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_rr(i32* %0, i32* %1, %struct.regional* %2, %struct.ub_packed_rrset_key* %3, %struct.packed_rrset_data* %4, i32 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.regional* %2, %struct.regional** %13, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %14, align 8
  store %struct.packed_rrset_data* %4, %struct.packed_rrset_data** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %26 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = mul nuw i64 4, %27
  store i64 %30, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @ssl_read_buf(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

36:                                               ; preds = %9
  %37 = load i32*, i32** %12, align 8
  %38 = call i64 @sldns_buffer_begin(i32* %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32*, i32** %18, align 8
  store i32 0, i32* %43, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

44:                                               ; preds = %36
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @sldns_buffer_begin(i32* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @sldns_str2wire_rr_buf(i8* %47, i32* %29, i64* %22, i64* %23, i32 3600, i32* null, i32 0, i32* null, i32 0)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %24, align 4
  %53 = call i32 @sldns_get_errorstr_parse(i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @sldns_buffer_begin(i32* %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %56)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

58:                                               ; preds = %44
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i64, i64* %22, align 8
  %63 = load i64, i64* %23, align 8
  %64 = call i64 @sldns_wirerr_get_type(i32* %29, i64 %62, i64 %63)
  %65 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @sldns_buffer_begin(i32* %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

72:                                               ; preds = %61, %58
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %23, align 8
  %75 = call i64 @sldns_wirerr_get_ttl(i32* %29, i64 %73, i64 %74)
  %76 = load i64, i64* %19, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %79 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %77, i64* %83, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @sldns_buffer_clear(i32* %84)
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %23, align 8
  %88 = call i64 @sldns_wirerr_get_rdatalen(i32* %29, i64 %86, i64 %87)
  %89 = add i64 %88, 2
  %90 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %91 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  %96 = load %struct.regional*, %struct.regional** %13, align 8
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %23, align 8
  %99 = call i32* @sldns_wirerr_get_rdatawl(i32* %29, i64 %97, i64 %98)
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %101 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @regional_alloc_init(%struct.regional* %96, i32* %99, i64 %106)
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %110 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* %108, i32** %114, align 8
  %115 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %116 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %72
  %124 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

125:                                              ; preds = %72
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %125
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %23, align 8
  %131 = call i64 @sldns_wirerr_get_type(i32* %29, i64 %129, i64 %130)
  %132 = call i8* @htons(i64 %131)
  %133 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %134 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i8* %132, i8** %135, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %23, align 8
  %138 = call i64 @sldns_wirerr_get_class(i32* %29, i64 %136, i64 %137)
  %139 = call i8* @htons(i64 %138)
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %141 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  store i8* %139, i8** %142, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %145 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.regional*, %struct.regional** %13, align 8
  %148 = load i64, i64* %23, align 8
  %149 = call i64 @regional_alloc_init(%struct.regional* %147, i32* %29, i64 %148)
  %150 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %151 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i64 %149, i64* %152, align 8
  %153 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %154 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %128
  %159 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

160:                                              ; preds = %128
  br label %161

161:                                              ; preds = %160, %125
  store i32 1, i32* %10, align 4
  store i32 1, i32* %25, align 4
  br label %162

162:                                              ; preds = %161, %158, %123, %67, %51, %42, %35
  %163 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ssl_read_buf(i32*, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @sldns_buffer_begin(i32*) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @log_warn(i8*, ...) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #2

declare dso_local i64 @sldns_wirerr_get_ttl(i32*, i64, i64) #2

declare dso_local i32 @sldns_buffer_clear(i32*) #2

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32*, i64, i64) #2

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32*, i64) #2

declare dso_local i32* @sldns_wirerr_get_rdatawl(i32*, i64, i64) #2

declare dso_local i8* @htons(i64) #2

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
