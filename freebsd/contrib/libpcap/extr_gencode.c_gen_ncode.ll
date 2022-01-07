; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ncode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.qual = type { i32, i32, i32 }

@Q_DECNET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"malformed decnet address '%s'\00", align 1
@Q_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"illegal link layer address\00", align 1
@Q_UDP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@Q_TCP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@Q_SCTP = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@PROTO_UNDEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"illegal qualifier of 'port'\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"illegal port number %u > 65535\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"illegal qualifier of 'portrange'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"'gateway' requires a name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_ncode(i32* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.qual, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.block*, align 8
  %17 = alloca %struct.block*, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %19, align 4
  %20 = bitcast %struct.qual* %7 to i8*
  %21 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  %22 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 32, i32* %15, align 4
  br label %48

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @Q_DECNET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @__pcap_atodn(i8* %35, i32* %11)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32*, i8*, ...) @bpf_error(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %47

44:                                               ; preds = %29
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @__pcap_atoin(i8* %45, i32* %11)
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %28
  %49 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %233 [
    i32 136, label %51
    i32 134, label %51
    i32 133, label %51
    i32 132, label %113
    i32 131, label %163
    i32 135, label %215
    i32 130, label %218
    i32 129, label %224
    i32 128, label %230
  ]

51:                                               ; preds = %48, %48, %48
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @Q_DECNET, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.block* @gen_host(i32* %56, i32 %57, i32 0, i32 %58, i32 %59, i32 %61)
  store %struct.block* %62, %struct.block** %6, align 8
  br label %235

63:                                               ; preds = %51
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @Q_LINK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 (i32*, i8*, ...) @bpf_error(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %111

70:                                               ; preds = %63
  store i32 -1, i32* %12, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 133
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %87, %77
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, -16777216
  %84 = icmp eq i32 %83, 0
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 %88, 8
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = shl i32 %90, 8
  store i32 %91, i32* %12, align 4
  br label %78

92:                                               ; preds = %85
  br label %102

93:                                               ; preds = %73, %70
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 32, %94
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 32, %98
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %93, %92
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.block* @gen_host(i32* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %109)
  store %struct.block* %110, %struct.block** %6, align 8
  br label %235

111:                                              ; preds = %67
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %48, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @Q_UDP, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %118, i32* %13, align 4
  br label %142

119:                                              ; preds = %113
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @Q_TCP, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %124, i32* %13, align 4
  br label %141

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @Q_SCTP, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @IPPROTO_SCTP, align 4
  store i32 %130, i32* %13, align 4
  br label %140

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 136
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @PROTO_UNDEF, align 4
  store i32 %135, i32* %13, align 4
  br label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 (i32*, i8*, ...) @bpf_error(i32* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %134
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* %11, align 4
  %144 = icmp sgt i32 %143, 65535
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (i32*, i8*, ...) @bpf_error(i32* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call %struct.block* @gen_port(i32* %150, i32 %151, i32 %152, i32 %153)
  store %struct.block* %154, %struct.block** %16, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @gen_port6(i32* %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.block*, %struct.block** %16, align 8
  %161 = call i32 @gen_or(i32 %159, %struct.block* %160)
  %162 = load %struct.block*, %struct.block** %16, align 8
  store %struct.block* %162, %struct.block** %6, align 8
  br label %235

163:                                              ; preds = %48
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @Q_UDP, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %168, i32* %13, align 4
  br label %192

169:                                              ; preds = %163
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @Q_TCP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %174, i32* %13, align 4
  br label %191

175:                                              ; preds = %169
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @Q_SCTP, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @IPPROTO_SCTP, align 4
  store i32 %180, i32* %13, align 4
  br label %190

181:                                              ; preds = %175
  %182 = load i32, i32* %13, align 4
  %183 = icmp eq i32 %182, 136
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* @PROTO_UNDEF, align 4
  store i32 %185, i32* %13, align 4
  br label %189

186:                                              ; preds = %181
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 (i32*, i8*, ...) @bpf_error(i32* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %184
  br label %190

190:                                              ; preds = %189, %179
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %167
  %193 = load i32, i32* %11, align 4
  %194 = icmp sgt i32 %193, 65535
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 (i32*, i8*, ...) @bpf_error(i32* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = call %struct.block* @gen_portrange(i32* %200, i32 %201, i32 %202, i32 %203, i32 %204)
  store %struct.block* %205, %struct.block** %17, align 8
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @gen_portrange6(i32* %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.block*, %struct.block** %17, align 8
  %213 = call i32 @gen_or(i32 %211, %struct.block* %212)
  %214 = load %struct.block*, %struct.block** %17, align 8
  store %struct.block* %214, %struct.block** %6, align 8
  br label %235

215:                                              ; preds = %48
  %216 = load i32*, i32** %9, align 8
  %217 = call i32 (i32*, i8*, ...) @bpf_error(i32* %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %218

218:                                              ; preds = %48, %215
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call %struct.block* @gen_proto(i32* %219, i32 %220, i32 %221, i32 %222)
  store %struct.block* %223, %struct.block** %6, align 8
  br label %235

224:                                              ; preds = %48
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call %struct.block* @gen_protochain(i32* %225, i32 %226, i32 %227, i32 %228)
  store %struct.block* %229, %struct.block** %6, align 8
  br label %235

230:                                              ; preds = %48
  %231 = load i32*, i32** %9, align 8
  %232 = call i32 @syntax(i32* %231)
  br label %233

233:                                              ; preds = %48, %230
  %234 = call i32 (...) @abort() #4
  unreachable

235:                                              ; preds = %224, %218, %199, %149, %102, %55
  %236 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__pcap_atodn(i8*, i32*) #2

declare dso_local i32 @bpf_error(i32*, i8*, ...) #2

declare dso_local i32 @__pcap_atoin(i8*, i32*) #2

declare dso_local %struct.block* @gen_host(i32*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_port(i32*, i32, i32, i32) #2

declare dso_local i32 @gen_or(i32, %struct.block*) #2

declare dso_local i32 @gen_port6(i32*, i32, i32, i32) #2

declare dso_local %struct.block* @gen_portrange(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @gen_portrange6(i32*, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_proto(i32*, i32, i32, i32) #2

declare dso_local %struct.block* @gen_protochain(i32*, i32, i32, i32) #2

declare dso_local i32 @syntax(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
