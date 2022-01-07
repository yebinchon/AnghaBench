; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_init_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_init_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64 }
%struct.stat = type { i32 }

@BYTE_ORDER = common dso_local global i64 0, align 8
@DEF_BUCKET_SIZE = common dso_local global i32 0, align 4
@DEF_BUCKET_SHIFT = common dso_local global i32 0, align 4
@DEF_SEGSIZE = common dso_local global i32 0, align 4
@DEF_SEGSIZE_SHIFT = common dso_local global i32 0, align 4
@DEF_DIRSIZE = common dso_local global i32 0, align 4
@DEF_FFACTOR = common dso_local global i64 0, align 8
@__default_hash = common dso_local global i64 0, align 8
@MAX_BSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BIG_ENDIAN = common dso_local global i64 0, align 8
@LITTLE_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i8*, %struct.TYPE_8__*)* @init_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @init_hash(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 10
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* @BYTE_ORDER, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @DEF_BUCKET_SIZE, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @DEF_BUCKET_SHIFT, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DEF_SEGSIZE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @DEF_SEGSIZE_SHIFT, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEF_DIRSIZE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @DEF_FFACTOR, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* @__default_hash, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @stat(i8* %47, %struct.stat* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %168

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_BSIZE, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @MAX_BSIZE, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @__log2(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %160

76:                                               ; preds = %73
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @__log2(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MAX_BSIZE, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %81
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %168

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @BIG_ENDIAN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LITTLE_ENDIAN, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %168

153:                                              ; preds = %145, %139
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %153, %134
  br label %160

160:                                              ; preds = %159, %73
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i64 @init_htab(%struct.TYPE_7__* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %168

166:                                              ; preds = %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %4, align 8
  br label %168

168:                                              ; preds = %166, %165, %151, %100, %50
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %169
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @__log2(i32) #1

declare dso_local i64 @init_htab(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
