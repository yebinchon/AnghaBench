; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_packet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swrap_packet = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i16, i16, i8*, i8* }
%struct.TYPE_10__ = type { i16, i16, i32, i8, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.sockaddr_in = type { i16, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swrap_packet* (%struct.timeval*, %struct.sockaddr_in*, %struct.sockaddr_in*, i32, i8*, i64, i64, i64, i8, i32, i64*)* @swrap_packet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swrap_packet* @swrap_packet_init(%struct.timeval* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2, i32 %3, i8* %4, i64 %5, i64 %6, i64 %7, i8 zeroext %8, i32 %9, i64* %10) #0 {
  %12 = alloca %struct.swrap_packet*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca %struct.swrap_packet*, align 8
  %25 = alloca %struct.swrap_packet*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i16, align 2
  %36 = alloca i16, align 2
  %37 = alloca i8*, align 8
  store %struct.timeval* %0, %struct.timeval** %13, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %14, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i8 %8, i8* %21, align 1
  store i32 %9, i32* %22, align 4
  store i64* %10, i64** %23, align 8
  store i64 24, i64* %28, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  store i64 0, i64* %32, align 8
  store i8 0, i8* %33, align 1
  store i8 0, i8* %34, align 1
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 4
  store i16 %40, i16* %35, align 2
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 4
  store i16 %43, i16* %36, align 2
  %44 = load i32, i32* %16, align 4
  switch i32 %44, label %53 [
    i32 128, label %45
    i32 129, label %49
  ]

45:                                               ; preds = %11
  store i8 6, i8* %33, align 1
  store i64 120, i64* %29, align 8
  %46 = load i64, i64* %29, align 8
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %30, align 8
  br label %53

49:                                               ; preds = %11
  store i8 17, i8* %33, align 1
  store i64 88, i64* %29, align 8
  %50 = load i64, i64* %29, align 8
  %51 = load i64, i64* %18, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %30, align 8
  br label %53

53:                                               ; preds = %11, %49, %45
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i8, i8* %33, align 1
  store i8 %57, i8* %34, align 1
  store i8 1, i8* %33, align 1
  %58 = load i64, i64* %30, align 8
  %59 = icmp ugt i64 %58, 64
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* %30, align 8
  %62 = sub i64 %61, 64
  store i64 %62, i64* %32, align 8
  br label %63

63:                                               ; preds = %60, %56
  store i64 88, i64* %31, align 8
  %64 = load i64, i64* %31, align 8
  %65 = load i64, i64* %29, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %29, align 8
  %67 = load i64, i64* %31, align 8
  %68 = load i64, i64* %30, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %30, align 8
  br label %70

70:                                               ; preds = %63, %53
  %71 = load i64, i64* %28, align 8
  %72 = load i64, i64* %30, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %26, align 8
  %74 = load i64, i64* %26, align 8
  store i64 %74, i64* %27, align 8
  %75 = load i64, i64* %27, align 8
  %76 = icmp ult i64 %75, 192
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i64 192, i64* %27, align 8
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i64, i64* %27, align 8
  %80 = call i64 @malloc(i64 %79)
  %81 = inttoptr i64 %80 to %struct.swrap_packet*
  store %struct.swrap_packet* %81, %struct.swrap_packet** %24, align 8
  %82 = load %struct.swrap_packet*, %struct.swrap_packet** %24, align 8
  %83 = icmp ne %struct.swrap_packet* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store %struct.swrap_packet* null, %struct.swrap_packet** %12, align 8
  br label %384

85:                                               ; preds = %78
  %86 = load %struct.swrap_packet*, %struct.swrap_packet** %24, align 8
  store %struct.swrap_packet* %86, %struct.swrap_packet** %25, align 8
  %87 = load %struct.timeval*, %struct.timeval** %13, align 8
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %91 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.timeval*, %struct.timeval** %13, align 8
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %97 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i64, i64* %30, align 8
  %100 = load i64, i64* %32, align 8
  %101 = sub i64 %99, %100
  %102 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %103 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %30, align 8
  %106 = load i64, i64* %32, align 8
  %107 = sub i64 %105, %106
  %108 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %109 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %112 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32 69, i32* %114, align 8
  %115 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %116 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load i64, i64* %30, align 8
  %120 = load i64, i64* %32, align 8
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i8* @htons(i32 %122)
  %124 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %125 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 10
  store i8* %123, i8** %127, align 8
  %128 = call i8* @htons(i32 65535)
  %129 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %130 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 9
  store i8* %128, i8** %132, align 8
  %133 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %134 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  store i32 64, i32* %136, align 8
  %137 = call i8* @htons(i32 0)
  %138 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %139 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 8
  store i8* %137, i8** %141, align 8
  %142 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %143 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  store i32 255, i32* %145, align 4
  %146 = load i8, i8* %33, align 1
  %147 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %148 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 4
  store i8 %146, i8* %150, align 8
  %151 = call i8* @htons(i32 0)
  %152 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %153 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 7
  store i8* %151, i8** %155, align 8
  %156 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %161 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 6
  store i32 %159, i32* %163, align 8
  %164 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %169 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 5
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %269

174:                                              ; preds = %85
  %175 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %176 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 3, i32* %179, align 8
  %180 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %181 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 4
  %185 = call i8* @htons(i32 0)
  %186 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %187 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  store i8* %185, i8** %190, align 8
  %191 = call i8* @htonl(i64 0)
  %192 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %193 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  store i8* %191, i8** %196, align 8
  %197 = load %struct.swrap_packet*, %struct.swrap_packet** %24, align 8
  %198 = bitcast %struct.swrap_packet* %197 to i8*
  %199 = load i64, i64* %31, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = bitcast i8* %200 to %struct.swrap_packet*
  store %struct.swrap_packet* %201, %struct.swrap_packet** %25, align 8
  %202 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %203 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 69, i32* %205, align 8
  %206 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %207 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  store i32 0, i32* %209, align 4
  %210 = load i64, i64* %30, align 8
  %211 = load i64, i64* %31, align 8
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = call i8* @htons(i32 %213)
  %215 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %216 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 10
  store i8* %214, i8** %218, align 8
  %219 = call i8* @htons(i32 65535)
  %220 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %221 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 9
  store i8* %219, i8** %223, align 8
  %224 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %225 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  store i32 64, i32* %227, align 8
  %228 = call i8* @htons(i32 0)
  %229 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %230 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 8
  store i8* %228, i8** %232, align 8
  %233 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %234 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 3
  store i32 255, i32* %236, align 4
  %237 = load i8, i8* %34, align 1
  %238 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %239 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 4
  store i8 %237, i8* %241, align 8
  %242 = call i8* @htons(i32 0)
  %243 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %244 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 7
  store i8* %242, i8** %246, align 8
  %247 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %248 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %252 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 6
  store i32 %250, i32* %254, align 8
  %255 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %256 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %260 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 5
  store i32 %258, i32* %262, align 4
  %263 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %264 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %263, i32 0, i32 0
  %265 = load i16, i16* %264, align 4
  store i16 %265, i16* %35, align 2
  %266 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %267 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %266, i32 0, i32 0
  %268 = load i16, i16* %267, align 4
  store i16 %268, i16* %36, align 2
  br label %269

269:                                              ; preds = %174, %85
  %270 = load i32, i32* %16, align 4
  switch i32 %270, label %359 [
    i32 128, label %271
    i32 129, label %327
  ]

271:                                              ; preds = %269
  %272 = load i16, i16* %35, align 2
  %273 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %274 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  store i16 %272, i16* %277, align 8
  %278 = load i16, i16* %36, align 2
  %279 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %280 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  store i16 %278, i16* %283, align 2
  %284 = load i64, i64* %19, align 8
  %285 = call i8* @htonl(i64 %284)
  %286 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %287 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 8
  store i8* %285, i8** %290, align 8
  %291 = load i64, i64* %20, align 8
  %292 = call i8* @htonl(i64 %291)
  %293 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %294 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 7
  store i8* %292, i8** %297, align 8
  %298 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %299 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  store i32 80, i32* %302, align 4
  %303 = load i8, i8* %21, align 1
  %304 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %305 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  store i8 %303, i8* %308, align 8
  %309 = call i8* @htons(i32 32767)
  %310 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %311 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 6
  store i8* %309, i8** %314, align 8
  %315 = call i8* @htons(i32 0)
  %316 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %317 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 5
  store i8* %315, i8** %320, align 8
  %321 = call i8* @htons(i32 0)
  %322 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %323 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 4
  store i8* %321, i8** %326, align 8
  br label %359

327:                                              ; preds = %269
  %328 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %329 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %328, i32 0, i32 0
  %330 = load i16, i16* %329, align 4
  %331 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %332 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  store i16 %330, i16* %335, align 8
  %336 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %337 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %336, i32 0, i32 0
  %338 = load i16, i16* %337, align 4
  %339 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %340 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  store i16 %338, i16* %343, align 2
  %344 = load i64, i64* %18, align 8
  %345 = add i64 8, %344
  %346 = trunc i64 %345 to i32
  %347 = call i8* @htons(i32 %346)
  %348 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %349 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 3
  store i8* %347, i8** %352, align 8
  %353 = call i8* @htons(i32 0)
  %354 = load %struct.swrap_packet*, %struct.swrap_packet** %25, align 8
  %355 = getelementptr inbounds %struct.swrap_packet, %struct.swrap_packet* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  store i8* %353, i8** %358, align 8
  br label %359

359:                                              ; preds = %269, %327, %271
  %360 = load i8*, i8** %17, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %378

362:                                              ; preds = %359
  %363 = load i64, i64* %18, align 8
  %364 = icmp ugt i64 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %362
  %366 = load %struct.swrap_packet*, %struct.swrap_packet** %24, align 8
  %367 = bitcast %struct.swrap_packet* %366 to i8*
  store i8* %367, i8** %37, align 8
  %368 = load i64, i64* %28, align 8
  %369 = load i8*, i8** %37, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 %368
  store i8* %370, i8** %37, align 8
  %371 = load i64, i64* %29, align 8
  %372 = load i8*, i8** %37, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 %371
  store i8* %373, i8** %37, align 8
  %374 = load i8*, i8** %37, align 8
  %375 = load i8*, i8** %17, align 8
  %376 = load i64, i64* %18, align 8
  %377 = call i32 @memcpy(i8* %374, i8* %375, i64 %376)
  br label %378

378:                                              ; preds = %365, %362, %359
  %379 = load i64, i64* %26, align 8
  %380 = load i64, i64* %32, align 8
  %381 = sub i64 %379, %380
  %382 = load i64*, i64** %23, align 8
  store i64 %381, i64* %382, align 8
  %383 = load %struct.swrap_packet*, %struct.swrap_packet** %24, align 8
  store %struct.swrap_packet* %383, %struct.swrap_packet** %12, align 8
  br label %384

384:                                              ; preds = %378, %84
  %385 = load %struct.swrap_packet*, %struct.swrap_packet** %12, align 8
  ret %struct.swrap_packet* %385
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
