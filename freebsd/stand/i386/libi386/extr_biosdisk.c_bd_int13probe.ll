; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_int13probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_int13probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32, i32 }

@BD_NO_MEDIA = common dso_local global i32 0, align 4
@BD_MODEINT13 = common dso_local global i32 0, align 4
@BD_MODEEDD1 = common dso_local global i32 0, align 4
@BD_MODEEDD3 = common dso_local global i32 0, align 4
@BIOSDISK_SECSIZE = common dso_local global i32 0, align 4
@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@BD_CDROM = common dso_local global i32 0, align 4
@BD_FLOPPY = common dso_local global i32 0, align 4
@biosfd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@bioscd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@bioshd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Can not get information about %s unit %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unit 0x%x geometry %d/%d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @bd_int13probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_int13probe(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load i32, i32* @BD_NO_MEDIA, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bd_check_extensions(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @BD_MODEINT13, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %41

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 48
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @BD_MODEEDD1, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @BD_MODEEDD3, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* @BIOSDISK_SECSIZE, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bd_reset_disk(i32 %52)
  %54 = load i32, i32* @V86_FLAGS, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 4), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 0), align 4
  store i32 5376, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 1), align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 2), align 4
  %58 = call i32 (...) @v86int()
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 3), align 4
  %60 = call i64 @V86_CY(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v86, i32 0, i32 1), align 4
  %64 = and i32 %63, 768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %49
  store i32 0, i32* %2, align 4
  br label %235

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %41
  store i32 1, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i32 @bd_get_diskinfo_ext(%struct.TYPE_9__* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %74
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = call i32 @bd_get_diskinfo_std(%struct.TYPE_9__* %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 128
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i32 80, i32* %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  store i32 2, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 5
  store i32 18, i32* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i64 2880, i64* %101, align 8
  %102 = load i32, i32* @BD_NO_MEDIA, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %93, %88, %85
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %185

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BD_CDROM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %235

118:                                              ; preds = %110
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 5
  store i32 63, i32* %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  store i32 255, i32* %130, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %133, %141
  %143 = sub nsw i64 %142, 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = sdiv i64 %143, %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %148, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %184

157:                                              ; preds = %123, %118
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @BD_FLOPPY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @biosfd, i32 0, i32 0), align 8
  store i8* %165, i8** %6, align 8
  br label %178

166:                                              ; preds = %157
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BD_CDROM, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bioscd, i32 0, i32 0), align 8
  store i8* %174, i8** %6, align 8
  br label %177

175:                                              ; preds = %166
  %176 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bioshd, i32 0, i32 0), align 8
  store i8* %176, i8** %6, align 8
  br label %177

177:                                              ; preds = %175, %173
  br label %178

178:                                              ; preds = %177, %164
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %179, i32 %182)
  store i32 0, i32* %2, align 4
  br label %235

184:                                              ; preds = %126
  br label %185

185:                                              ; preds = %184, %107
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  store i32 63, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  store i32 255, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %193
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %201
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %206, %201
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233)
  store i32 1, i32* %2, align 4
  br label %235

235:                                              ; preds = %221, %178, %117, %66
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @bd_check_extensions(i32) #1

declare dso_local i32 @bd_reset_disk(i32) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

declare dso_local i32 @bd_get_diskinfo_ext(%struct.TYPE_9__*) #1

declare dso_local i32 @bd_get_diskinfo_std(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
