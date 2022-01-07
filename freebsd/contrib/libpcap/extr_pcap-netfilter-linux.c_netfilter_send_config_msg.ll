; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_send_config_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_send_config_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.my_nfattr = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32, i64, i32, i32, i64 }
%struct.nfgenmsg = type { i32, i32, i32 }
%struct.sockaddr_nl = type { i64, i64 }
%struct.nfattr = type { i32, i32 }
%struct.sockaddr = type { i32 }

@netfilter_send_config_msg.seq_id = internal global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i64 0, align 8
@NLMSG_DONE = common dso_local global i64 0, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32, i32, i32, %struct.my_nfattr*)* @netfilter_send_config_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfilter_send_config_msg(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.my_nfattr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.my_nfattr*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca %struct.nfgenmsg*, align 8
  %17 = alloca %struct.sockaddr_nl, align 8
  %18 = alloca %struct.nfattr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.my_nfattr* %5, %struct.my_nfattr** %13, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %22 = bitcast i8* %21 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %22, %struct.nlmsghdr** %15, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 32
  %25 = bitcast i8* %24 to %struct.nfgenmsg*
  store %struct.nfgenmsg* %25, %struct.nfgenmsg** %16, align 8
  %26 = load i32, i32* @netfilter_send_config_msg.seq_id, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = call i32 @time(i32* null)
  store i32 %29, i32* @netfilter_send_config_msg.seq_id, align 4
  br label %30

30:                                               ; preds = %28, %6
  %31 = load i32, i32* @netfilter_send_config_msg.seq_id, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* @netfilter_send_config_msg.seq_id, align 4
  %33 = call i32 @NLMSG_LENGTH(i32 12)
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %38 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @NLM_F_REQUEST, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @NLM_F_ACK, align 4
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %39, %46
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %49 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %51 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @netfilter_send_config_msg.seq_id, align 4
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %57 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @NFNETLINK_V0, align 4
  %59 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %60 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %64 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.my_nfattr*, %struct.my_nfattr** %13, align 8
  %66 = icmp ne %struct.my_nfattr* %65, null
  br i1 %66, label %67, label %107

67:                                               ; preds = %45
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %70 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @NLMSG_ALIGN(i32 %71)
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = bitcast i8* %73 to %struct.nfattr*
  store %struct.nfattr* %74, %struct.nfattr** %18, align 8
  %75 = load %struct.my_nfattr*, %struct.my_nfattr** %13, align 8
  %76 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfattr*, %struct.nfattr** %18, align 8
  %79 = getelementptr inbounds %struct.nfattr, %struct.nfattr* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.my_nfattr*, %struct.my_nfattr** %13, align 8
  %81 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NFA_LENGTH(i32 %82)
  %84 = load %struct.nfattr*, %struct.nfattr** %18, align 8
  %85 = getelementptr inbounds %struct.nfattr, %struct.nfattr* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nfattr*, %struct.nfattr** %18, align 8
  %87 = call i32 @NFA_DATA(%struct.nfattr* %86)
  %88 = load %struct.my_nfattr*, %struct.my_nfattr** %13, align 8
  %89 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.my_nfattr*, %struct.my_nfattr** %13, align 8
  %92 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32 %87, i32 %90, i32 %93)
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %96 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @NLMSG_ALIGN(i32 %97)
  %99 = load %struct.nfattr*, %struct.nfattr** %18, align 8
  %100 = getelementptr inbounds %struct.nfattr, %struct.nfattr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @NFA_ALIGN(i32 %101)
  %103 = add nsw i64 %98, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %106 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %67, %45
  %108 = call i32 @memset(%struct.sockaddr_nl* %17, i32 0, i32 16)
  %109 = load i64, i64* @AF_NETLINK, align 8
  %110 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %17, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %115 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %116 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = bitcast %struct.sockaddr_nl* %17 to %struct.sockaddr*
  %119 = call i32 @sendto(i32 %113, %struct.nlmsghdr* %114, i32 %117, i32 0, %struct.sockaddr* %118, i32 16)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  store i32 -1, i32* %7, align 4
  br label %232

122:                                              ; preds = %107
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %232

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %230, %126
  store i32 16, i32* %19, align 4
  br label %128

128:                                              ; preds = %142, %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %133 = bitcast %struct.sockaddr_nl* %17 to %struct.sockaddr*
  %134 = call i32 @recvfrom(i32 %131, i8* %132, i32 1024, i32 0, %struct.sockaddr* %133, i32* %19)
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %20, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @errno, align 4
  %140 = load i32, i32* @EINTR, align 4
  %141 = icmp eq i32 %139, %140
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i1 [ false, %135 ], [ %141, %138 ]
  br i1 %143, label %128, label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %20, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* %20, align 4
  store i32 %148, i32* %7, align 4
  br label %232

149:                                              ; preds = %144
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ne i64 %151, 16
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %17, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AF_NETLINK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153, %149
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %232

160:                                              ; preds = %153
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %162 = bitcast i8* %161 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %162, %struct.nlmsghdr** %15, align 8
  %163 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %17, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @netfilter_send_config_msg.seq_id, align 4
  %168 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %169 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %160
  br label %230

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %225, %173
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = call i64 @NLMSG_SPACE(i32 0)
  %178 = icmp sge i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = call i64 @NLMSG_OK(%struct.nlmsghdr* %180, i64 %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %179, %174
  %186 = phi i1 [ false, %174 ], [ %184, %179 ]
  br i1 %186, label %187, label %229

187:                                              ; preds = %185
  %188 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %189 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NLMSG_ERROR, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %206, label %193

193:                                              ; preds = %187
  %194 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %195 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NLMSG_DONE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %193
  %200 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %201 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @NLM_F_MULTI, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %199, %187
  %207 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %208 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = call i64 @NLMSG_ALIGN(i32 4)
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @EBADMSG, align 4
  store i32 %214, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %232

215:                                              ; preds = %206
  %216 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %217 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %216)
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* @errno, align 4
  %221 = load i32, i32* @errno, align 4
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 0, i32 -1
  store i32 %224, i32* %7, align 4
  br label %232

225:                                              ; preds = %199, %193
  %226 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %227 = load i32, i32* %20, align 4
  %228 = call %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr* %226, i32 %227)
  store %struct.nlmsghdr* %228, %struct.nlmsghdr** %15, align 8
  br label %174

229:                                              ; preds = %185
  br label %230

230:                                              ; preds = %229, %172
  br i1 true, label %127, label %231

231:                                              ; preds = %230
  store i32 -1, i32* %7, align 4
  br label %232

232:                                              ; preds = %231, %215, %213, %158, %147, %125, %121
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @NLMSG_LENGTH(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @NFA_LENGTH(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @NFA_DATA(%struct.nfattr*) #1

declare dso_local i64 @NFA_ALIGN(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_nl*, i32, i32) #1

declare dso_local i32 @sendto(i32, %struct.nlmsghdr*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @NLMSG_SPACE(i32) #1

declare dso_local i64 @NLMSG_OK(%struct.nlmsghdr*, i64) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
