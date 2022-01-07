; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.zfsdsk = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@DEV_GELIBOOT_BSIZE = common dso_local global i32 0, align 4
@READ_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Shortening read at %lld from %d to %lld\0A\00", align 1
@dmadat = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @vdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_read(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.zfsdsk*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.zfsdsk*
  store %struct.zfsdsk* %20, %struct.zfsdsk** %18, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @DEV_BSIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @DEV_BSIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %5
  store i32 -1, i32* %6, align 4
  br label %180

34:                                               ; preds = %26
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @DEV_BSIZE, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %40 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DEV_GELIBOOT_BSIZE, align 4
  %47 = call i32 @rounddown2(i32 %45, i32 %46)
  %48 = load i32, i32* @DEV_BSIZE, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %51 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @DEV_BSIZE, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %149, %34
  %62 = load i64, i64* %11, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %179

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* @DEV_BSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @READ_BUF_SIZE, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* @DEV_BSIZE, align 4
  %75 = sdiv i32 %73, %74
  %76 = icmp ugt i32 %70, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* @READ_BUF_SIZE, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* @DEV_BSIZE, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %77, %64
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @DEV_BSIZE, align 4
  %86 = mul i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %86, %87
  %89 = load i32, i32* @DEV_GELIBOOT_BSIZE, align 4
  %90 = call i32 @roundup2(i32 %88, i32 %89)
  %91 = load i32, i32* @DEV_BSIZE, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %94 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %83
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %17, align 4
  %101 = add i32 %99, %100
  %102 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %103 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %107 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %105, %109
  %111 = icmp ugt i32 %101, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %98
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %116 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %120 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %118, %122
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114, i32 %125)
  %127 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %128 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %132 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %130, %134
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %112, %98, %83
  %139 = load %struct.zfsdsk*, %struct.zfsdsk** %18, align 8
  %140 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmadat, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i64 @drvread(%struct.TYPE_3__* %140, i64 %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i32 -1, i32* %6, align 4
  br label %180

149:                                              ; preds = %138
  %150 = load i8*, i8** %12, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmadat, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @DEV_BSIZE, align 4
  %159 = mul i32 %157, %158
  %160 = call i32 @memcpy(i8* %150, i64 %156, i32 %159)
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @DEV_BSIZE, align 4
  %163 = mul i32 %161, %162
  %164 = load i8*, i8** %12, align 8
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %12, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %14, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @DEV_BSIZE, align 4
  %175 = mul i32 %173, %174
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %11, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %11, align 8
  store i32 0, i32* %15, align 4
  br label %61

179:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %179, %148, %33
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i64 @drvread(%struct.TYPE_3__*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
