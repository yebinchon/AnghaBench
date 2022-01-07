; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_packet.c_decode_udp_ip_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_packet.c_decode_udp_ip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.ip = type { i32, i32 }
%struct.udphdr = type { i32, i32, i32 }

@decode_udp_ip_header.ip_packets_seen = internal global i32 0, align 4
@decode_udp_ip_header.ip_packets_bad_checksum = internal global i32 0, align 4
@decode_udp_ip_header.udp_packets_seen = internal global i32 0, align 4
@decode_udp_ip_header.udp_packets_bad_checksum = internal global i32 0, align 4
@decode_udp_ip_header.udp_packets_length_checked = internal global i32 0, align 4
@decode_udp_ip_header.udp_packets_length_overflow = internal global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%d bad IP checksums seen in %d packets\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ip length %d disagrees with bytes received %d.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%d udp packets in %d too long - dropped\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"accepting packet with data after udp payload.\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%d bad udp checksums in %d packets\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_udp_ip_header(i8* %0, i32 %1, %struct.sockaddr_in* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip*, align 8
  %13 = alloca %struct.udphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = shl i32 %24, 2
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.ip*
  store %struct.ip* %30, %struct.ip** %12, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to %struct.udphdr*
  store %struct.udphdr* %38, %struct.udphdr** %13, align 8
  %39 = load i32, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @checksum(i8* %44, i32 %45, i32 0)
  %47 = call i64 @wrapsum(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %5
  %50 = load i32, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  %52 = load i32, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  %53 = icmp sgt i32 %52, 4
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  %59 = load i32, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  %60 = sdiv i32 %58, %59
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  %64 = load i32, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  %65 = call i32 @note(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  store i32 0, i32* @decode_udp_ip_header.ip_packets_bad_checksum, align 4
  store i32 0, i32* @decode_udp_ip_header.ip_packets_seen, align 4
  br label %66

66:                                               ; preds = %62, %57, %54, %49
  store i32 -1, i32* %6, align 4
  br label %210

67:                                               ; preds = %5
  %68 = load %struct.ip*, %struct.ip** %12, align 8
  %69 = getelementptr inbounds %struct.ip, %struct.ip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohs(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.ip*, %struct.ip** %12, align 8
  %76 = getelementptr inbounds %struct.ip, %struct.ip* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohs(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 1
  %84 = load %struct.ip*, %struct.ip** %12, align 8
  %85 = getelementptr inbounds %struct.ip, %struct.ip* %84, i32 0, i32 0
  %86 = call i32 @memcpy(i32* %83, i32* %85, i32 4)
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %150, label %89

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 12
  store i8* %97, i8** %10, align 8
  %98 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %99 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ntohs(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, 12
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = icmp ugt i8* %110, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %89
  %120 = load i32, i32* @decode_udp_ip_header.udp_packets_length_overflow, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @decode_udp_ip_header.udp_packets_length_overflow, align 4
  %122 = load i32, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  %123 = icmp sgt i32 %122, 4
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  %126 = load i32, i32* @decode_udp_ip_header.udp_packets_length_overflow, align 4
  %127 = sdiv i32 %125, %126
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @decode_udp_ip_header.udp_packets_length_overflow, align 4
  %131 = load i32, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  %132 = call i32 @note(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131)
  store i32 0, i32* @decode_udp_ip_header.udp_packets_length_checked, align 4
  store i32 0, i32* @decode_udp_ip_header.udp_packets_length_overflow, align 4
  br label %133

133:                                              ; preds = %129, %124, %119
  store i32 -1, i32* %6, align 4
  br label %210

134:                                              ; preds = %89
  %135 = load i32, i32* %17, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = icmp ne i8* %138, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %134
  %148 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %134
  br label %150

150:                                              ; preds = %149, %81
  %151 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %152 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %16, align 4
  %154 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %155 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %154, i32 0, i32 0
  store i32 0, i32* %155, align 4
  %156 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %157 = bitcast %struct.udphdr* %156 to i8*
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.ip*, %struct.ip** %12, align 8
  %161 = getelementptr inbounds %struct.ip, %struct.ip* %160, i32 0, i32 0
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* @IPPROTO_UDP, align 4
  %164 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %165 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ntohs(i32 %166)
  %168 = add nsw i32 %163, %167
  %169 = call i32 @checksum(i8* %162, i32 8, i32 %168)
  %170 = call i32 @checksum(i8* %158, i32 %159, i32 %169)
  %171 = call i32 @checksum(i8* %157, i32 12, i32 %170)
  %172 = call i64 @wrapsum(i32 %171)
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %150
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load i32, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  %185 = load i32, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  %186 = icmp sgt i32 %185, 4
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = load i32, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  %192 = load i32, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  %193 = sdiv i32 %191, %192
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  %197 = load i32, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  %198 = call i32 @note(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197)
  store i32 0, i32* @decode_udp_ip_header.udp_packets_bad_checksum, align 4
  store i32 0, i32* @decode_udp_ip_header.udp_packets_seen, align 4
  br label %199

199:                                              ; preds = %195, %190, %187, %182
  store i32 -1, i32* %6, align 4
  br label %210

200:                                              ; preds = %178, %150
  %201 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %202 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %201, i32 0, i32 0
  %203 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %204 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %203, i32 0, i32 1
  %205 = call i32 @memcpy(i32* %202, i32* %204, i32 4)
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 %207, 12
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %200, %199, %133, %66
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i64 @wrapsum(i32) #1

declare dso_local i32 @checksum(i8*, i32, i32) #1

declare dso_local i32 @note(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
