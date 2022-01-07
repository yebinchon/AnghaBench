; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_addr4sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_addr4sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.addr_ptr = type { i32, %struct.addrinfo* }
%struct.sockaddr_in = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, %struct.TYPE_9__*)* @addr4sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr4sort(%struct.addrinfo* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addr_ptr*, align 8
  %8 = alloca %struct.addr_ptr, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = icmp ne %struct.addrinfo* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %218

17:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %6, align 8
  br label %21

21:                                               ; preds = %27, %17
  %22 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %23 = icmp ne %struct.addrinfo* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 0
  %30 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  store %struct.addrinfo* %30, %struct.addrinfo** %6, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %218

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 16, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.addr_ptr* @malloc(i32 %39)
  store %struct.addr_ptr* %40, %struct.addr_ptr** %7, align 8
  %41 = icmp eq %struct.addr_ptr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %218

43:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  %44 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load %struct.addrinfo*, %struct.addrinfo** %45, align 8
  store %struct.addrinfo* %46, %struct.addrinfo** %6, align 8
  br label %47

47:                                               ; preds = %123, %43
  %48 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %49 = icmp ne %struct.addrinfo* %48, null
  br i1 %49, label %50, label %127

50:                                               ; preds = %47
  %51 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %9, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %87, %50
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %74, %82
  %84 = icmp eq i32 %70, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %61
  br label %90

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %55

90:                                               ; preds = %85, %55
  %91 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %92 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %92, i64 %94
  %96 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %95, i32 0, i32 1
  store %struct.addrinfo* %91, %struct.addrinfo** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %98, i64 %100
  %102 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 8
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %90
  %106 = load i32, i32* %11, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %110, i64 %113
  %115 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %118, %108, %105, %90
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %124, i32 0, i32 0
  %126 = load %struct.addrinfo*, %struct.addrinfo** %125, align 8
  store %struct.addrinfo* %126, %struct.addrinfo** %6, align 8
  br label %47

127:                                              ; preds = %47
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %132 = call i32 @free(%struct.addr_ptr* %131)
  store i32 0, i32* %3, align 4
  br label %218

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %189, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %192

138:                                              ; preds = %134
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %186, %138
  %142 = load i32, i32* %12, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %189

144:                                              ; preds = %141
  %145 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %145, i64 %147
  %149 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %151, i64 %154
  %156 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %150, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %144
  %160 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %160, i64 %162
  %164 = bitcast %struct.addr_ptr* %8 to i8*
  %165 = bitcast %struct.addr_ptr* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 16, i1 false)
  %166 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %166, i64 %168
  %170 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %170, i64 %173
  %175 = bitcast %struct.addr_ptr* %169 to i8*
  %176 = bitcast %struct.addr_ptr* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 16, i1 false)
  %177 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %177, i64 %180
  %182 = bitcast %struct.addr_ptr* %181 to i8*
  %183 = bitcast %struct.addr_ptr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 16, i1 false)
  br label %185

184:                                              ; preds = %144
  br label %189

185:                                              ; preds = %159
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %12, align 4
  br label %141

189:                                              ; preds = %184, %141
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %134

192:                                              ; preds = %134
  %193 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %193, %struct.addrinfo** %6, align 8
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %210, %192
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %199, i64 %201
  %203 = getelementptr inbounds %struct.addr_ptr, %struct.addr_ptr* %202, i32 0, i32 1
  %204 = load %struct.addrinfo*, %struct.addrinfo** %203, align 8
  %205 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %206 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %205, i32 0, i32 0
  store %struct.addrinfo* %204, %struct.addrinfo** %206, align 8
  %207 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %208 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %207, i32 0, i32 0
  %209 = load %struct.addrinfo*, %struct.addrinfo** %208, align 8
  store %struct.addrinfo* %209, %struct.addrinfo** %6, align 8
  br label %210

210:                                              ; preds = %198
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %194

213:                                              ; preds = %194
  %214 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %215 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %214, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %215, align 8
  %216 = load %struct.addr_ptr*, %struct.addr_ptr** %7, align 8
  %217 = call i32 @free(%struct.addr_ptr* %216)
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %213, %130, %42, %34, %16
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.addr_ptr* @malloc(i32) #1

declare dso_local i32 @free(%struct.addr_ptr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
