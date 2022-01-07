; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel_enc.c_sunlabel_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel_enc.c_sunlabel_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@SL_TEXT_SIZEOF = common dso_local global i64 0, align 8
@SL_TEXT = common dso_local global i64 0, align 8
@SL_RPM = common dso_local global i32 0, align 4
@SL_PCYLINDERS = common dso_local global i32 0, align 4
@SL_SPARESPERCYL = common dso_local global i32 0, align 4
@SL_INTERLEAVE = common dso_local global i32 0, align 4
@SL_NCYLINDERS = common dso_local global i32 0, align 4
@SL_ACYLINDERS = common dso_local global i32 0, align 4
@SL_NTRACKS = common dso_local global i32 0, align 4
@SL_NSECTORS = common dso_local global i32 0, align 4
@SUN_NPART = common dso_local global i64 0, align 8
@SL_PART = common dso_local global i32 0, align 4
@SDKP_SIZEOF = common dso_local global i64 0, align 8
@SDKP_CYLOFFSET = common dso_local global i32 0, align 4
@SDKP_NSECTORS = common dso_local global i32 0, align 4
@SL_MAGIC = common dso_local global i32 0, align 4
@SUN_VTOC_SANE = common dso_local global i64 0, align 8
@SL_VTOC_VERS = common dso_local global i32 0, align 4
@SL_VTOC_SANITY = common dso_local global i32 0, align 4
@SL_VTOC_VOLNAME = common dso_local global i32 0, align 4
@SUN_VOLNAME_LEN = common dso_local global i32 0, align 4
@SL_VTOC_NPART = common dso_local global i32 0, align 4
@SL_VTOC_MAP = common dso_local global i32 0, align 4
@SVTOC_SIZEOF = common dso_local global i64 0, align 8
@SVTOC_TAG = common dso_local global i32 0, align 4
@SVTOC_FLAG = common dso_local global i32 0, align 4
@SUN_SIZE = common dso_local global i64 0, align 8
@SL_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunlabel_enc(i8* %0, %struct.sun_disklabel* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sun_disklabel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sun_disklabel* %1, %struct.sun_disklabel** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @SL_TEXT_SIZEOF, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %16 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* @SL_TEXT, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @SL_RPM, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %35 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @be16enc(i32* %33, i64 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @SL_PCYLINDERS, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %43 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @be16enc(i32* %41, i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @SL_SPARESPERCYL, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %51 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @be16enc(i32* %49, i64 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @SL_INTERLEAVE, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %59 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @be16enc(i32* %57, i64 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @SL_NCYLINDERS, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %67 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @be16enc(i32* %65, i64 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @SL_ACYLINDERS, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %75 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @be16enc(i32* %73, i64 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @SL_NTRACKS, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %83 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @be16enc(i32* %81, i64 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @SL_NSECTORS, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %91 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @be16enc(i32* %89, i64 %92)
  store i64 0, i64* %6, align 8
  br label %94

94:                                               ; preds = %137, %29
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @SUN_NPART, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @SL_PART, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @SDKP_SIZEOF, align 8
  %105 = mul i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* @SDKP_CYLOFFSET, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %111 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %110, i32 0, i32 14
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @be32enc(i32* %109, i64 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* @SL_PART, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @SDKP_SIZEOF, align 8
  %124 = mul i64 %122, %123
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* @SDKP_NSECTORS, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %130 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %129, i32 0, i32 14
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @be32enc(i32* %128, i64 %135)
  br label %137

137:                                              ; preds = %98
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %6, align 8
  br label %94

140:                                              ; preds = %94
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* @SL_MAGIC, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %146 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @be16enc(i32* %144, i64 %147)
  %149 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %150 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SUN_VTOC_SANE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %237

154:                                              ; preds = %140
  %155 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %156 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SUN_NPART, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %237

160:                                              ; preds = %154
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @SL_VTOC_VERS, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %166 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %165, i32 0, i32 11
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @be32enc(i32* %164, i64 %167)
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* @SL_VTOC_SANITY, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i64, i64* @SUN_VTOC_SANE, align 8
  %174 = call i32 @be32enc(i32* %172, i64 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* @SL_VTOC_VOLNAME, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %180 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SUN_VOLNAME_LEN, align 4
  %183 = call i32 @memcpy(i32* %178, i32 %181, i32 %182)
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @SL_VTOC_NPART, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i64, i64* @SUN_NPART, align 8
  %189 = call i32 @be16enc(i32* %187, i64 %188)
  store i64 0, i64* %6, align 8
  br label %190

190:                                              ; preds = %233, %160
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* @SUN_NPART, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %236

194:                                              ; preds = %190
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* @SL_VTOC_MAP, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* @SVTOC_SIZEOF, align 8
  %201 = mul i64 %199, %200
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* @SVTOC_TAG, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %207 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %206, i32 0, i32 12
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @be16enc(i32* %205, i64 %212)
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* @SL_VTOC_MAP, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* @SVTOC_SIZEOF, align 8
  %220 = mul i64 %218, %219
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* @SVTOC_FLAG, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %226 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %225, i32 0, i32 12
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = load i64, i64* %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @be16enc(i32* %224, i64 %231)
  br label %233

233:                                              ; preds = %194
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %6, align 8
  br label %190

236:                                              ; preds = %190
  br label %237

237:                                              ; preds = %236, %154, %140
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %238

238:                                              ; preds = %249, %237
  %239 = load i64, i64* %6, align 8
  %240 = load i64, i64* @SUN_SIZE, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load i32*, i32** %5, align 8
  %244 = load i64, i64* %6, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = call i64 @be16dec(i32* %245)
  %247 = load i64, i64* %7, align 8
  %248 = xor i64 %247, %246
  store i64 %248, i64* %7, align 8
  br label %249

249:                                              ; preds = %242
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, 2
  store i64 %251, i64* %6, align 8
  br label %238

252:                                              ; preds = %238
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* @SL_CKSUM, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i64, i64* %7, align 8
  %258 = call i32 @be16enc(i32* %256, i64 %257)
  ret void
}

declare dso_local i32 @be16enc(i32*, i64) #1

declare dso_local i32 @be32enc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @be16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
