; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"direction applied to 'proto'\00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@LLCSAP_ISONS = common dso_local global i32 0, align 4
@OR_LINKPL_NOSNAP = common dso_local global i32 0, align 4
@ISO10589_ISIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"arp does not encapsulate another protocol\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"rarp does not encapsulate another protocol\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"atalk encapsulation is not specifiable\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"decnet encapsulation is not specifiable\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"sca does not encapsulate another protocol\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"lat does not encapsulate another protocol\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"moprc does not encapsulate another protocol\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"mopdl does not encapsulate another protocol\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"'udp proto' is bogus\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"'tcp proto' is bogus\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"'sctp proto' is bogus\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"'icmp proto' is bogus\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"'igmp proto' is bogus\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"'igrp proto' is bogus\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"'pim proto' is bogus\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"'vrrp proto' is bogus\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"'carp proto' is bogus\00", align 1
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_FRAGMENT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"'icmp6 proto' is bogus\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"'ah proto' is bogus\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"'stp proto' is bogus\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"'ipx proto' is bogus\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"'netbeui proto' is bogus\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"'radio proto' is bogus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_7__*, i32, i32, i32)* @gen_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_proto(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca %struct.block*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 152
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = call i32 @bpf_error(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %211 [
    i32 152, label %20
    i32 146, label %33
    i32 142, label %47
    i32 143, label %90
    i32 156, label %104
    i32 134, label %107
    i32 155, label %110
    i32 153, label %113
    i32 133, label %116
    i32 141, label %119
    i32 138, label %122
    i32 139, label %125
    i32 140, label %128
    i32 129, label %132
    i32 130, label %135
    i32 132, label %138
    i32 150, label %141
    i32 148, label %144
    i32 147, label %147
    i32 136, label %150
    i32 128, label %153
    i32 154, label %156
    i32 145, label %159
    i32 149, label %190
    i32 157, label %193
    i32 151, label %196
    i32 131, label %199
    i32 144, label %202
    i32 137, label %205
    i32 135, label %208
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.block* @gen_proto(%struct.TYPE_7__* %21, i32 %22, i32 146, i32 %23)
  store %struct.block* %24, %struct.block** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.block* @gen_proto(%struct.TYPE_7__* %25, i32 %26, i32 145, i32 %27)
  store %struct.block* %28, %struct.block** %11, align 8
  %29 = load %struct.block*, %struct.block** %10, align 8
  %30 = load %struct.block*, %struct.block** %11, align 8
  %31 = call i32 @gen_or(%struct.block* %29, %struct.block* %30)
  %32 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %32, %struct.block** %5, align 8
  br label %213

33:                                               ; preds = %18
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = load i32, i32* @ETHERTYPE_IP, align 4
  %36 = call %struct.block* @gen_linktype(%struct.TYPE_7__* %34, i32 %35)
  store %struct.block* %36, %struct.block** %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = load i32, i32* @OR_LINKPL, align 4
  %39 = load i32, i32* @BPF_B, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %37, i32 %38, i32 9, i32 %39, i64 %41)
  store %struct.block* %42, %struct.block** %11, align 8
  %43 = load %struct.block*, %struct.block** %10, align 8
  %44 = load %struct.block*, %struct.block** %11, align 8
  %45 = call i32 @gen_and(%struct.block* %43, %struct.block* %44)
  %46 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %46, %struct.block** %5, align 8
  br label %213

47:                                               ; preds = %18
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %76 [
    i32 158, label %51
    i32 159, label %59
  ]

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load i32, i32* @OR_LINKHDR, align 4
  %54 = load i32, i32* @BPF_H, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 768, %55
  %57 = sext i32 %56 to i64
  %58 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %52, i32 %53, i32 2, i32 %54, i64 %57)
  store %struct.block* %58, %struct.block** %5, align 8
  br label %213

59:                                               ; preds = %47
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load i32, i32* @LLCSAP_ISONS, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* @LLCSAP_ISONS, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.block* @gen_linktype(%struct.TYPE_7__* %60, i32 %64)
  store %struct.block* %65, %struct.block** %10, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = load i32, i32* @OR_LINKPL_NOSNAP, align 4
  %68 = load i32, i32* @BPF_B, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %66, i32 %67, i32 1, i32 %68, i64 %70)
  store %struct.block* %71, %struct.block** %11, align 8
  %72 = load %struct.block*, %struct.block** %10, align 8
  %73 = load %struct.block*, %struct.block** %11, align 8
  %74 = call i32 @gen_and(%struct.block* %72, %struct.block* %73)
  %75 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %75, %struct.block** %5, align 8
  br label %213

76:                                               ; preds = %47
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = load i32, i32* @LLCSAP_ISONS, align 4
  %79 = call %struct.block* @gen_linktype(%struct.TYPE_7__* %77, i32 %78)
  store %struct.block* %79, %struct.block** %10, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = load i32, i32* @OR_LINKPL_NOSNAP, align 4
  %82 = load i32, i32* @BPF_B, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %80, i32 %81, i32 0, i32 %82, i64 %84)
  store %struct.block* %85, %struct.block** %11, align 8
  %86 = load %struct.block*, %struct.block** %10, align 8
  %87 = load %struct.block*, %struct.block** %11, align 8
  %88 = call i32 @gen_and(%struct.block* %86, %struct.block* %87)
  %89 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %89, %struct.block** %5, align 8
  br label %213

