; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_map_arphrd_to_dlt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_map_arphrd_to_dlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8** }

@map_arphrd_to_dlt.cdma_rmnet = internal constant [11 x i8] c"cdma_rmnet\00", align 1
@DLT_RAW = common dso_local global i8* null, align 8
@DLT_EN10MB = common dso_local global i8* null, align 8
@DLT_DOCSIS = common dso_local global i8* null, align 8
@DLT_EN3MB = common dso_local global i32 0, align 4
@DLT_AX25_KISS = common dso_local global i32 0, align 4
@DLT_PRONET = common dso_local global i32 0, align 4
@DLT_CHAOS = common dso_local global i32 0, align 4
@DLT_LINUX_SLL = common dso_local global i8* null, align 8
@DLT_IEEE802 = common dso_local global i32 0, align 4
@DLT_ARCNET_LINUX = common dso_local global i32 0, align 4
@DLT_FDDI = common dso_local global i32 0, align 4
@DLT_IEEE802_11 = common dso_local global i32 0, align 4
@DLT_PRISM_HEADER = common dso_local global i32 0, align 4
@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4
@DLT_C_HDLC = common dso_local global i32 0, align 4
@DLT_FRELAY = common dso_local global i32 0, align 4
@DLT_LTALK = common dso_local global i32 0, align 4
@DLT_IP_OVER_FC = common dso_local global i8* null, align 8
@DLT_FC_2 = common dso_local global i8* null, align 8
@DLT_FC_2_WITH_FRAME_DELIMS = common dso_local global i8* null, align 8
@DLT_LINUX_IRDA = common dso_local global i32 0, align 4
@DLT_LINUX_LAPD = common dso_local global i32 0, align 4
@DLT_IEEE802_15_4_NOFCS = common dso_local global i32 0, align 4
@DLT_NETLINK = common dso_local global i32 0, align 4
@DLT_VSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i32)* @map_arphrd_to_dlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_arphrd_to_dlt(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %211 [
    i32 155, label %12
    i32 138, label %50
    i32 139, label %50
    i32 156, label %57
    i32 163, label %61
    i32 134, label %65
    i32 161, label %69
    i32 162, label %73
    i32 143, label %78
    i32 148, label %78
    i32 165, label %84
    i32 150, label %88
    i32 164, label %94
    i32 147, label %106
    i32 146, label %110
    i32 145, label %114
    i32 135, label %118
    i32 160, label %132
    i32 129, label %136
    i32 132, label %136
    i32 159, label %136
    i32 130, label %136
    i32 158, label %136
    i32 166, label %136
    i32 131, label %136
    i32 133, label %136
    i32 157, label %136
    i32 149, label %141
    i32 140, label %145
    i32 18, label %149
    i32 151, label %154
    i32 154, label %154
    i32 152, label %154
    i32 153, label %154
    i32 142, label %186
    i32 141, label %190
    i32 136, label %194
    i32 144, label %199
    i32 137, label %203
    i32 128, label %207
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @map_arphrd_to_dlt.cdma_rmnet, i64 0, i64 0), i32 10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8*, i8** @DLT_RAW, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %214

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @is_wifi(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %21
  %27 = call i64 @malloc(i32 16)
  %28 = inttoptr i64 %27 to i8**
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i8** %28, i8*** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load i8*, i8** @DLT_EN10MB, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  %41 = load i8*, i8** @DLT_DOCSIS, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 2, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %26
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %5, %5, %49
  %51 = load i8*, i8** @DLT_EN10MB, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 2, i32* %56, align 8
  br label %214

57:                                               ; preds = %5
  %58 = load i32, i32* @DLT_EN3MB, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %214

61:                                               ; preds = %5
  %62 = load i32, i32* @DLT_AX25_KISS, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %214

65:                                               ; preds = %5
  %66 = load i32, i32* @DLT_PRONET, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %214

69:                                               ; preds = %5
  %70 = load i32, i32* @DLT_CHAOS, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %214

73:                                               ; preds = %5
  %74 = load i8*, i8** @DLT_LINUX_SLL, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %214

78:                                               ; preds = %5, %5
  %79 = load i32, i32* @DLT_IEEE802, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 2, i32* %83, align 8
  br label %214

84:                                               ; preds = %5
  %85 = load i32, i32* @DLT_ARCNET_LINUX, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %214

88:                                               ; preds = %5
  %89 = load i32, i32* @DLT_FDDI, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 3, i32* %93, align 8
  br label %214

94:                                               ; preds = %5
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** @DLT_LINUX_SLL, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %105

102:                                              ; preds = %94
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %214

106:                                              ; preds = %5
  %107 = load i32, i32* @DLT_IEEE802_11, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %214

110:                                              ; preds = %5
  %111 = load i32, i32* @DLT_PRISM_HEADER, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %214

114:                                              ; preds = %5
  %115 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %214

118:                                              ; preds = %5
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i8*, i8** @DLT_LINUX_SLL, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %131

126:                                              ; preds = %118
  %127 = load i8*, i8** @DLT_RAW, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  br label %214

132:                                              ; preds = %5
  %133 = load i32, i32* @DLT_C_HDLC, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %214

136:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  %137 = load i8*, i8** @DLT_RAW, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %214

141:                                              ; preds = %5
  %142 = load i32, i32* @DLT_FRELAY, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %214

145:                                              ; preds = %5
  %146 = load i32, i32* @DLT_LTALK, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %214

149:                                              ; preds = %5
  %150 = load i8*, i8** @DLT_IP_OVER_FC, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %214

154:                                              ; preds = %5, %5, %5, %5
  %155 = call i64 @malloc(i32 24)
  %156 = inttoptr i64 %155 to i8**
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  store i8** %156, i8*** %158, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i8**, i8*** %160, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %154
  %164 = load i8*, i8** @DLT_FC_2, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  store i8* %164, i8** %168, align 8
  %169 = load i8*, i8** @DLT_FC_2_WITH_FRAME_DELIMS, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  store i8* %169, i8** %173, align 8
  %174 = load i8*, i8** @DLT_IP_OVER_FC, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  store i8* %174, i8** %178, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i32 3, i32* %180, align 4
  br label %181

181:                                              ; preds = %163, %154
  %182 = load i8*, i8** @DLT_FC_2, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %214

186:                                              ; preds = %5
  %187 = load i32, i32* @DLT_LINUX_IRDA, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %214

190:                                              ; preds = %5
  %191 = load i32, i32* @DLT_LINUX_LAPD, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  br label %214

194:                                              ; preds = %5
  %195 = load i8*, i8** @DLT_RAW, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  br label %214

199:                                              ; preds = %5
  %200 = load i32, i32* @DLT_IEEE802_15_4_NOFCS, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %214

203:                                              ; preds = %5
  %204 = load i32, i32* @DLT_NETLINK, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %214

207:                                              ; preds = %5
  %208 = load i32, i32* @DLT_VSOCK, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %214

211:                                              ; preds = %5
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  store i32 -1, i32* %213, align 8
  br label %214

214:                                              ; preds = %16, %211, %207, %203, %199, %194, %190, %186, %181, %149, %145, %141, %136, %132, %131, %114, %110, %106, %105, %88, %84, %78, %73, %69, %65, %61, %57, %50
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @is_wifi(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
