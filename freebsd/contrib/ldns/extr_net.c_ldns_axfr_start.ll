; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_axfr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_axfr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32* }
%struct.sockaddr_storage = type { i64 }

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AXFR = common dso_local global i32 0, align 4
@LDNS_STATUS_ADDRESS_ERR = common dso_local global i64 0, align 8
@SOCK_INVALID = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@LDNS_RESOLV_INET6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@LDNS_RESOLV_INET = common dso_local global i64 0, align 8
@LDNS_STATUS_NETWORK_ERR = common dso_local global i64 0, align 8
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_TSIG_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_axfr_start(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = call i64 @ldns_resolver_nameserver_count(%struct.TYPE_11__* %19)
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %23, i64* %4, align 8
  br label %194

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ldns_rdf_clone(i32* %25)
  %27 = load i32, i32* @LDNS_RR_TYPE_AXFR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @ldns_pkt_query_new(i32 %26, i32 %27, i32 %28, i32 0)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* @LDNS_STATUS_ADDRESS_ERR, align 8
  store i64 %33, i64* %4, align 8
  br label %194

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = call i64 @ldns_resolver_source(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = call i64 @ldns_resolver_source(%struct.TYPE_11__* %39)
  %41 = call %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage_port(i64 %40, i32 0, i64* %11)
  store %struct.sockaddr_storage* %41, %struct.sockaddr_storage** %10, align 8
  br label %42

42:                                               ; preds = %38, %34
  store i64 0, i64* %14, align 8
  br label %43

43:                                               ; preds = %111, %42
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i64 @ldns_resolver_nameserver_count(%struct.TYPE_11__* %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SOCK_INVALID, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  br i1 %55, label %56, label %114

56:                                               ; preds = %54
  %57 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %58 = icmp ne %struct.sockaddr_storage* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %61 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = call i32 @ldns_resolver_port(%struct.TYPE_11__* %69)
  %71 = call %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage(i32 %68, i32 %70, i64* %13)
  store %struct.sockaddr_storage* %71, %struct.sockaddr_storage** %12, align 8
  %72 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %73 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AF_INET, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %62
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = call i64 @ldns_resolver_ip6(%struct.TYPE_11__* %78)
  %80 = load i64, i64* @LDNS_RESOLV_INET6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %84 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %83)
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %12, align 8
  br label %111

85:                                               ; preds = %77, %62
  %86 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %87 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AF_INET6, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = call i64 @ldns_resolver_ip6(%struct.TYPE_11__* %92)
  %94 = load i64, i64* @LDNS_RESOLV_INET, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %98 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %97)
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %12, align 8
  br label %111

99:                                               ; preds = %91, %85
  %100 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = call i32 @ldns_resolver_timeout(%struct.TYPE_11__* %106)
  %108 = call i32 @ldns_tcp_connect_from(%struct.sockaddr_storage* %100, i32 %102, %struct.sockaddr_storage* %103, i32 %105, i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %99, %96, %82
  %112 = load i64, i64* %14, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %14, align 8
  br label %43

114:                                              ; preds = %54
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SOCK_INVALID, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @ldns_pkt_free(i32* %121)
  %123 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %124 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %123)
  %125 = load i64, i64* @LDNS_STATUS_NETWORK_ERR, align 8
  store i64 %125, i64* %4, align 8
  br label %194

126:                                              ; preds = %114
  %127 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %128 = call i32* @ldns_buffer_new(i32 %127)
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @ldns_pkt_free(i32* %132)
  %134 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %135 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @close_socket(i32 %138)
  %140 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %140, i64* %4, align 8
  br label %194

141:                                              ; preds = %126
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i64 @ldns_pkt2buffer_wire(i32* %142, i32* %143)
  store i64 %144, i64* %15, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* @LDNS_STATUS_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @ldns_pkt_free(i32* %149)
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @ldns_buffer_free(i32* %151)
  %153 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %154 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @close_socket(i32 %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 8
  %161 = load i64, i64* %15, align 8
  store i64 %161, i64* %4, align 8
  br label %194

162:                                              ; preds = %141
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i64 @ldns_tcp_send_query(i32* %163, i32 %166, %struct.sockaddr_storage* %167, i32 %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @ldns_pkt_free(i32* %173)
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @ldns_buffer_free(i32* %175)
  %177 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %178 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @close_socket(i32 %181)
  %183 = load i64, i64* @LDNS_STATUS_NETWORK_ERR, align 8
  store i64 %183, i64* %4, align 8
  br label %194

184:                                              ; preds = %162
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @ldns_pkt_free(i32* %185)
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @ldns_buffer_free(i32* %187)
  %189 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %190 = call i32 @LDNS_FREE(%struct.sockaddr_storage* %189)
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %193, i64* %4, align 8
  br label %194

194:                                              ; preds = %184, %172, %148, %131, %120, %32, %22
  %195 = load i64, i64* %4, align 8
  ret i64 %195
}

declare dso_local i64 @ldns_resolver_nameserver_count(%struct.TYPE_11__*) #1

declare dso_local i32* @ldns_pkt_query_new(i32, i32, i32, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32*) #1

declare dso_local i64 @ldns_resolver_source(%struct.TYPE_11__*) #1

declare dso_local %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage_port(i64, i32, i64*) #1

declare dso_local i32 @LDNS_FREE(%struct.sockaddr_storage*) #1

declare dso_local %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage(i32, i32, i64*) #1

declare dso_local i32 @ldns_resolver_port(%struct.TYPE_11__*) #1

declare dso_local i64 @ldns_resolver_ip6(%struct.TYPE_11__*) #1

declare dso_local i32 @ldns_tcp_connect_from(%struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @ldns_resolver_timeout(%struct.TYPE_11__*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i32 @close_socket(i32) #1

declare dso_local i64 @ldns_pkt2buffer_wire(i32*, i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i64 @ldns_tcp_send_query(i32*, i32, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
