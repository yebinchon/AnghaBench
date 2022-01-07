; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_add_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pcap_ng_sf* }
%struct.pcap_ng_sf = type { i32, i32, i32, %struct.pcap_ng_if* }
%struct.pcap_ng_if = type { i32, i32, i32, i64 }
%struct.block_cursor = type { i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"more than %u interfaces in the file\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"out of memory for per-interface information (%u interfaces)\00", align 1
@PASS_THROUGH = common dso_local global i32 0, align 4
@SCALE_DOWN_BIN = common dso_local global i32 0, align 4
@SCALE_DOWN_DEC = common dso_local global i32 0, align 4
@SCALE_UP_BIN = common dso_local global i32 0, align 4
@SCALE_UP_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.block_cursor*, i8*)* @add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_interface(%struct.TYPE_4__* %0, %struct.block_cursor* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.block_cursor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pcap_ng_sf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcap_ng_if*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.block_cursor* %1, %struct.block_cursor** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %15, align 8
  store %struct.pcap_ng_sf* %16, %struct.pcap_ng_sf** %8, align 8
  %17 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %18 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %22 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %25 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %3
  %29 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %30 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  %34 = call %struct.pcap_ng_if* @malloc(i32 24)
  store %struct.pcap_ng_if* %34, %struct.pcap_ng_if** %13, align 8
  br label %72

35:                                               ; preds = %28
  %36 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %37 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %41 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %47 = call i32 @pcap_snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 -2147483648)
  store i32 0, i32* %4, align 4
  br label %230

48:                                               ; preds = %35
  %49 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %50 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 24
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %62 = call i32 @pcap_snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 178956970)
  store i32 0, i32* %4, align 4
  br label %230

63:                                               ; preds = %48
  %64 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %65 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %64, i32 0, i32 3
  %66 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 24
  %70 = trunc i64 %69 to i32
  %71 = call %struct.pcap_ng_if* @realloc(%struct.pcap_ng_if* %66, i32 %70)
  store %struct.pcap_ng_if* %71, %struct.pcap_ng_if** %13, align 8
  br label %72

72:                                               ; preds = %63, %33
  %73 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %13, align 8
  %74 = icmp eq %struct.pcap_ng_if* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %78 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %79 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pcap_snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 0, i32* %4, align 4
  br label %230

82:                                               ; preds = %72
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %85 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %13, align 8
  %87 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %88 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %87, i32 0, i32 3
  store %struct.pcap_ng_if* %86, %struct.pcap_ng_if** %88, align 8
  br label %89

89:                                               ; preds = %82, %3
  store i32 1000000, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = load %struct.block_cursor*, %struct.block_cursor** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @process_idb_options(%struct.TYPE_4__* %90, %struct.block_cursor* %91, i32* %9, i64* %10, i32* %11, i8* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %230

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %99 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %98, i32 0, i32 3
  %100 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %99, align 8
  %101 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %102 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %100, i64 %105
  %107 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %106, i32 0, i32 0
  store i32 %97, i32* %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %110 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %109, i32 0, i32 3
  %111 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %110, align 8
  %112 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %113 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %111, i64 %116
  %118 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %117, i32 0, i32 3
  store i64 %108, i64* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %121 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %96
  %125 = load i32, i32* @PASS_THROUGH, align 4
  %126 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %127 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %126, i32 0, i32 3
  %128 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %127, align 8
  %129 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %130 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %128, i64 %133
  %135 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %134, i32 0, i32 2
  store i32 %125, i32* %135, align 8
  br label %229

136:                                              ; preds = %96
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %139 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %185

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, i32* @SCALE_DOWN_BIN, align 4
  %147 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %148 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %147, i32 0, i32 3
  %149 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %148, align 8
  %150 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %151 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %149, i64 %154
  %156 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %155, i32 0, i32 2
  store i32 %146, i32* %156, align 8
  br label %184

157:                                              ; preds = %142
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %160 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %158, %161
  %163 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %164 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %163, i32 0, i32 3
  %165 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %164, align 8
  %166 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %167 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %165, i64 %170
  %172 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %171, i32 0, i32 1
  store i32 %162, i32* %172, align 4
  %173 = load i32, i32* @SCALE_DOWN_DEC, align 4
  %174 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %175 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %174, i32 0, i32 3
  %176 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %175, align 8
  %177 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %178 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %176, i64 %181
  %183 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %182, i32 0, i32 2
  store i32 %173, i32* %183, align 8
  br label %184

184:                                              ; preds = %157, %145
  br label %228

185:                                              ; preds = %136
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i32, i32* @SCALE_UP_BIN, align 4
  %190 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %191 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %190, i32 0, i32 3
  %192 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %191, align 8
  %193 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %194 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %192, i64 %197
  %199 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %198, i32 0, i32 2
  store i32 %189, i32* %199, align 8
  br label %227

200:                                              ; preds = %185
  %201 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %202 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sdiv i32 %203, %204
  %206 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %207 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %206, i32 0, i32 3
  %208 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %207, align 8
  %209 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %210 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %208, i64 %213
  %215 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %214, i32 0, i32 1
  store i32 %205, i32* %215, align 4
  %216 = load i32, i32* @SCALE_UP_DEC, align 4
  %217 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %218 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %217, i32 0, i32 3
  %219 = load %struct.pcap_ng_if*, %struct.pcap_ng_if** %218, align 8
  %220 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %8, align 8
  %221 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %219, i64 %224
  %226 = getelementptr inbounds %struct.pcap_ng_if, %struct.pcap_ng_if* %225, i32 0, i32 2
  store i32 %216, i32* %226, align 8
  br label %227

227:                                              ; preds = %200, %188
  br label %228

228:                                              ; preds = %227, %184
  br label %229

229:                                              ; preds = %228, %124
  store i32 1, i32* %4, align 4
  br label %230

230:                                              ; preds = %229, %95, %75, %59, %44
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.pcap_ng_if* @malloc(i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.pcap_ng_if* @realloc(%struct.pcap_ng_if*, i32) #1

declare dso_local i32 @process_idb_options(%struct.TYPE_4__*, %struct.block_cursor*, i32*, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