90:                                               ; preds = %18
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = load i32, i32* @ISO10589_ISIS, align 4
  %93 = call %struct.block* @gen_proto(%struct.TYPE_7__* %91, i32 %92, i32 142, i32 152)
  store %struct.block* %93, %struct.block** %10, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = load i32, i32* @OR_LINKPL_NOSNAP, align 4
  %96 = load i32, i32* @BPF_B, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %94, i32 %95, i32 4, i32 %96, i64 %98)
  store %struct.block* %99, %struct.block** %11, align 8
  %100 = load %struct.block*, %struct.block** %10, align 8
  %101 = load %struct.block*, %struct.block** %11, align 8
  %102 = call i32 @gen_and(%struct.block* %100, %struct.block* %101)
  %103 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %103, %struct.block** %5, align 8
  br label %213

104:                                              ; preds = %18
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = call i32 @bpf_error(%struct.TYPE_7__* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %18, %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = call i32 @bpf_error(%struct.TYPE_7__* %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %18, %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = call i32 @bpf_error(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %18, %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = call i32 @bpf_error(%struct.TYPE_7__* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %18, %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = call i32 @bpf_error(%struct.TYPE_7__* %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %18, %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = call i32 @bpf_error(%struct.TYPE_7__* %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %18, %119
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = call i32 @bpf_error(%struct.TYPE_7__* %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %18, %122
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = call i32 @bpf_error(%struct.TYPE_7__* %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %128

128:                                              ; preds = %18, %125
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call %struct.block* @gen_linktype(%struct.TYPE_7__* %129, i32 %130)
  store %struct.block* %131, %struct.block** %5, align 8
  br label %213

132:                                              ; preds = %18
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = call i32 @bpf_error(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %135

135:                                              ; preds = %18, %132
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = call i32 @bpf_error(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %138

138:                                              ; preds = %18, %135
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = call i32 @bpf_error(%struct.TYPE_7__* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %141

141:                                              ; preds = %18, %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = call i32 @bpf_error(%struct.TYPE_7__* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %144

144:                                              ; preds = %18, %141
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = call i32 @bpf_error(%struct.TYPE_7__* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %147

147:                                              ; preds = %18, %144
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = call i32 @bpf_error(%struct.TYPE_7__* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %150

150:                                              ; preds = %18, %147
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = call i32 @bpf_error(%struct.TYPE_7__* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %153

153:                                              ; preds = %18, %150
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = call i32 @bpf_error(%struct.TYPE_7__* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %156

156:                                              ; preds = %18, %153
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %158 = call i32 @bpf_error(%struct.TYPE_7__* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %159

159:                                              ; preds = %18, %156
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %162 = call %struct.block* @gen_linktype(%struct.TYPE_7__* %160, i32 %161)
  store %struct.block* %162, %struct.block** %10, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = load i32, i32* @OR_LINKPL, align 4
  %165 = load i32, i32* @BPF_B, align 4
  %166 = load i64, i64* @IPPROTO_FRAGMENT, align 8
  %167 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %163, i32 %164, i32 6, i32 %165, i64 %166)
  store %struct.block* %167, %struct.block** %12, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = load i32, i32* @OR_LINKPL, align 4
  %170 = load i32, i32* @BPF_B, align 4
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %168, i32 %169, i32 40, i32 %170, i64 %172)
  store %struct.block* %173, %struct.block** %11, align 8
  %174 = load %struct.block*, %struct.block** %12, align 8
  %175 = load %struct.block*, %struct.block** %11, align 8
  %176 = call i32 @gen_and(%struct.block* %174, %struct.block* %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = load i32, i32* @OR_LINKPL, align 4
  %179 = load i32, i32* @BPF_B, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = call %struct.block* @gen_cmp(%struct.TYPE_7__* %177, i32 %178, i32 6, i32 %179, i64 %181)
  store %struct.block* %182, %struct.block** %12, align 8
  %183 = load %struct.block*, %struct.block** %12, align 8
  %184 = load %struct.block*, %struct.block** %11, align 8
  %185 = call i32 @gen_or(%struct.block* %183, %struct.block* %184)
  %186 = load %struct.block*, %struct.block** %10, align 8
  %187 = load %struct.block*, %struct.block** %11, align 8
  %188 = call i32 @gen_and(%struct.block* %186, %struct.block* %187)
  %189 = load %struct.block*, %struct.block** %11, align 8
  store %struct.block* %189, %struct.block** %5, align 8
  br label %213

190:                                              ; preds = %18
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = call i32 @bpf_error(%struct.TYPE_7__* %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %193

193:                                              ; preds = %18, %190
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = call i32 @bpf_error(%struct.TYPE_7__* %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %196

196:                                              ; preds = %18, %193
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = call i32 @bpf_error(%struct.TYPE_7__* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %199

199:                                              ; preds = %18, %196
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = call i32 @bpf_error(%struct.TYPE_7__* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %202

202:                                              ; preds = %18, %199
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = call i32 @bpf_error(%struct.TYPE_7__* %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  br label %205

205:                                              ; preds = %18, %202
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = call i32 @bpf_error(%struct.TYPE_7__* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  br label %208

208:                                              ; preds = %18, %205
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = call i32 @bpf_error(%struct.TYPE_7__* %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %211

211:                                              ; preds = %18, %208
  %212 = call i32 (...) @abort() #3
  unreachable

213:                                              ; preds = %159, %128, %90, %76, %59, %51, %33, %20
  %214 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %214
}

declare dso_local i32 @bpf_error(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_linktype(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_7__*, i32, i32, i32, i64) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
