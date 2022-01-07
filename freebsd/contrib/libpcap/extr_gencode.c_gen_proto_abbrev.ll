; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_proto_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_proto_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@Q_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i32 0, align 4
@ETHERTYPE_REVARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"link layer applied in wrong context\00", align 1
@ETHERTYPE_ATALK = common dso_local global i32 0, align 4
@ETHERTYPE_AARP = common dso_local global i32 0, align 4
@ETHERTYPE_DN = common dso_local global i32 0, align 4
@ETHERTYPE_SCA = common dso_local global i32 0, align 4
@ETHERTYPE_LAT = common dso_local global i32 0, align 4
@ETHERTYPE_MOPDL = common dso_local global i32 0, align 4
@ETHERTYPE_MOPRC = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@LLCSAP_ISONS = common dso_local global i32 0, align 4
@ISO9542_ESIS = common dso_local global i32 0, align 4
@ISO10589_ISIS = common dso_local global i32 0, align 4
@ISIS_L1_LAN_IIH = common dso_local global i32 0, align 4
@ISIS_PTP_IIH = common dso_local global i32 0, align 4
@ISIS_L1_LSP = common dso_local global i32 0, align 4
@ISIS_L1_CSNP = common dso_local global i32 0, align 4
@ISIS_L1_PSNP = common dso_local global i32 0, align 4
@ISIS_L2_LAN_IIH = common dso_local global i32 0, align 4
@ISIS_L2_LSP = common dso_local global i32 0, align 4
@ISIS_L2_CSNP = common dso_local global i32 0, align 4
@ISIS_L2_PSNP = common dso_local global i32 0, align 4
@ISO8473_CLNP = common dso_local global i32 0, align 4
@LLCSAP_8021D = common dso_local global i32 0, align 4
@LLCSAP_IPX = common dso_local global i32 0, align 4
@LLCSAP_NETBEUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"'radio' is not a valid protocol type\00", align 1
@IPPROTO_AH = common dso_local global i32 0, align 4
@IPPROTO_CARP = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i32 0, align 4
@IPPROTO_IGRP = common dso_local global i32 0, align 4
@IPPROTO_PIM = common dso_local global i32 0, align 4
@IPPROTO_VRRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_proto_abbrev(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %327 [
    i32 132, label %8
    i32 130, label %20
    i32 129, label %32
    i32 157, label %44
    i32 155, label %49
    i32 154, label %53
    i32 136, label %57
    i32 128, label %67
    i32 162, label %71
    i32 153, label %75
    i32 164, label %79
    i32 134, label %83
    i32 140, label %87
    i32 163, label %90
    i32 166, label %94
    i32 160, label %98
    i32 133, label %102
    i32 141, label %106
    i32 139, label %110
    i32 138, label %114
    i32 152, label %118
    i32 156, label %122
    i32 165, label %126
    i32 158, label %136
    i32 142, label %146
    i32 159, label %150
    i32 150, label %155
    i32 147, label %160
    i32 146, label %193
    i32 148, label %226
    i32 145, label %245
    i32 143, label %257
    i32 149, label %283
    i32 144, label %295
    i32 161, label %307
    i32 131, label %312
    i32 151, label %316
    i32 137, label %320
    i32 135, label %324
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @IPPROTO_SCTP, align 4
  %11 = load i32, i32* @Q_DEFAULT, align 4
  %12 = call %struct.block* @gen_proto(i32* %9, i32 %10, i32 153, i32 %11)
  store %struct.block* %12, %struct.block** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @IPPROTO_SCTP, align 4
  %15 = load i32, i32* @Q_DEFAULT, align 4
  %16 = call %struct.block* @gen_proto(i32* %13, i32 %14, i32 152, i32 %15)
  store %struct.block* %16, %struct.block** %5, align 8
  %17 = load %struct.block*, %struct.block** %5, align 8
  %18 = load %struct.block*, %struct.block** %6, align 8
  %19 = call i32 @gen_or(%struct.block* %17, %struct.block* %18)
  br label %329

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @IPPROTO_TCP, align 4
  %23 = load i32, i32* @Q_DEFAULT, align 4
  %24 = call %struct.block* @gen_proto(i32* %21, i32 %22, i32 153, i32 %23)
  store %struct.block* %24, %struct.block** %6, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @IPPROTO_TCP, align 4
  %27 = load i32, i32* @Q_DEFAULT, align 4
  %28 = call %struct.block* @gen_proto(i32* %25, i32 %26, i32 152, i32 %27)
  store %struct.block* %28, %struct.block** %5, align 8
  %29 = load %struct.block*, %struct.block** %5, align 8
  %30 = load %struct.block*, %struct.block** %6, align 8
  %31 = call i32 @gen_or(%struct.block* %29, %struct.block* %30)
  br label %329

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @IPPROTO_UDP, align 4
  %35 = load i32, i32* @Q_DEFAULT, align 4
  %36 = call %struct.block* @gen_proto(i32* %33, i32 %34, i32 153, i32 %35)
  store %struct.block* %36, %struct.block** %6, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @IPPROTO_UDP, align 4
  %39 = load i32, i32* @Q_DEFAULT, align 4
  %40 = call %struct.block* @gen_proto(i32* %37, i32 %38, i32 152, i32 %39)
  store %struct.block* %40, %struct.block** %5, align 8
  %41 = load %struct.block*, %struct.block** %5, align 8
  %42 = load %struct.block*, %struct.block** %6, align 8
  %43 = call i32 @gen_or(%struct.block* %41, %struct.block* %42)
  br label %329

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @IPPROTO_ICMP, align 4
  %47 = load i32, i32* @Q_DEFAULT, align 4
  %48 = call %struct.block* @gen_proto(i32* %45, i32 %46, i32 153, i32 %47)
  store %struct.block* %48, %struct.block** %6, align 8
  br label %329

49:                                               ; preds = %2
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @Q_DEFAULT, align 4
  %52 = call %struct.block* @gen_proto(i32* %50, i32 2, i32 153, i32 %51)
  store %struct.block* %52, %struct.block** %6, align 8
  br label %329

53:                                               ; preds = %2
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @Q_DEFAULT, align 4
  %56 = call %struct.block* @gen_proto(i32* %54, i32 9, i32 153, i32 %55)
  store %struct.block* %56, %struct.block** %6, align 8
  br label %329

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @Q_DEFAULT, align 4
  %60 = call %struct.block* @gen_proto(i32* %58, i32 103, i32 153, i32 %59)
  store %struct.block* %60, %struct.block** %6, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @Q_DEFAULT, align 4
  %63 = call %struct.block* @gen_proto(i32* %61, i32 103, i32 152, i32 %62)
  store %struct.block* %63, %struct.block** %5, align 8
  %64 = load %struct.block*, %struct.block** %5, align 8
  %65 = load %struct.block*, %struct.block** %6, align 8
  %66 = call i32 @gen_or(%struct.block* %64, %struct.block* %65)
  br label %329

67:                                               ; preds = %2
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @Q_DEFAULT, align 4
  %70 = call %struct.block* @gen_proto(i32* %68, i32 112, i32 153, i32 %69)
  store %struct.block* %70, %struct.block** %6, align 8
  br label %329

71:                                               ; preds = %2
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @Q_DEFAULT, align 4
  %74 = call %struct.block* @gen_proto(i32* %72, i32 112, i32 153, i32 %73)
  store %struct.block* %74, %struct.block** %6, align 8
  br label %329

75:                                               ; preds = %2
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @ETHERTYPE_IP, align 4
  %78 = call %struct.block* @gen_linktype(i32* %76, i32 %77)
  store %struct.block* %78, %struct.block** %6, align 8
  br label %329

79:                                               ; preds = %2
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @ETHERTYPE_ARP, align 4
  %82 = call %struct.block* @gen_linktype(i32* %80, i32 %81)
  store %struct.block* %82, %struct.block** %6, align 8
  br label %329

83:                                               ; preds = %2
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @ETHERTYPE_REVARP, align 4
  %86 = call %struct.block* @gen_linktype(i32* %84, i32 %85)
  store %struct.block* %86, %struct.block** %6, align 8
  br label %329

87:                                               ; preds = %2
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @bpf_error(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %2, %87
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @ETHERTYPE_ATALK, align 4
  %93 = call %struct.block* @gen_linktype(i32* %91, i32 %92)
  store %struct.block* %93, %struct.block** %6, align 8
  br label %329

94:                                               ; preds = %2
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @ETHERTYPE_AARP, align 4
  %97 = call %struct.block* @gen_linktype(i32* %95, i32 %96)
  store %struct.block* %97, %struct.block** %6, align 8
  br label %329

98:                                               ; preds = %2
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @ETHERTYPE_DN, align 4
  %101 = call %struct.block* @gen_linktype(i32* %99, i32 %100)
  store %struct.block* %101, %struct.block** %6, align 8
  br label %329

102:                                              ; preds = %2
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @ETHERTYPE_SCA, align 4
  %105 = call %struct.block* @gen_linktype(i32* %103, i32 %104)
  store %struct.block* %105, %struct.block** %6, align 8
  br label %329

106:                                              ; preds = %2
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @ETHERTYPE_LAT, align 4
  %109 = call %struct.block* @gen_linktype(i32* %107, i32 %108)
  store %struct.block* %109, %struct.block** %6, align 8
  br label %329

110:                                              ; preds = %2
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @ETHERTYPE_MOPDL, align 4
  %113 = call %struct.block* @gen_linktype(i32* %111, i32 %112)
  store %struct.block* %113, %struct.block** %6, align 8
  br label %329

114:                                              ; preds = %2
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @ETHERTYPE_MOPRC, align 4
  %117 = call %struct.block* @gen_linktype(i32* %115, i32 %116)
  store %struct.block* %117, %struct.block** %6, align 8
  br label %329

118:                                              ; preds = %2
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %121 = call %struct.block* @gen_linktype(i32* %119, i32 %120)
  store %struct.block* %121, %struct.block** %6, align 8
  br label %329

122:                                              ; preds = %2
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @Q_DEFAULT, align 4
  %125 = call %struct.block* @gen_proto(i32* %123, i32 58, i32 152, i32 %124)
  store %struct.block* %125, %struct.block** %6, align 8
  br label %329

126:                                              ; preds = %2
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @Q_DEFAULT, align 4
  %129 = call %struct.block* @gen_proto(i32* %127, i32 51, i32 153, i32 %128)
  store %struct.block* %129, %struct.block** %6, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @Q_DEFAULT, align 4
  %132 = call %struct.block* @gen_proto(i32* %130, i32 51, i32 152, i32 %131)
  store %struct.block* %132, %struct.block** %5, align 8
  %133 = load %struct.block*, %struct.block** %5, align 8
  %134 = load %struct.block*, %struct.block** %6, align 8
  %135 = call i32 @gen_or(%struct.block* %133, %struct.block* %134)
  br label %329

136:                                              ; preds = %2
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* @Q_DEFAULT, align 4
  %139 = call %struct.block* @gen_proto(i32* %137, i32 50, i32 153, i32 %138)
  store %struct.block* %139, %struct.block** %6, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* @Q_DEFAULT, align 4
  %142 = call %struct.block* @gen_proto(i32* %140, i32 50, i32 152, i32 %141)
  store %struct.block* %142, %struct.block** %5, align 8
  %143 = load %struct.block*, %struct.block** %5, align 8
  %144 = load %struct.block*, %struct.block** %6, align 8
  %145 = call i32 @gen_or(%struct.block* %143, %struct.block* %144)
  br label %329

146:                                              ; preds = %2
  %147 = load i32*, i32** %3, align 8
  %148 = load i32, i32* @LLCSAP_ISONS, align 4
  %149 = call %struct.block* @gen_linktype(i32* %147, i32 %148)
  store %struct.block* %149, %struct.block** %6, align 8
  br label %329

150:                                              ; preds = %2
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* @ISO9542_ESIS, align 4
  %153 = load i32, i32* @Q_DEFAULT, align 4
  %154 = call %struct.block* @gen_proto(i32* %151, i32 %152, i32 142, i32 %153)
  store %struct.block* %154, %struct.block** %6, align 8
  br label %329

155:                                              ; preds = %2
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* @ISO10589_ISIS, align 4
  %158 = load i32, i32* @Q_DEFAULT, align 4
  %159 = call %struct.block* @gen_proto(i32* %156, i32 %157, i32 142, i32 %158)
  store %struct.block* %159, %struct.block** %6, align 8
  br label %329

160:                                              ; preds = %2
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* @ISIS_L1_LAN_IIH, align 4
  %163 = load i32, i32* @Q_DEFAULT, align 4
  %164 = call %struct.block* @gen_proto(i32* %161, i32 %162, i32 150, i32 %163)
  store %struct.block* %164, %struct.block** %5, align 8
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @ISIS_PTP_IIH, align 4
  %167 = load i32, i32* @Q_DEFAULT, align 4
  %168 = call %struct.block* @gen_proto(i32* %165, i32 %166, i32 150, i32 %167)
  store %struct.block* %168, %struct.block** %6, align 8
  %169 = load %struct.block*, %struct.block** %5, align 8
  %170 = load %struct.block*, %struct.block** %6, align 8
  %171 = call i32 @gen_or(%struct.block* %169, %struct.block* %170)
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* @ISIS_L1_LSP, align 4
  %174 = load i32, i32* @Q_DEFAULT, align 4
  %175 = call %struct.block* @gen_proto(i32* %172, i32 %173, i32 150, i32 %174)
  store %struct.block* %175, %struct.block** %5, align 8
  %176 = load %struct.block*, %struct.block** %5, align 8
  %177 = load %struct.block*, %struct.block** %6, align 8
  %178 = call i32 @gen_or(%struct.block* %176, %struct.block* %177)
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* @ISIS_L1_CSNP, align 4
  %181 = load i32, i32* @Q_DEFAULT, align 4
  %182 = call %struct.block* @gen_proto(i32* %179, i32 %180, i32 150, i32 %181)
  store %struct.block* %182, %struct.block** %5, align 8
  %183 = load %struct.block*, %struct.block** %5, align 8
  %184 = load %struct.block*, %struct.block** %6, align 8
  %185 = call i32 @gen_or(%struct.block* %183, %struct.block* %184)
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @ISIS_L1_PSNP, align 4
  %188 = load i32, i32* @Q_DEFAULT, align 4
  %189 = call %struct.block* @gen_proto(i32* %186, i32 %187, i32 150, i32 %188)
  store %struct.block* %189, %struct.block** %5, align 8
  %190 = load %struct.block*, %struct.block** %5, align 8
  %191 = load %struct.block*, %struct.block** %6, align 8
  %192 = call i32 @gen_or(%struct.block* %190, %struct.block* %191)
  br label %329

193:                                              ; preds = %2
  %194 = load i32*, i32** %3, align 8
  %195 = load i32, i32* @ISIS_L2_LAN_IIH, align 4
  %196 = load i32, i32* @Q_DEFAULT, align 4
  %197 = call %struct.block* @gen_proto(i32* %194, i32 %195, i32 150, i32 %196)
  store %struct.block* %197, %struct.block** %5, align 8
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* @ISIS_PTP_IIH, align 4
  %200 = load i32, i32* @Q_DEFAULT, align 4
  %201 = call %struct.block* @gen_proto(i32* %198, i32 %199, i32 150, i32 %200)
  store %struct.block* %201, %struct.block** %6, align 8
  %202 = load %struct.block*, %struct.block** %5, align 8
  %203 = load %struct.block*, %struct.block** %6, align 8
  %204 = call i32 @gen_or(%struct.block* %202, %struct.block* %203)
  %205 = load i32*, i32** %3, align 8
  %206 = load i32, i32* @ISIS_L2_LSP, align 4
  %207 = load i32, i32* @Q_DEFAULT, align 4
  %208 = call %struct.block* @gen_proto(i32* %205, i32 %206, i32 150, i32 %207)
  store %struct.block* %208, %struct.block** %5, align 8
  %209 = load %struct.block*, %struct.block** %5, align 8
  %210 = load %struct.block*, %struct.block** %6, align 8
  %211 = call i32 @gen_or(%struct.block* %209, %struct.block* %210)
  %212 = load i32*, i32** %3, align 8
  %213 = load i32, i32* @ISIS_L2_CSNP, align 4
  %214 = load i32, i32* @Q_DEFAULT, align 4
  %215 = call %struct.block* @gen_proto(i32* %212, i32 %213, i32 150, i32 %214)
  store %struct.block* %215, %struct.block** %5, align 8
  %216 = load %struct.block*, %struct.block** %5, align 8
  %217 = load %struct.block*, %struct.block** %6, align 8
  %218 = call i32 @gen_or(%struct.block* %216, %struct.block* %217)
  %219 = load i32*, i32** %3, align 8
  %220 = load i32, i32* @ISIS_L2_PSNP, align 4
  %221 = load i32, i32* @Q_DEFAULT, align 4
  %222 = call %struct.block* @gen_proto(i32* %219, i32 %220, i32 150, i32 %221)
  store %struct.block* %222, %struct.block** %5, align 8
  %223 = load %struct.block*, %struct.block** %5, align 8
  %224 = load %struct.block*, %struct.block** %6, align 8
  %225 = call i32 @gen_or(%struct.block* %223, %struct.block* %224)
  br label %329

226:                                              ; preds = %2
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* @ISIS_L1_LAN_IIH, align 4
  %229 = load i32, i32* @Q_DEFAULT, align 4
  %230 = call %struct.block* @gen_proto(i32* %227, i32 %228, i32 150, i32 %229)
  store %struct.block* %230, %struct.block** %5, align 8
  %231 = load i32*, i32** %3, align 8
  %232 = load i32, i32* @ISIS_L2_LAN_IIH, align 4
  %233 = load i32, i32* @Q_DEFAULT, align 4
  %234 = call %struct.block* @gen_proto(i32* %231, i32 %232, i32 150, i32 %233)
  store %struct.block* %234, %struct.block** %6, align 8
  %235 = load %struct.block*, %struct.block** %5, align 8
  %236 = load %struct.block*, %struct.block** %6, align 8
  %237 = call i32 @gen_or(%struct.block* %235, %struct.block* %236)
  %238 = load i32*, i32** %3, align 8
  %239 = load i32, i32* @ISIS_PTP_IIH, align 4
  %240 = load i32, i32* @Q_DEFAULT, align 4
  %241 = call %struct.block* @gen_proto(i32* %238, i32 %239, i32 150, i32 %240)
  store %struct.block* %241, %struct.block** %5, align 8
  %242 = load %struct.block*, %struct.block** %5, align 8
  %243 = load %struct.block*, %struct.block** %6, align 8
  %244 = call i32 @gen_or(%struct.block* %242, %struct.block* %243)
  br label %329

245:                                              ; preds = %2
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* @ISIS_L1_LSP, align 4
  %248 = load i32, i32* @Q_DEFAULT, align 4
  %249 = call %struct.block* @gen_proto(i32* %246, i32 %247, i32 150, i32 %248)
  store %struct.block* %249, %struct.block** %5, align 8
  %250 = load i32*, i32** %3, align 8
  %251 = load i32, i32* @ISIS_L2_LSP, align 4
  %252 = load i32, i32* @Q_DEFAULT, align 4
  %253 = call %struct.block* @gen_proto(i32* %250, i32 %251, i32 150, i32 %252)
  store %struct.block* %253, %struct.block** %6, align 8
  %254 = load %struct.block*, %struct.block** %5, align 8
  %255 = load %struct.block*, %struct.block** %6, align 8
  %256 = call i32 @gen_or(%struct.block* %254, %struct.block* %255)
  br label %329

257:                                              ; preds = %2
  %258 = load i32*, i32** %3, align 8
  %259 = load i32, i32* @ISIS_L1_CSNP, align 4
  %260 = load i32, i32* @Q_DEFAULT, align 4
  %261 = call %struct.block* @gen_proto(i32* %258, i32 %259, i32 150, i32 %260)
  store %struct.block* %261, %struct.block** %5, align 8
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* @ISIS_L2_CSNP, align 4
  %264 = load i32, i32* @Q_DEFAULT, align 4
  %265 = call %struct.block* @gen_proto(i32* %262, i32 %263, i32 150, i32 %264)
  store %struct.block* %265, %struct.block** %6, align 8
  %266 = load %struct.block*, %struct.block** %5, align 8
  %267 = load %struct.block*, %struct.block** %6, align 8
  %268 = call i32 @gen_or(%struct.block* %266, %struct.block* %267)
  %269 = load i32*, i32** %3, align 8
  %270 = load i32, i32* @ISIS_L1_PSNP, align 4
  %271 = load i32, i32* @Q_DEFAULT, align 4
  %272 = call %struct.block* @gen_proto(i32* %269, i32 %270, i32 150, i32 %271)
  store %struct.block* %272, %struct.block** %5, align 8
  %273 = load %struct.block*, %struct.block** %5, align 8
  %274 = load %struct.block*, %struct.block** %6, align 8
  %275 = call i32 @gen_or(%struct.block* %273, %struct.block* %274)
  %276 = load i32*, i32** %3, align 8
  %277 = load i32, i32* @ISIS_L2_PSNP, align 4
  %278 = load i32, i32* @Q_DEFAULT, align 4
  %279 = call %struct.block* @gen_proto(i32* %276, i32 %277, i32 150, i32 %278)
  store %struct.block* %279, %struct.block** %5, align 8
  %280 = load %struct.block*, %struct.block** %5, align 8
  %281 = load %struct.block*, %struct.block** %6, align 8
  %282 = call i32 @gen_or(%struct.block* %280, %struct.block* %281)
  br label %329

283:                                              ; preds = %2
  %284 = load i32*, i32** %3, align 8
  %285 = load i32, i32* @ISIS_L1_CSNP, align 4
  %286 = load i32, i32* @Q_DEFAULT, align 4
  %287 = call %struct.block* @gen_proto(i32* %284, i32 %285, i32 150, i32 %286)
  store %struct.block* %287, %struct.block** %5, align 8
  %288 = load i32*, i32** %3, align 8
  %289 = load i32, i32* @ISIS_L2_CSNP, align 4
  %290 = load i32, i32* @Q_DEFAULT, align 4
  %291 = call %struct.block* @gen_proto(i32* %288, i32 %289, i32 150, i32 %290)
  store %struct.block* %291, %struct.block** %6, align 8
  %292 = load %struct.block*, %struct.block** %5, align 8
  %293 = load %struct.block*, %struct.block** %6, align 8
  %294 = call i32 @gen_or(%struct.block* %292, %struct.block* %293)
  br label %329

295:                                              ; preds = %2
  %296 = load i32*, i32** %3, align 8
  %297 = load i32, i32* @ISIS_L1_PSNP, align 4
  %298 = load i32, i32* @Q_DEFAULT, align 4
  %299 = call %struct.block* @gen_proto(i32* %296, i32 %297, i32 150, i32 %298)
  store %struct.block* %299, %struct.block** %5, align 8
  %300 = load i32*, i32** %3, align 8
  %301 = load i32, i32* @ISIS_L2_PSNP, align 4
  %302 = load i32, i32* @Q_DEFAULT, align 4
  %303 = call %struct.block* @gen_proto(i32* %300, i32 %301, i32 150, i32 %302)
  store %struct.block* %303, %struct.block** %6, align 8
  %304 = load %struct.block*, %struct.block** %5, align 8
  %305 = load %struct.block*, %struct.block** %6, align 8
  %306 = call i32 @gen_or(%struct.block* %304, %struct.block* %305)
  br label %329

307:                                              ; preds = %2
  %308 = load i32*, i32** %3, align 8
  %309 = load i32, i32* @ISO8473_CLNP, align 4
  %310 = load i32, i32* @Q_DEFAULT, align 4
  %311 = call %struct.block* @gen_proto(i32* %308, i32 %309, i32 142, i32 %310)
  store %struct.block* %311, %struct.block** %6, align 8
  br label %329

312:                                              ; preds = %2
  %313 = load i32*, i32** %3, align 8
  %314 = load i32, i32* @LLCSAP_8021D, align 4
  %315 = call %struct.block* @gen_linktype(i32* %313, i32 %314)
  store %struct.block* %315, %struct.block** %6, align 8
  br label %329

316:                                              ; preds = %2
  %317 = load i32*, i32** %3, align 8
  %318 = load i32, i32* @LLCSAP_IPX, align 4
  %319 = call %struct.block* @gen_linktype(i32* %317, i32 %318)
  store %struct.block* %319, %struct.block** %6, align 8
  br label %329

320:                                              ; preds = %2
  %321 = load i32*, i32** %3, align 8
  %322 = load i32, i32* @LLCSAP_NETBEUI, align 4
  %323 = call %struct.block* @gen_linktype(i32* %321, i32 %322)
  store %struct.block* %323, %struct.block** %6, align 8
  br label %329

324:                                              ; preds = %2
  %325 = load i32*, i32** %3, align 8
  %326 = call i32 @bpf_error(i32* %325, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %327

327:                                              ; preds = %2, %324
  %328 = call i32 (...) @abort() #3
  unreachable

329:                                              ; preds = %320, %316, %312, %307, %295, %283, %257, %245, %226, %193, %160, %155, %150, %146, %136, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %83, %79, %75, %71, %67, %57, %53, %49, %44, %32, %20, %8
  %330 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %330
}

declare dso_local %struct.block* @gen_proto(i32*, i32, i32, i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_linktype(i32*, i32) #1

declare dso_local i32 @bpf_error(i32*, i8*) #1

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
