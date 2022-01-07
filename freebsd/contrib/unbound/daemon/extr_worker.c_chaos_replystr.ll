; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_chaos_replystr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_chaos_replystr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i32*, i32, i32, i32 }
%struct.worker = type { i32, i32 }
%struct.comm_reply = type { i32 }

@BIT_QR = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_TXT = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_CH = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i32 0, align 4
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i32, %struct.edns_data*, %struct.worker*, %struct.comm_reply*)* @chaos_replystr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chaos_replystr(i32* %0, i8** %1, i32 %2, %struct.edns_data* %3, %struct.worker* %4, %struct.comm_reply* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.edns_data*, align 8
  %11 = alloca %struct.worker*, align 8
  %12 = alloca %struct.comm_reply*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.edns_data* %3, %struct.edns_data** %10, align 8
  store %struct.worker* %4, %struct.worker** %11, align 8
  store %struct.comm_reply* %5, %struct.comm_reply** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sldns_buffer_begin(i32* %17)
  %19 = call i32 @LDNS_RD_WIRE(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sldns_buffer_begin(i32* %20)
  %22 = call i32 @LDNS_CD_WIRE(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sldns_buffer_clear(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sldns_buffer_skip(i32* %25, i32 4)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @BIT_QR, align 4
  %29 = load i32, i32* @BIT_RA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @sldns_buffer_write_u16(i32* %27, i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @sldns_buffer_begin(i32* %35)
  %37 = call i32 @LDNS_RD_SET(i32 %36)
  br label %38

38:                                               ; preds = %34, %6
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @sldns_buffer_begin(i32* %42)
  %44 = call i32 @LDNS_CD_SET(i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @sldns_buffer_write_u16(i32* %46, i32 1)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @sldns_buffer_write_u16(i32* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sldns_buffer_write_u16(i32* %51, i32 0)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @sldns_buffer_write_u16(i32* %53, i32 0)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @query_dname_len(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @sldns_buffer_skip(i32* %57, i32 4)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @sldns_buffer_skip(i32* %59, i32 4)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %102, %45
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp ugt i64 %72, 255
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i64 255, i64* %16, align 8
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @sldns_buffer_write_u16(i32* %76, i32 49164)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @LDNS_RR_TYPE_TXT, align 4
  %80 = call i32 @sldns_buffer_write_u16(i32* %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @LDNS_RR_CLASS_CH, align 4
  %83 = call i32 @sldns_buffer_write_u16(i32* %81, i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @sldns_buffer_write_u32(i32* %84, i32 0)
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %16, align 8
  %88 = add i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @sldns_buffer_write_u16(i32* %86, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @sldns_buffer_write_u8(i32* %91, i64 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = call i32 @sldns_buffer_write(i32* %94, i8* %99, i64 %100)
  br label %102

102:                                              ; preds = %75
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %61

105:                                              ; preds = %61
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @sldns_buffer_flip(i32* %106)
  %108 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %109 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %110 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @EDNS_ADVERTISED_SIZE, align 4
  %112 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %113 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @EDNS_DO, align 4
  %115 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %116 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.worker*, %struct.worker** %11, align 8
  %120 = getelementptr inbounds %struct.worker, %struct.worker* %119, i32 0, i32 1
  %121 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %122 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %123 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %124 = load %struct.worker*, %struct.worker** %11, align 8
  %125 = getelementptr inbounds %struct.worker, %struct.worker* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @inplace_cb_reply_local_call(i32* %120, i32* null, i32* null, i32* null, i32 %121, %struct.edns_data* %122, %struct.comm_reply* %123, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %105
  %130 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %131 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %129, %105
  %133 = load i32*, i32** %7, align 8
  %134 = call i64 @sldns_buffer_capacity(i32* %133)
  %135 = load i32*, i32** %7, align 8
  %136 = call i64 @sldns_buffer_limit(i32* %135)
  %137 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %138 = call i64 @calc_edns_field_size(%struct.edns_data* %137)
  %139 = add nsw i64 %136, %138
  %140 = icmp sge i64 %134, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %144 = call i32 @attach_edns_record(i32* %142, %struct.edns_data* %143)
  br label %145

145:                                              ; preds = %141, %132
  ret void
}

declare dso_local i32 @LDNS_RD_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @LDNS_CD_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @LDNS_RD_SET(i32) #1

declare dso_local i32 @LDNS_CD_SET(i32) #1

declare dso_local i32 @query_dname_len(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sldns_buffer_write_u32(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i64) #1

declare dso_local i32 @sldns_buffer_write(i32*, i8*, i64) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i32 @inplace_cb_reply_local_call(i32*, i32*, i32*, i32*, i32, %struct.edns_data*, %struct.comm_reply*, i32) #1

declare dso_local i64 @sldns_buffer_capacity(i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i64 @calc_edns_field_size(%struct.edns_data*) #1

declare dso_local i32 @attach_edns_record(i32*, %struct.edns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
