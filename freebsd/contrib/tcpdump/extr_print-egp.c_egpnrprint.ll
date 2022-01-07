; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-egp.c_egpnrprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-egp.c_egpnrprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.egp_packet = type { i32, i32, i32 }

@IN_CLASSA_NET = common dso_local global i32 0, align 4
@IN_CLASSB_NET = common dso_local global i32 0, align 4
@IN_CLASSC_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" %s %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%sd%d:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"[|]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.egp_packet*, i32)* @egpnrprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egpnrprint(i32* %0, %struct.egp_packet* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.egp_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.egp_packet* %1, %struct.egp_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.egp_packet*, %struct.egp_packet** %5, align 8
  %17 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @IN_CLASSA(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IN_CLASSA_NET, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @IN_CLASSB(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IN_CLASSB_NET, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @IN_CLASSC(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IN_CLASSC_NET, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.egp_packet*, %struct.egp_packet** %5, align 8
  %47 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %46, i64 1
  %48 = bitcast %struct.egp_packet* %47 to i32*
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 12
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.egp_packet*, %struct.egp_packet** %5, align 8
  %54 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.egp_packet*, %struct.egp_packet** %5, align 8
  %57 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %236, %45
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %239

64:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 4, %66
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %240

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 4, %74
  %76 = call i32 @ND_TCHECK2(i32 %73, i32 %75)
  %77 = load i32, i32* %10, align 4
  switch i32 %77, label %96 [
    i32 1, label %78
    i32 2, label %82
    i32 3, label %89
  ]

78:                                               ; preds = %70
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %70, %78
  %83 = load i32, i32* %8, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  %87 = load i32, i32* %85, align 4
  %88 = or i32 %84, %87
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %70, %82
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %90, 8
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  %94 = load i32, i32* %92, align 4
  %95 = or i32 %91, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %89, %70
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 4, %100
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %240

107:                                              ; preds = %96
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ND_TCHECK2(i32 %110, i32 1)
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %7, align 8
  %114 = load i32, i32* %112, align 4
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %6, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.egp_packet*, %struct.egp_packet** %5, align 8
  %120 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @ipaddr_string(i32* %125, i32* %8)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  %129 = call i32 @ND_PRINT(i32* %128)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  br label %132

132:                                              ; preds = %232, %107
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %233

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %240

140:                                              ; preds = %136
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ND_TCHECK2(i32 %143, i32 2)
  %145 = load i32*, i32** %4, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %7, align 8
  %149 = load i32, i32* %147, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i32*
  %152 = call i32 @ND_PRINT(i32* %151)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %7, align 8
  %155 = load i32, i32* %153, align 4
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sub nsw i32 %156, 2
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %225, %140
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %13, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %232

162:                                              ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %240

166:                                              ; preds = %162
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ND_TCHECK2(i32 %169, i32 1)
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %7, align 8
  %173 = load i32, i32* %171, align 4
  %174 = shl i32 %173, 24
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @IN_CLASSB(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %166
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %240

184:                                              ; preds = %180
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ND_TCHECK2(i32 %187, i32 1)
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %7, align 8
  %191 = load i32, i32* %189, align 4
  %192 = shl i32 %191, 16
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %6, align 4
  br label %225

197:                                              ; preds = %166
  %198 = load i32, i32* %8, align 4
  %199 = call i64 @IN_CLASSA(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %224, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %240

205:                                              ; preds = %201
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ND_TCHECK2(i32 %208, i32 2)
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %7, align 8
  %212 = load i32, i32* %210, align 4
  %213 = shl i32 %212, 16
  %214 = load i32, i32* %8, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %8, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %7, align 8
  %218 = load i32, i32* %216, align 4
  %219 = shl i32 %218, 8
  %220 = load i32, i32* %8, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sub nsw i32 %222, 2
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %205, %197
  br label %225

225:                                              ; preds = %224, %184
  %226 = load i32*, i32** %4, align 8
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @ipaddr_string(i32* %227, i32* %8)
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i32*
  %231 = call i32 @ND_PRINT(i32* %230)
  br label %158

232:                                              ; preds = %158
  br label %132

233:                                              ; preds = %132
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.8 to i32*))
  br label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %60

239:                                              ; preds = %60
  br label %243

240:                                              ; preds = %204, %183, %165, %139, %106, %69
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.9 to i32*))
  br label %243

243:                                              ; preds = %240, %239
  ret void
}

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

declare dso_local i64 @IN_CLASSC(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
