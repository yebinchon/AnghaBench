; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_reply_info_answer_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_reply_info_answer_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64 }
%struct.reply_info = type { i32, i64 }
%struct.regional = type { i32 }
%struct.edns_data = type { i32 }

@BIT_RD = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@BIT_AD = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@BIT_QR = common dso_local global i32 0, align 4
@LDNS_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reply encode: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_info_answer_encode(%struct.query_info* %0, %struct.reply_info* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.regional* %7, i32 %8, %struct.edns_data* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.query_info*, align 8
  %15 = alloca %struct.reply_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.regional*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.edns_data*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %14, align 8
  store %struct.reply_info* %1, %struct.reply_info** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store %struct.regional* %7, %struct.regional** %21, align 8
  store i32 %8, i32* %22, align 4
  store %struct.edns_data* %9, %struct.edns_data** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %12
  %31 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30, %12
  %36 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @BIT_RD, align 4
  %41 = load i32, i32* @BIT_CD, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = or i32 %38, %43
  store i32 %44, i32* %26, align 4
  br label %58

45:                                               ; preds = %30
  %46 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BIT_AA, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @BIT_RD, align 4
  %54 = load i32, i32* @BIT_CD, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = or i32 %51, %56
  store i32 %57, i32* %26, align 4
  br label %58

58:                                               ; preds = %45, %35
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %24, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @BIT_AD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @BIT_AD, align 4
  %71 = load i32, i32* %26, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %26, align 4
  br label %73

73:                                               ; preds = %69, %64, %58
  %74 = load %struct.query_info*, %struct.query_info** %14, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %80 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @FLAGS_GET_RCODE(i32 %81)
  %83 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @FLAGS_GET_RCODE(i32 %88)
  %90 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85, %78
  %93 = load i32, i32* @BIT_AA, align 4
  %94 = load i32, i32* %26, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %26, align 4
  %96 = load i32, i32* @BIT_AD, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %26, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %26, align 4
  br label %100

100:                                              ; preds = %92, %85, %73
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* @BIT_QR, align 4
  %103 = and i32 %101, %102
  %104 = call i32 @log_assert(i32 %103)
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %164

109:                                              ; preds = %100
  %110 = load i32*, i32** %18, align 8
  %111 = call i64 @sldns_buffer_capacity(i32* %110)
  %112 = load i32, i32* %22, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32*, i32** %18, align 8
  %117 = call i64 @sldns_buffer_capacity(i32* %116)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %22, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %122 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %123 = call i32 @calc_edns_field_size(%struct.edns_data* %122)
  %124 = add i32 %121, %123
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %27, align 4
  br label %133

127:                                              ; preds = %119
  %128 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %129 = call i32 @calc_edns_field_size(%struct.edns_data* %128)
  store i32 %129, i32* %27, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %22, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %22, align 4
  br label %133

133:                                              ; preds = %127, %126
  %134 = load %struct.query_info*, %struct.query_info** %14, align 8
  %135 = load %struct.reply_info*, %struct.reply_info** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %26, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load %struct.regional*, %struct.regional** %21, align 8
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %24, align 4
  %143 = call i32 @reply_info_encode(%struct.query_info* %134, %struct.reply_info* %135, i32 %136, i32 %137, i32* %138, i32 %139, %struct.regional* %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %133
  %146 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %164

147:                                              ; preds = %133
  %148 = load i32, i32* %27, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32*, i32** %18, align 8
  %152 = call i64 @sldns_buffer_capacity(i32* %151)
  %153 = load i32*, i32** %18, align 8
  %154 = call i64 @sldns_buffer_limit(i32* %153)
  %155 = load i32, i32* %27, align 4
  %156 = zext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = icmp sge i64 %152, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load i32*, i32** %18, align 8
  %161 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %162 = call i32 @attach_edns_record(i32* %160, %struct.edns_data* %161)
  br label %163

163:                                              ; preds = %159, %150, %147
  store i32 1, i32* %13, align 4
  br label %164

164:                                              ; preds = %163, %145, %108
  %165 = load i32, i32* %13, align 4
  ret i32 %165
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_buffer_capacity(i32*) #1

declare dso_local i32 @calc_edns_field_size(%struct.edns_data*) #1

declare dso_local i32 @reply_info_encode(%struct.query_info*, %struct.reply_info*, i32, i32, i32*, i32, %struct.regional*, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @attach_edns_record(i32*, %struct.edns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
