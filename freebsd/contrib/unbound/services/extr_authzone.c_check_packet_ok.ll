; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_check_packet_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_check_packet_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.auth_xfer*, i32*)* @check_packet_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packet_ok(i32* %0, i64 %1, %struct.auth_xfer* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.auth_xfer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.auth_xfer* %2, %struct.auth_xfer** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @sldns_buffer_limit(i32* %11)
  %13 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %187

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @sldns_buffer_begin(i32* %17)
  %19 = call i64 @LDNS_ID_WIRE(i32 %18)
  %20 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %21 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %187

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @sldns_buffer_begin(i32* %28)
  %30 = call i32 @LDNS_QR_WIRE(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %187

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @sldns_buffer_begin(i32* %34)
  %36 = call i64 @LDNS_OPCODE_WIRE(i32 %35)
  %37 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %187

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @sldns_buffer_begin(i32* %41)
  %43 = call i64 @LDNS_RCODE_WIRE(i32 %42)
  %44 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %187

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @sldns_buffer_begin(i32* %48)
  %50 = call i32 @LDNS_QDCOUNT(i32 %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %187

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @sldns_buffer_skip(i32* %54, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @sldns_buffer_remaining(i32* %58)
  %60 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %61 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %187

65:                                               ; preds = %53
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @sldns_buffer_current(i32* %66)
  %68 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %69 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @query_dname_compare(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %187

74:                                               ; preds = %65
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %77 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sldns_buffer_skip(i32* %75, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @sldns_buffer_remaining(i32* %80)
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %187

84:                                               ; preds = %74
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @sldns_buffer_read_u16(i32* %85)
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %187

90:                                               ; preds = %84
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @sldns_buffer_read_u16(i32* %91)
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %94 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %187

98:                                               ; preds = %90
  %99 = load i32*, i32** %9, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %186

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @sldns_buffer_begin(i32* %102)
  %104 = call i64 @LDNS_ANCOUNT(i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %187

107:                                              ; preds = %101
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @sldns_buffer_remaining(i32* %108)
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %187

112:                                              ; preds = %107
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @sldns_buffer_current(i32* %114)
  %116 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %117 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @dname_pkt_compare(i32* %113, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %187

122:                                              ; preds = %112
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @pkt_dname_len(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %187

127:                                              ; preds = %122
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @sldns_buffer_remaining(i32* %128)
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %187

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = call i64 @sldns_buffer_read_u16(i32* %133)
  %135 = load i64, i64* %7, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %187

138:                                              ; preds = %132
  %139 = load i32*, i32** %6, align 8
  %140 = call i64 @sldns_buffer_read_u16(i32* %139)
  %141 = load %struct.auth_xfer*, %struct.auth_xfer** %8, align 8
  %142 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %187

146:                                              ; preds = %138
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @sldns_buffer_skip(i32* %147, i32 4)
  %149 = load i32*, i32** %6, align 8
  %150 = call i64 @sldns_buffer_read_u16(i32* %149)
  store i64 %150, i64* %10, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @sldns_buffer_remaining(i32* %151)
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %10, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %187

157:                                              ; preds = %146
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @sldns_buffer_remaining(i32* %158)
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %187

162:                                              ; preds = %157
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @pkt_dname_len(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %187

167:                                              ; preds = %162
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @sldns_buffer_remaining(i32* %168)
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %187

172:                                              ; preds = %167
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @pkt_dname_len(i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %187

177:                                              ; preds = %172
  %178 = load i32*, i32** %6, align 8
  %179 = call i32 @sldns_buffer_remaining(i32* %178)
  %180 = icmp slt i32 %179, 20
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %187

182:                                              ; preds = %177
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @sldns_buffer_read_u32(i32* %183)
  %185 = load i32*, i32** %9, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %98
  store i32 1, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %181, %176, %171, %166, %161, %156, %145, %137, %131, %126, %121, %111, %106, %97, %89, %83, %73, %64, %52, %46, %39, %32, %26, %15
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i64 @LDNS_ID_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @LDNS_QR_WIRE(i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32) #1

declare dso_local i32 @LDNS_QDCOUNT(i32) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @sldns_buffer_current(i32*) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

declare dso_local i64 @dname_pkt_compare(i32*, i32, i32) #1

declare dso_local i32 @pkt_dname_len(i32*) #1

declare dso_local i32 @sldns_buffer_read_u32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
