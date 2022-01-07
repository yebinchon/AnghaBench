; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_dump_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32, i32, %struct.TYPE_2__, %struct.sockaddr*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.timeval = type { i32 }
%struct.swrap_packet = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_info*, %struct.sockaddr*, i32, i8*, i64)* @swrap_dump_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swrap_dump_packet(%struct.socket_info* %0, %struct.sockaddr* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.socket_info*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval, align 4
  %19 = alloca %struct.swrap_packet*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.socket_info* %0, %struct.socket_info** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %17, align 4
  store i64 0, i64* %20, align 8
  %22 = call i8* (...) @socket_wrapper_pcap_file()
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %479

26:                                               ; preds = %5
  %27 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %31 [
    i32 147, label %30
  ]

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  br label %479

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %448 [
    i32 137, label %34
    i32 138, label %61
    i32 136, label %88
    i32 139, label %111
    i32 143, label %133
    i32 144, label %160
    i32 145, label %187
    i32 131, label %209
    i32 128, label %232
    i32 135, label %262
    i32 134, label %286
    i32 132, label %309
    i32 130, label %333
    i32 129, label %346
    i32 133, label %353
    i32 140, label %366
    i32 141, label %395
    i32 142, label %424
  ]

34:                                               ; preds = %32
  %35 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %36 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %479

41:                                               ; preds = %34
  %42 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %43 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %45, %struct.sockaddr_in** %11, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = bitcast %struct.sockaddr* %46 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %47, %struct.sockaddr_in** %12, align 8
  %48 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %49 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %53 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  store i8 2, i8* %16, align 1
  %56 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %57 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %449

61:                                               ; preds = %32
  %62 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %63 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SOCK_STREAM, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %479

68:                                               ; preds = %61
  %69 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %70 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %72, %struct.sockaddr_in** %12, align 8
  %73 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %74 = bitcast %struct.sockaddr* %73 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %11, align 8
  %75 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %76 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  %79 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %80 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %15, align 8
  store i8 18, i8* %16, align 1
  %83 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %84 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %449

88:                                               ; preds = %32
  %89 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %90 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SOCK_STREAM, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %479

95:                                               ; preds = %88
  %96 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %97 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %99, %struct.sockaddr_in** %12, align 8
  %100 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %101 = bitcast %struct.sockaddr* %100 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %101, %struct.sockaddr_in** %11, align 8
  %102 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %103 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 1
  store i64 %106, i64* %14, align 8
  %107 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %108 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %15, align 8
  store i8 2, i8* %16, align 1
  store i32 1, i32* %17, align 4
  br label %449

111:                                              ; preds = %32
  %112 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %113 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SOCK_STREAM, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %479

118:                                              ; preds = %111
  %119 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %120 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %122, %struct.sockaddr_in** %11, align 8
  %123 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %124 = bitcast %struct.sockaddr* %123 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %124, %struct.sockaddr_in** %12, align 8
  %125 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %126 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %14, align 8
  %129 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %130 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %15, align 8
  store i8 16, i8* %16, align 1
  br label %449

133:                                              ; preds = %32
  %134 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %135 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SOCK_STREAM, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %479

140:                                              ; preds = %133
  %141 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %142 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %144, %struct.sockaddr_in** %12, align 8
  %145 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %146 = bitcast %struct.sockaddr* %145 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %146, %struct.sockaddr_in** %11, align 8
  %147 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %148 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %14, align 8
  %151 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %152 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %15, align 8
  store i8 2, i8* %16, align 1
  %155 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %156 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %157, align 8
  br label %449

160:                                              ; preds = %32
  %161 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %162 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SOCK_STREAM, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %479

167:                                              ; preds = %160
  %168 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %169 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %171, %struct.sockaddr_in** %11, align 8
  %172 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %173 = bitcast %struct.sockaddr* %172 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %173, %struct.sockaddr_in** %12, align 8
  %174 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %175 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %14, align 8
  %178 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %179 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %15, align 8
  store i8 18, i8* %16, align 1
  %182 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %183 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  br label %449

187:                                              ; preds = %32
  %188 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %189 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SOCK_STREAM, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %479

194:                                              ; preds = %187
  %195 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %196 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %198, %struct.sockaddr_in** %12, align 8
  %199 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %200 = bitcast %struct.sockaddr* %199 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %200, %struct.sockaddr_in** %11, align 8
  %201 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %202 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %14, align 8
  %205 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %206 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %15, align 8
  store i8 16, i8* %16, align 1
  br label %449

209:                                              ; preds = %32
  %210 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %211 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %213, %struct.sockaddr_in** %11, align 8
  %214 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %215 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %214, i32 0, i32 3
  %216 = load %struct.sockaddr*, %struct.sockaddr** %215, align 8
  %217 = bitcast %struct.sockaddr* %216 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %217, %struct.sockaddr_in** %12, align 8
  %218 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %219 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %14, align 8
  %222 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %223 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %15, align 8
  store i8 24, i8* %16, align 1
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %228 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %226
  store i64 %231, i64* %229, align 8
  br label %449

232:                                              ; preds = %32
  %233 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %234 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %236, %struct.sockaddr_in** %12, align 8
  %237 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %238 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %237, i32 0, i32 3
  %239 = load %struct.sockaddr*, %struct.sockaddr** %238, align 8
  %240 = bitcast %struct.sockaddr* %239 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %240, %struct.sockaddr_in** %11, align 8
  %241 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %242 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SOCK_DGRAM, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %232
  %247 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %248 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %249 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %248, i32 0, i32 3
  %250 = load %struct.sockaddr*, %struct.sockaddr** %249, align 8
  %251 = load i8*, i8** %9, align 8
  %252 = load i64, i64* %10, align 8
  call void @swrap_dump_packet(%struct.socket_info* %247, %struct.sockaddr* %250, i32 129, i8* %251, i64 %252)
  br label %479

253:                                              ; preds = %232
  %254 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %255 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %14, align 8
  %258 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %259 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %15, align 8
  store i8 20, i8* %16, align 1
  br label %449

262:                                              ; preds = %32
  %263 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %264 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %266, %struct.sockaddr_in** %12, align 8
  %267 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %268 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %267, i32 0, i32 3
  %269 = load %struct.sockaddr*, %struct.sockaddr** %268, align 8
  %270 = bitcast %struct.sockaddr* %269 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %270, %struct.sockaddr_in** %11, align 8
  %271 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %272 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @SOCK_DGRAM, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %262
  br label %479

277:                                              ; preds = %262
  %278 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %279 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %14, align 8
  %282 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %283 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %15, align 8
  store i8 20, i8* %16, align 1
  br label %449

286:                                              ; preds = %32
  %287 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %288 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = inttoptr i64 %289 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %290, %struct.sockaddr_in** %12, align 8
  %291 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %292 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %291, i32 0, i32 3
  %293 = load %struct.sockaddr*, %struct.sockaddr** %292, align 8
  %294 = bitcast %struct.sockaddr* %293 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %294, %struct.sockaddr_in** %11, align 8
  %295 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %296 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %14, align 8
  %299 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %300 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %15, align 8
  store i8 24, i8* %16, align 1
  %303 = load i64, i64* %10, align 8
  %304 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %305 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, %303
  store i64 %308, i64* %306, align 8
  br label %449

309:                                              ; preds = %32
  %310 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %311 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = inttoptr i64 %312 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %313, %struct.sockaddr_in** %12, align 8
  %314 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %315 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %314, i32 0, i32 3
  %316 = load %struct.sockaddr*, %struct.sockaddr** %315, align 8
  %317 = bitcast %struct.sockaddr* %316 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %317, %struct.sockaddr_in** %11, align 8
  %318 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %319 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @SOCK_DGRAM, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %309
  br label %479

324:                                              ; preds = %309
  %325 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %326 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %14, align 8
  %329 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %330 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %15, align 8
  store i8 20, i8* %16, align 1
  br label %449

333:                                              ; preds = %32
  %334 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %335 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = inttoptr i64 %336 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %337, %struct.sockaddr_in** %11, align 8
  %338 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %339 = bitcast %struct.sockaddr* %338 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %339, %struct.sockaddr_in** %12, align 8
  %340 = load i64, i64* %10, align 8
  %341 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %342 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = add i64 %344, %340
  store i64 %345, i64* %343, align 8
  br label %449

346:                                              ; preds = %32
  %347 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %348 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %350, %struct.sockaddr_in** %12, align 8
  %351 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %352 = bitcast %struct.sockaddr* %351 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %352, %struct.sockaddr_in** %11, align 8
  store i32 1, i32* %17, align 4
  br label %449

353:                                              ; preds = %32
  %354 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %355 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = inttoptr i64 %356 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %357, %struct.sockaddr_in** %12, align 8
  %358 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %359 = bitcast %struct.sockaddr* %358 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %359, %struct.sockaddr_in** %11, align 8
  %360 = load i64, i64* %10, align 8
  %361 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %362 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = add i64 %364, %360
  store i64 %365, i64* %363, align 8
  br label %449

366:                                              ; preds = %32
  %367 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %368 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @SOCK_STREAM, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %366
  br label %479

373:                                              ; preds = %366
  %374 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %375 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %374, i32 0, i32 4
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %377, %struct.sockaddr_in** %11, align 8
  %378 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %379 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %378, i32 0, i32 3
  %380 = load %struct.sockaddr*, %struct.sockaddr** %379, align 8
  %381 = bitcast %struct.sockaddr* %380 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %381, %struct.sockaddr_in** %12, align 8
  %382 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %383 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %14, align 8
  %386 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %387 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %15, align 8
  store i8 17, i8* %16, align 1
  %390 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %391 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %392, align 8
  br label %449

395:                                              ; preds = %32
  %396 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %397 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @SOCK_STREAM, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %395
  br label %479

402:                                              ; preds = %395
  %403 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %404 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = inttoptr i64 %405 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %406, %struct.sockaddr_in** %12, align 8
  %407 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %408 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %407, i32 0, i32 3
  %409 = load %struct.sockaddr*, %struct.sockaddr** %408, align 8
  %410 = bitcast %struct.sockaddr* %409 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %410, %struct.sockaddr_in** %11, align 8
  %411 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %412 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %14, align 8
  %415 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %416 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %15, align 8
  store i8 17, i8* %16, align 1
  %419 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %420 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %421, align 8
  br label %449

424:                                              ; preds = %32
  %425 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %426 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @SOCK_STREAM, align 4
  %429 = icmp ne i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %424
  br label %479

431:                                              ; preds = %424
  %432 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %433 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %432, i32 0, i32 4
  %434 = load i64, i64* %433, align 8
  %435 = inttoptr i64 %434 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %435, %struct.sockaddr_in** %11, align 8
  %436 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %437 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %436, i32 0, i32 3
  %438 = load %struct.sockaddr*, %struct.sockaddr** %437, align 8
  %439 = bitcast %struct.sockaddr* %438 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %439, %struct.sockaddr_in** %12, align 8
  %440 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %441 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %14, align 8
  %444 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %445 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %15, align 8
  store i8 16, i8* %16, align 1
  br label %449

448:                                              ; preds = %32
  br label %479

449:                                              ; preds = %431, %402, %373, %353, %346, %333, %324, %286, %277, %253, %209, %194, %167, %140, %118, %95, %68, %41
  %450 = call i32 @swrapGetTimeOfDay(%struct.timeval* %18)
  %451 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %452 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %453 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %454 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i8*, i8** %9, align 8
  %457 = load i64, i64* %10, align 8
  %458 = load i64, i64* %14, align 8
  %459 = load i64, i64* %15, align 8
  %460 = load i8, i8* %16, align 1
  %461 = load i32, i32* %17, align 4
  %462 = call %struct.swrap_packet* @swrap_packet_init(%struct.timeval* %18, %struct.sockaddr_in* %451, %struct.sockaddr_in* %452, i32 %455, i8* %456, i64 %457, i64 %458, i64 %459, i8 zeroext %460, i32 %461, i64* %20)
  store %struct.swrap_packet* %462, %struct.swrap_packet** %19, align 8
  %463 = load %struct.swrap_packet*, %struct.swrap_packet** %19, align 8
  %464 = icmp ne %struct.swrap_packet* %463, null
  br i1 %464, label %466, label %465

465:                                              ; preds = %449
  br label %479

466:                                              ; preds = %449
  %467 = load i8*, i8** %13, align 8
  %468 = call i32 @swrap_get_pcap_fd(i8* %467)
  store i32 %468, i32* %21, align 4
  %469 = load i32, i32* %21, align 4
  %470 = icmp ne i32 %469, -1
  br i1 %470, label %471, label %476

471:                                              ; preds = %466
  %472 = load i32, i32* %21, align 4
  %473 = load %struct.swrap_packet*, %struct.swrap_packet** %19, align 8
  %474 = load i64, i64* %20, align 8
  %475 = call i32 @write(i32 %472, %struct.swrap_packet* %473, i64 %474)
  br label %476

476:                                              ; preds = %471, %466
  %477 = load %struct.swrap_packet*, %struct.swrap_packet** %19, align 8
  %478 = call i32 @free(%struct.swrap_packet* %477)
  br label %479

479:                                              ; preds = %476, %465, %448, %430, %401, %372, %323, %276, %246, %193, %166, %139, %117, %94, %67, %40, %31, %25
  ret void
}

declare dso_local i8* @socket_wrapper_pcap_file(...) #1

declare dso_local i32 @swrapGetTimeOfDay(%struct.timeval*) #1

declare dso_local %struct.swrap_packet* @swrap_packet_init(%struct.timeval*, %struct.sockaddr_in*, %struct.sockaddr_in*, i32, i8*, i64, i64, i64, i8 zeroext, i32, i64*) #1

declare dso_local i32 @swrap_get_pcap_fd(i8*) #1

declare dso_local i32 @write(i32, %struct.swrap_packet*, i64) #1

declare dso_local i32 @free(%struct.swrap_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
