; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_serviced_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_serviced_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { %struct.serviced_query*, %struct.serviced_query*, i8*, i32*, %struct.serviced_query*, %struct.serviced_query* }
%struct.outside_network = type { i32, i64 }
%struct.query_info = type { i64, i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.module_qstate = type { i32, i32 }
%struct.module_env = type { i32 }
%struct.service_callback = type { %struct.service_callback*, %struct.service_callback*, i8*, i32*, %struct.service_callback*, %struct.service_callback* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.serviced_query* @outnet_serviced_query(%struct.outside_network* %0, %struct.query_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, %struct.sockaddr_storage* %9, i32 %10, i32* %11, i64 %12, %struct.module_qstate* %13, i32* %14, i8* %15, i32* %16, %struct.module_env* %17) #0 {
  %19 = alloca %struct.serviced_query*, align 8
  %20 = alloca %struct.outside_network*, align 8
  %21 = alloca %struct.query_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca %struct.sockaddr_storage*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.module_qstate*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca %struct.module_env*, align 8
  %38 = alloca %struct.serviced_query*, align 8
  %39 = alloca %struct.service_callback*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %20, align 8
  store %struct.query_info* %1, %struct.query_info** %21, align 8
  store i32 %2, i32* %22, align 4
  store i32 %3, i32* %23, align 4
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32 %6, i32* %26, align 4
  store i32 %7, i32* %27, align 4
  store i8* %8, i8** %28, align 8
  store %struct.sockaddr_storage* %9, %struct.sockaddr_storage** %29, align 8
  store i32 %10, i32* %30, align 4
  store i32* %11, i32** %31, align 8
  store i64 %12, i64* %32, align 8
  store %struct.module_qstate* %13, %struct.module_qstate** %33, align 8
  store i32* %14, i32** %34, align 8
  store i8* %15, i8** %35, align 8
  store i32* %16, i32** %36, align 8
  store %struct.module_env* %17, %struct.module_env** %37, align 8
  %40 = load %struct.module_env*, %struct.module_env** %37, align 8
  %41 = load %struct.query_info*, %struct.query_info** %21, align 8
  %42 = load i32, i32* %22, align 4
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %29, align 8
  %44 = load i32, i32* %30, align 4
  %45 = load i32*, i32** %31, align 8
  %46 = load i64, i64* %32, align 8
  %47 = load %struct.module_qstate*, %struct.module_qstate** %33, align 8
  %48 = load %struct.module_qstate*, %struct.module_qstate** %33, align 8
  %49 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @inplace_cb_query_call(%struct.module_env* %40, %struct.query_info* %41, i32 %42, %struct.sockaddr_storage* %43, i32 %44, i32* %45, i64 %46, %struct.module_qstate* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %18
  store %struct.serviced_query* null, %struct.serviced_query** %19, align 8
  br label %193

54:                                               ; preds = %18
  %55 = load i32*, i32** %36, align 8
  %56 = load %struct.query_info*, %struct.query_info** %21, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.query_info*, %struct.query_info** %21, align 8
  %60 = getelementptr inbounds %struct.query_info, %struct.query_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.query_info*, %struct.query_info** %21, align 8
  %63 = getelementptr inbounds %struct.query_info, %struct.query_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.query_info*, %struct.query_info** %21, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %22, align 4
  %69 = call i32 @serviced_gen_query(i32* %55, i32 %58, i32 %61, i64 %64, i32 %67, i32 %68)
  %70 = load %struct.outside_network*, %struct.outside_network** %20, align 8
  %71 = load i32*, i32** %36, align 8
  %72 = load i32, i32* %23, align 4
  %73 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %29, align 8
  %74 = load i32, i32* %30, align 4
  %75 = load %struct.module_qstate*, %struct.module_qstate** %33, align 8
  %76 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.serviced_query* @lookup_serviced(%struct.outside_network* %70, i32* %71, i32 %72, %struct.sockaddr_storage* %73, i32 %74, i32 %77)
  store %struct.serviced_query* %78, %struct.serviced_query** %38, align 8
  %79 = call i64 @malloc(i32 48)
  %80 = inttoptr i64 %79 to %struct.service_callback*
  store %struct.service_callback* %80, %struct.service_callback** %39, align 8
  %81 = icmp ne %struct.service_callback* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %54
  store %struct.serviced_query* null, %struct.serviced_query** %19, align 8
  br label %193

83:                                               ; preds = %54
  %84 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %85 = icmp ne %struct.serviced_query* %84, null
  br i1 %85, label %175, label %86

86:                                               ; preds = %83
  %87 = load %struct.outside_network*, %struct.outside_network** %20, align 8
  %88 = load i32*, i32** %36, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i8*, i8** %28, align 8
  %95 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %29, align 8
  %96 = load i32, i32* %30, align 4
  %97 = load i32*, i32** %31, align 8
  %98 = load i64, i64* %32, align 8
  %99 = load %struct.query_info*, %struct.query_info** %21, align 8
  %100 = getelementptr inbounds %struct.query_info, %struct.query_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.module_qstate*, %struct.module_qstate** %33, align 8
  %104 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.serviced_query* @serviced_create(%struct.outside_network* %87, i32* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i8* %94, %struct.sockaddr_storage* %95, i32 %96, i32* %97, i64 %98, i32 %102, i32 %105)
  store %struct.serviced_query* %106, %struct.serviced_query** %38, align 8
  %107 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %108 = icmp ne %struct.serviced_query* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %86
  %110 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %111 = bitcast %struct.service_callback* %110 to %struct.serviced_query*
  %112 = call i32 @free(%struct.serviced_query* %111)
  store %struct.serviced_query* null, %struct.serviced_query** %19, align 8
  br label %193

113:                                              ; preds = %86
  %114 = load %struct.outside_network*, %struct.outside_network** %20, align 8
  %115 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %113
  %119 = load i32, i32* %26, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %27, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %121
  %125 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %126 = load i32*, i32** %36, align 8
  %127 = call i32 @serviced_udp_send(%struct.serviced_query* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load %struct.outside_network*, %struct.outside_network** %20, align 8
  %131 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %134 = call i32 @rbtree_delete(i32 %132, %struct.serviced_query* %133)
  %135 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %136 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %135, i32 0, i32 5
  %137 = load %struct.serviced_query*, %struct.serviced_query** %136, align 8
  %138 = call i32 @free(%struct.serviced_query* %137)
  %139 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %140 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %139, i32 0, i32 4
  %141 = load %struct.serviced_query*, %struct.serviced_query** %140, align 8
  %142 = call i32 @free(%struct.serviced_query* %141)
  %143 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %144 = call i32 @free(%struct.serviced_query* %143)
  %145 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %146 = bitcast %struct.service_callback* %145 to %struct.serviced_query*
  %147 = call i32 @free(%struct.serviced_query* %146)
  store %struct.serviced_query* null, %struct.serviced_query** %19, align 8
  br label %193

148:                                              ; preds = %124
  br label %174

149:                                              ; preds = %121, %118, %113
  %150 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %151 = load i32*, i32** %36, align 8
  %152 = call i32 @serviced_tcp_send(%struct.serviced_query* %150, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %149
  %155 = load %struct.outside_network*, %struct.outside_network** %20, align 8
  %156 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %159 = call i32 @rbtree_delete(i32 %157, %struct.serviced_query* %158)
  %160 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %161 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %160, i32 0, i32 5
  %162 = load %struct.serviced_query*, %struct.serviced_query** %161, align 8
  %163 = call i32 @free(%struct.serviced_query* %162)
  %164 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %165 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %164, i32 0, i32 4
  %166 = load %struct.serviced_query*, %struct.serviced_query** %165, align 8
  %167 = call i32 @free(%struct.serviced_query* %166)
  %168 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %169 = call i32 @free(%struct.serviced_query* %168)
  %170 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %171 = bitcast %struct.service_callback* %170 to %struct.serviced_query*
  %172 = call i32 @free(%struct.serviced_query* %171)
  store %struct.serviced_query* null, %struct.serviced_query** %19, align 8
  br label %193

173:                                              ; preds = %149
  br label %174

174:                                              ; preds = %173, %148
  br label %175

175:                                              ; preds = %174, %83
  %176 = load i32*, i32** %34, align 8
  %177 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %178 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %177, i32 0, i32 3
  store i32* %176, i32** %178, align 8
  %179 = load i8*, i8** %35, align 8
  %180 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %181 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  %182 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %183 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %182, i32 0, i32 0
  %184 = load %struct.serviced_query*, %struct.serviced_query** %183, align 8
  %185 = bitcast %struct.serviced_query* %184 to %struct.service_callback*
  %186 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %187 = getelementptr inbounds %struct.service_callback, %struct.service_callback* %186, i32 0, i32 1
  store %struct.service_callback* %185, %struct.service_callback** %187, align 8
  %188 = load %struct.service_callback*, %struct.service_callback** %39, align 8
  %189 = bitcast %struct.service_callback* %188 to %struct.serviced_query*
  %190 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  %191 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %190, i32 0, i32 0
  store %struct.serviced_query* %189, %struct.serviced_query** %191, align 8
  %192 = load %struct.serviced_query*, %struct.serviced_query** %38, align 8
  store %struct.serviced_query* %192, %struct.serviced_query** %19, align 8
  br label %193

193:                                              ; preds = %175, %154, %129, %109, %82, %53
  %194 = load %struct.serviced_query*, %struct.serviced_query** %19, align 8
  ret %struct.serviced_query* %194
}

declare dso_local i32 @inplace_cb_query_call(%struct.module_env*, %struct.query_info*, i32, %struct.sockaddr_storage*, i32, i32*, i64, %struct.module_qstate*, i32) #1

declare dso_local i32 @serviced_gen_query(i32*, i32, i32, i64, i32, i32) #1

declare dso_local %struct.serviced_query* @lookup_serviced(%struct.outside_network*, i32*, i32, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.serviced_query* @serviced_create(%struct.outside_network*, i32*, i32, i32, i32, i32, i32, i8*, %struct.sockaddr_storage*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @free(%struct.serviced_query*) #1

declare dso_local i32 @serviced_udp_send(%struct.serviced_query*, i32*) #1

declare dso_local i32 @rbtree_delete(i32, %struct.serviced_query*) #1

declare dso_local i32 @serviced_tcp_send(%struct.serviced_query*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
