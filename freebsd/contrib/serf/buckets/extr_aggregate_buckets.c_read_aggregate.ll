; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_read_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_read_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 (i32, %struct.TYPE_8__*)*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.iovec = type { i64 }

@APR_EOF = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_ERROR_WAIT_CONN = common dso_local global i32 0, align 4
@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32, %struct.iovec*, i32*)* @read_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_aggregate(%struct.TYPE_8__* %0, i64 %1, i32 %2, %struct.iovec* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %12, align 8
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %28, align 8
  %30 = icmp ne i32 (i32, %struct.TYPE_8__*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i32 %34(i32 %37, %struct.TYPE_8__* %38)
  store i32 %39, i32* %6, align 4
  br label %168

40:                                               ; preds = %26
  %41 = load i32, i32* @APR_EOF, align 4
  store i32 %41, i32* %6, align 4
  br label %168

42:                                               ; preds = %5
  %43 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %165, %42
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %166

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %15, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.iovec*, %struct.iovec** %10, align 8
  %57 = call i32 @serf_bucket_read_iovec(%struct.TYPE_8__* %53, i64 %54, i32 %55, %struct.iovec* %56, i32* %13)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @SERF_BUCKET_READ_ERROR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %168

63:                                               ; preds = %47
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %165

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @APR_STATUS_IS_EAGAIN(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @SERF_ERROR_WAIT_CONN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76, %73
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %168

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %16, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %86
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %113, align 8
  %115 = icmp ne i32 (i32, %struct.TYPE_8__*)* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = call i32 %119(i32 %122, %struct.TYPE_8__* %123)
  store i32 %124, i32* %6, align 4
  br label %168

125:                                              ; preds = %111
  %126 = load i32, i32* @APR_EOF, align 4
  store i32 %126, i32* %6, align 4
  br label %168

127:                                              ; preds = %86
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %145, %131
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %132
  %137 = load %struct.iovec*, %struct.iovec** %10, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %137, i64 %139
  %141 = getelementptr inbounds %struct.iovec, %struct.iovec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = sub nsw i64 %143, %142
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %132

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %127
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.iovec*, %struct.iovec** %10, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.iovec, %struct.iovec* %154, i64 %155
  store %struct.iovec* %156, %struct.iovec** %10, align 8
  %157 = load i64, i64* %8, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159, %149
  %163 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %163, i32* %6, align 4
  br label %168

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %70
  br label %44

166:                                              ; preds = %44
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %166, %162, %125, %116, %84, %61, %40, %31
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @serf_bucket_read_iovec(%struct.TYPE_8__*, i64, i32, %struct.iovec*, i32*) #1

declare dso_local i64 @SERF_BUCKET_READ_ERROR(i32) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
