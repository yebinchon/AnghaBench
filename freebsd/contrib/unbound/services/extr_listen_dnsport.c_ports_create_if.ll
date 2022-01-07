; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_ports_create_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_ports_create_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.listen_port = type { i32 }
%struct.config_strlist = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"IPv6 protocol not available\00", align 1
@listen_type_udpancil_dnscrypt = common dso_local global i32 0, align 4
@listen_type_udpancil = common dso_local global i32 0, align 4
@listen_type_udp_dnscrypt = common dso_local global i32 0, align 4
@listen_type_udp = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setup TCP for SSL service\00", align 1
@listen_type_ssl = common dso_local global i32 0, align 4
@listen_type_tcp_dnscrypt = common dso_local global i32 0, align 4
@listen_type_tcp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.addrinfo*, i8*, %struct.listen_port**, i64, i64, i32, %struct.config_strlist*, i32*, i32, i32, i32, i32, i32)* @ports_create_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ports_create_if(i8* %0, i32 %1, i32 %2, i32 %3, %struct.addrinfo* %4, i8* %5, %struct.listen_port** %6, i64 %7, i64 %8, i32 %9, %struct.config_strlist* %10, i32* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.addrinfo*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.listen_port**, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.config_strlist*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i8* %0, i8** %19, align 8
  store i32 %1, i32* %20, align 4
  store i32 %2, i32* %21, align 4
  store i32 %3, i32* %22, align 4
  store %struct.addrinfo* %4, %struct.addrinfo** %23, align 8
  store i8* %5, i8** %24, align 8
  store %struct.listen_port** %6, %struct.listen_port*** %25, align 8
  store i64 %7, i64* %26, align 8
  store i64 %8, i64* %27, align 8
  store i32 %9, i32* %28, align 4
  store %struct.config_strlist* %10, %struct.config_strlist** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store i32 %14, i32* %33, align 4
  store i32 %15, i32* %34, align 4
  store i32 %16, i32* %35, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %40 = load i32, i32* %35, align 4
  %41 = load i32, i32* %21, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %17
  %44 = load i32, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %194

47:                                               ; preds = %43, %17
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = load i32, i32* @SOCK_DGRAM, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %24, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %55 = load i64, i64* %26, align 8
  %56 = load i64, i64* %27, align 8
  %57 = load i32*, i32** %30, align 8
  %58 = load i32, i32* %31, align 4
  %59 = load i32, i32* %32, align 4
  %60 = load i32, i32* %33, align 4
  %61 = load i32, i32* %34, align 4
  %62 = call i32 @make_sock_port(i32 %51, i8* %52, i8* %53, %struct.addrinfo* %54, i32 1, i32* %37, i64 %55, i64 %56, i32* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %36, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = load i32, i32* %37, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @log_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %194

69:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  br label %194

70:                                               ; preds = %50
  %71 = load i32, i32* %36, align 4
  %72 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_recvpktinfo(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %36, align 4
  %79 = call i32 @close(i32 %78)
  store i32 0, i32* %18, align 4
  br label %194

80:                                               ; preds = %70
  %81 = load %struct.listen_port**, %struct.listen_port*** %25, align 8
  %82 = load i32, i32* %36, align 4
  %83 = load i32, i32* %38, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @listen_type_udpancil_dnscrypt, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @listen_type_udpancil, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @port_insert(%struct.listen_port** %81, i32 %82, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %36, align 4
  %95 = call i32 @close(i32 %94)
  store i32 0, i32* %18, align 4
  br label %194

96:                                               ; preds = %89
  br label %138

97:                                               ; preds = %47
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %97
  %101 = load i32, i32* @SOCK_DGRAM, align 4
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %105 = load i64, i64* %26, align 8
  %106 = load i64, i64* %27, align 8
  %107 = load i32*, i32** %30, align 8
  %108 = load i32, i32* %31, align 4
  %109 = load i32, i32* %32, align 4
  %110 = load i32, i32* %33, align 4
  %111 = load i32, i32* %34, align 4
  %112 = call i32 @make_sock_port(i32 %101, i8* %102, i8* %103, %struct.addrinfo* %104, i32 1, i32* %37, i64 %105, i64 %106, i32* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %36, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load i32, i32* %37, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @log_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %194

119:                                              ; preds = %114
  store i32 0, i32* %18, align 4
  br label %194

120:                                              ; preds = %100
  %121 = load %struct.listen_port**, %struct.listen_port*** %25, align 8
  %122 = load i32, i32* %36, align 4
  %123 = load i32, i32* %38, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @listen_type_udp_dnscrypt, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @listen_type_udp, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = call i32 @port_insert(%struct.listen_port** %121, i32 %122, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %36, align 4
  %135 = call i32 @close(i32 %134)
  store i32 0, i32* %18, align 4
  br label %194

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %97
  br label %138

138:                                              ; preds = %137, %96
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %138
  %142 = load i8*, i8** %19, align 8
  %143 = load i8*, i8** %24, align 8
  %144 = load i32, i32* %28, align 4
  %145 = load %struct.config_strlist*, %struct.config_strlist** %29, align 8
  %146 = call i32 @if_is_ssl(i8* %142, i8* %143, i32 %144, %struct.config_strlist* %145)
  store i32 %146, i32* %39, align 4
  %147 = load i32, i32* @SOCK_STREAM, align 4
  %148 = load i8*, i8** %19, align 8
  %149 = load i8*, i8** %24, align 8
  %150 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %151 = load i32*, i32** %30, align 8
  %152 = load i32, i32* %31, align 4
  %153 = load i32, i32* %32, align 4
  %154 = load i32, i32* %33, align 4
  %155 = load i32, i32* %34, align 4
  %156 = call i32 @make_sock_port(i32 %147, i8* %148, i8* %149, %struct.addrinfo* %150, i32 1, i32* %37, i64 0, i64 0, i32* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %36, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %163

158:                                              ; preds = %141
  %159 = load i32, i32* %37, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 1, i32* %18, align 4
  br label %194

162:                                              ; preds = %158
  store i32 0, i32* %18, align 4
  br label %194

163:                                              ; preds = %141
  %164 = load i32, i32* %39, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @VERB_ALGO, align 4
  %168 = call i32 @verbose(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.listen_port**, %struct.listen_port*** %25, align 8
  %171 = load i32, i32* %36, align 4
  %172 = load i32, i32* %39, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @listen_type_ssl, align 4
  br label %185

176:                                              ; preds = %169
  %177 = load i32, i32* %38, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* @listen_type_tcp_dnscrypt, align 4
  br label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @listen_type_tcp, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  br label %185

185:                                              ; preds = %183, %174
  %186 = phi i32 [ %175, %174 ], [ %184, %183 ]
  %187 = call i32 @port_insert(%struct.listen_port** %170, i32 %171, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %36, align 4
  %191 = call i32 @close(i32 %190)
  store i32 0, i32* %18, align 4
  br label %194

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %138
  store i32 1, i32* %18, align 4
  br label %194

194:                                              ; preds = %193, %189, %162, %161, %133, %119, %117, %93, %77, %69, %67, %46
  %195 = load i32, i32* %18, align 4
  ret i32 %195
}

declare dso_local i32 @make_sock_port(i32, i8*, i8*, %struct.addrinfo*, i32, i32*, i64, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @set_recvpktinfo(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @port_insert(%struct.listen_port**, i32, i32) #1

declare dso_local i32 @if_is_ssl(i8*, i8*, i32, %struct.config_strlist*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
