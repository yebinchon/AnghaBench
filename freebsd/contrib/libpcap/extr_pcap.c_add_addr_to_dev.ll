; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_add_addr_to_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_add_addr_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.sockaddr* }
%struct.sockaddr = type { %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr* }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_addr_to_dev(%struct.TYPE_3__* %0, %struct.sockaddr* %1, i64 %2, %struct.sockaddr* %3, i64 %4, %struct.sockaddr* %5, i64 %6, %struct.sockaddr* %7, i64 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sockaddr*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.sockaddr*, align 8
  %23 = alloca %struct.sockaddr*, align 8
  %24 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %15, align 8
  store i64 %4, i64* %16, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.sockaddr* %7, %struct.sockaddr** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  %25 = call i64 @malloc(i32 40)
  %26 = inttoptr i64 %25 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %22, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %28 = icmp eq %struct.sockaddr* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load i8*, i8** %21, align 8
  %31 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @pcap_fmt_errmsg_for_errno(i8* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %237

34:                                               ; preds = %10
  %35 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  store %struct.sockaddr* null, %struct.sockaddr** %36, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %38 = icmp ne %struct.sockaddr* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i64 @dup_sockaddr(%struct.sockaddr* %43, i64 %44)
  %46 = inttoptr i64 %45 to %struct.sockaddr*
  %47 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 2
  store %struct.sockaddr* %46, %struct.sockaddr** %48, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 2
  %51 = load %struct.sockaddr*, %struct.sockaddr** %50, align 8
  %52 = icmp eq %struct.sockaddr* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i8*, i8** %21, align 8
  %55 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @pcap_fmt_errmsg_for_errno(i8* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %59 = call i32 @free(%struct.sockaddr* %58)
  store i32 -1, i32* %11, align 4
  br label %237

60:                                               ; preds = %42
  br label %64

61:                                               ; preds = %39, %34
  %62 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %63 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %62, i32 0, i32 2
  store %struct.sockaddr* null, %struct.sockaddr** %63, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %66 = icmp ne %struct.sockaddr* %65, null
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load i64, i64* %16, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i64 @dup_sockaddr(%struct.sockaddr* %71, i64 %72)
  %74 = inttoptr i64 %73 to %struct.sockaddr*
  %75 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %75, i32 0, i32 3
  store %struct.sockaddr* %74, %struct.sockaddr** %76, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %77, i32 0, i32 3
  %79 = load %struct.sockaddr*, %struct.sockaddr** %78, align 8
  %80 = icmp eq %struct.sockaddr* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %70
  %82 = load i8*, i8** %21, align 8
  %83 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @pcap_fmt_errmsg_for_errno(i8* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 2
  %88 = load %struct.sockaddr*, %struct.sockaddr** %87, align 8
  %89 = icmp ne %struct.sockaddr* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %92 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %91, i32 0, i32 2
  %93 = load %struct.sockaddr*, %struct.sockaddr** %92, align 8
  %94 = call i32 @free(%struct.sockaddr* %93)
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %97 = call i32 @free(%struct.sockaddr* %96)
  store i32 -1, i32* %11, align 4
  br label %237

98:                                               ; preds = %70
  br label %102

99:                                               ; preds = %67, %64
  %100 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %101 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %100, i32 0, i32 3
  store %struct.sockaddr* null, %struct.sockaddr** %101, align 8
  br label %102

102:                                              ; preds = %99, %98
  %103 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %104 = icmp ne %struct.sockaddr* %103, null
  br i1 %104, label %105, label %147

105:                                              ; preds = %102
  %106 = load i64, i64* %18, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %105
  %109 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i64 @dup_sockaddr(%struct.sockaddr* %109, i64 %110)
  %112 = inttoptr i64 %111 to %struct.sockaddr*
  %113 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 4
  store %struct.sockaddr* %112, %struct.sockaddr** %114, align 8
  %115 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %116 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %115, i32 0, i32 4
  %117 = load %struct.sockaddr*, %struct.sockaddr** %116, align 8
  %118 = icmp eq %struct.sockaddr* %117, null
  br i1 %118, label %119, label %146

119:                                              ; preds = %108
  %120 = load i8*, i8** %21, align 8
  %121 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 @pcap_fmt_errmsg_for_errno(i8* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %125 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %124, i32 0, i32 3
  %126 = load %struct.sockaddr*, %struct.sockaddr** %125, align 8
  %127 = icmp ne %struct.sockaddr* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %130 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %129, i32 0, i32 3
  %131 = load %struct.sockaddr*, %struct.sockaddr** %130, align 8
  %132 = call i32 @free(%struct.sockaddr* %131)
  br label %133

133:                                              ; preds = %128, %119
  %134 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %135 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %134, i32 0, i32 2
  %136 = load %struct.sockaddr*, %struct.sockaddr** %135, align 8
  %137 = icmp ne %struct.sockaddr* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %140 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %139, i32 0, i32 2
  %141 = load %struct.sockaddr*, %struct.sockaddr** %140, align 8
  %142 = call i32 @free(%struct.sockaddr* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %145 = call i32 @free(%struct.sockaddr* %144)
  store i32 -1, i32* %11, align 4
  br label %237

146:                                              ; preds = %108
  br label %150

147:                                              ; preds = %105, %102
  %148 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %149 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %148, i32 0, i32 4
  store %struct.sockaddr* null, %struct.sockaddr** %149, align 8
  br label %150

150:                                              ; preds = %147, %146
  %151 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %152 = icmp ne %struct.sockaddr* %151, null
  br i1 %152, label %153, label %205

153:                                              ; preds = %150
  %154 = load i64, i64* %20, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %205

156:                                              ; preds = %153
  %157 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %158 = load i64, i64* %20, align 8
  %159 = call i64 @dup_sockaddr(%struct.sockaddr* %157, i64 %158)
  %160 = inttoptr i64 %159 to %struct.sockaddr*
  %161 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %162 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %161, i32 0, i32 1
  store %struct.sockaddr* %160, %struct.sockaddr** %162, align 8
  %163 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %164 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %163, i32 0, i32 1
  %165 = load %struct.sockaddr*, %struct.sockaddr** %164, align 8
  %166 = icmp eq %struct.sockaddr* %165, null
  br i1 %166, label %167, label %204

167:                                              ; preds = %156
  %168 = load i8*, i8** %21, align 8
  %169 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %170 = load i32, i32* @errno, align 4
  %171 = call i32 @pcap_fmt_errmsg_for_errno(i8* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %172 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %173 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %172, i32 0, i32 4
  %174 = load %struct.sockaddr*, %struct.sockaddr** %173, align 8
  %175 = icmp ne %struct.sockaddr* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %178 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %177, i32 0, i32 4
  %179 = load %struct.sockaddr*, %struct.sockaddr** %178, align 8
  %180 = call i32 @free(%struct.sockaddr* %179)
  br label %181

181:                                              ; preds = %176, %167
  %182 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %183 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %182, i32 0, i32 3
  %184 = load %struct.sockaddr*, %struct.sockaddr** %183, align 8
  %185 = icmp ne %struct.sockaddr* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %188 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %187, i32 0, i32 3
  %189 = load %struct.sockaddr*, %struct.sockaddr** %188, align 8
  %190 = call i32 @free(%struct.sockaddr* %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %193 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %192, i32 0, i32 2
  %194 = load %struct.sockaddr*, %struct.sockaddr** %193, align 8
  %195 = icmp ne %struct.sockaddr* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %198 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %197, i32 0, i32 2
  %199 = load %struct.sockaddr*, %struct.sockaddr** %198, align 8
  %200 = call i32 @free(%struct.sockaddr* %199)
  br label %201

201:                                              ; preds = %196, %191
  %202 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %203 = call i32 @free(%struct.sockaddr* %202)
  store i32 -1, i32* %11, align 4
  br label %237

204:                                              ; preds = %156
  br label %208

205:                                              ; preds = %153, %150
  %206 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %207 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %206, i32 0, i32 1
  store %struct.sockaddr* null, %struct.sockaddr** %207, align 8
  br label %208

208:                                              ; preds = %205, %204
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load %struct.sockaddr*, %struct.sockaddr** %210, align 8
  store %struct.sockaddr* %211, %struct.sockaddr** %23, align 8
  br label %212

212:                                              ; preds = %223, %208
  %213 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  %214 = icmp ne %struct.sockaddr* %213, null
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  %217 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %216, i32 0, i32 0
  %218 = load %struct.sockaddr*, %struct.sockaddr** %217, align 8
  store %struct.sockaddr* %218, %struct.sockaddr** %24, align 8
  %219 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %220 = icmp eq %struct.sockaddr* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %225

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  store %struct.sockaddr* %224, %struct.sockaddr** %23, align 8
  br label %212

225:                                              ; preds = %221, %212
  %226 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  %227 = icmp eq %struct.sockaddr* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store %struct.sockaddr* %229, %struct.sockaddr** %231, align 8
  br label %236

232:                                              ; preds = %225
  %233 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  %234 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  %235 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %234, i32 0, i32 0
  store %struct.sockaddr* %233, %struct.sockaddr** %235, align 8
  br label %236

236:                                              ; preds = %232, %228
  store i32 0, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %201, %143, %95, %53, %29
  %238 = load i32, i32* %11, align 4
  ret i32 %238
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i64 @dup_sockaddr(%struct.sockaddr*, i64) #1

declare dso_local i32 @free(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
