; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconstruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@vdev_raidz_default_to_general = common dso_local global i32 0, align 4
@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @vdev_raidz_reconstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_reconstruct(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  store i32 1, i32* %12, align 4
  br label %26

26:                                               ; preds = %45, %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %35, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %16, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %129, %48
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %132

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %25, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %63
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %79, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %22, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %128

94:                                               ; preds = %78, %74
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %22, i64 %108
  store i32 %105, i32* %109, align 4
  br label %127

110:                                              ; preds = %94
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %16, align 4
  br label %126

119:                                              ; preds = %110
  %120 = load i32, i32* @B_TRUE, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %25, i64 %122
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %104
  br label %128

128:                                              ; preds = %127, %86
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %57

132:                                              ; preds = %57
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @ASSERT(i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = icmp sge i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ASSERT(i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ASSERT(i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %22, i64 %150
  store i32* %151, i32** %10, align 8
  %152 = load i32, i32* @vdev_raidz_default_to_general, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %215, label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %16, align 4
  switch i32 %155, label %214 [
    i32 1, label %156
    i32 2, label %187
  ]

156:                                              ; preds = %154
  %157 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %158 = getelementptr inbounds i32, i32* %25, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @vdev_raidz_reconstruct_p(%struct.TYPE_9__* %162, i32* %163, i32 1)
  store i32 %164, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %230

165:                                              ; preds = %156
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 1
  %170 = zext i1 %169 to i32
  %171 = call i32 @ASSERT(i32 %170)
  %172 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %173 = getelementptr inbounds i32, i32* %25, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @vdev_raidz_reconstruct_q(%struct.TYPE_9__* %177, i32* %178, i32 1)
  store i32 %179, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %230

180:                                              ; preds = %165
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 2
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  br label %214

187:                                              ; preds = %154
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 1
  %192 = zext i1 %191 to i32
  %193 = call i32 @ASSERT(i32 %192)
  %194 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %195 = getelementptr inbounds i32, i32* %25, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %187
  %199 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %200 = getelementptr inbounds i32, i32* %25, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = call i32 @vdev_raidz_reconstruct_pq(%struct.TYPE_9__* %204, i32* %205, i32 2)
  store i32 %206, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %230

207:                                              ; preds = %198, %187
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp sgt i32 %210, 2
  %212 = zext i1 %211 to i32
  %213 = call i32 @ASSERT(i32 %212)
  br label %214

214:                                              ; preds = %154, %207, %180
  br label %215

215:                                              ; preds = %214, %132
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @vdev_raidz_reconstruct_general(%struct.TYPE_9__* %216, i32* %22, i32 %217)
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %221 = shl i32 1, %220
  %222 = icmp slt i32 %219, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @ASSERT(i32 %223)
  %225 = load i32, i32* %14, align 4
  %226 = icmp sgt i32 %225, 0
  %227 = zext i1 %226 to i32
  %228 = call i32 @ASSERT(i32 %227)
  %229 = load i32, i32* %14, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %230

230:                                              ; preds = %215, %203, %176, %161
  %231 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_p(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_q(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_pq(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_general(%struct.TYPE_9__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
