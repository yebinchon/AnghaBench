; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_ufs2_blksout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_ufs2_blksout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }
%union.dinode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ufs2_blksout.writingextdata = internal global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_7__* null, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@spcl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tp_bshift = common dso_local global i32 0, align 4
@TP_NINDIR = common dso_local global i32 0, align 4
@TS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.dinode*, i64*, i32, i32, i32)* @ufs2_blksout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs2_blksout(%union.dinode* %0, i64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %union.dinode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load i32, i32* @TP_BSIZE, align 4
  %25 = call i32 @howmany(i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %5
  %29 = load i32, i32* @ufs2_blksout.writingextdata, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 3), align 8
  %34 = call i32 @fragoff(%struct.TYPE_7__* %32, i32 %33)
  %35 = load i32, i32* @TP_BSIZE, align 4
  %36 = call i32 @howmany(i32 %34, i32 %35)
  store i32 %36, i32* %15, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %39 = load %union.dinode*, %union.dinode** %6, align 8
  %40 = bitcast %union.dinode* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fragoff(%struct.TYPE_7__* %38, i32 %42)
  %44 = load i32, i32* @TP_BSIZE, align 4
  %45 = call i32 @howmany(i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %37, %31
  %47 = load i32, i32* %15, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TP_BSIZE, align 4
  %54 = call i32 @howmany(i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %49, %46
  br label %60

60:                                               ; preds = %59, %5
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @tp_bshift, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %203, %60
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %207

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @TP_NINDIR, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %14, align 4
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @TP_NINDIR, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %76
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @TP_NINDIR, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp sle i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %119, %82
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i64*, i64** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %17, align 4
  %99 = sdiv i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 0), align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32 1, i32* %110, align 4
  br label %118

111:                                              ; preds = %95
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 0), align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %91

122:                                              ; preds = %91
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 1), align 8
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @ufs2_blksout.writingextdata, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load %union.dinode*, %union.dinode** %6, align 8
  %137 = call i32 @appendextdata(%union.dinode* %136)
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %135, %132, %128, %122
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @writeheader(i32 %139)
  %141 = load i64*, i64** %7, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %141, i64 %145
  store i64* %146, i64** %11, align 8
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %180, %138
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load i64*, i64** %11, align 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %14, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load i64*, i64** %11, align 8
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sblock, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dumpblock(i64 %164, i32 %167)
  br label %178

169:                                              ; preds = %156
  %170 = load i64*, i64** %11, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* @TP_BSIZE, align 4
  %176 = mul nsw i32 %174, %175
  %177 = call i32 @dumpblock(i64 %171, i32 %176)
  br label %178

178:                                              ; preds = %169, %162
  br label %179

179:                                              ; preds = %178, %152
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %13, align 4
  %184 = load i64*, i64** %11, align 8
  %185 = getelementptr inbounds i64, i64* %184, i32 1
  store i64* %185, i64** %11, align 8
  br label %148

186:                                              ; preds = %148
  %187 = load i32, i32* @TS_ADDR, align 4
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 1), align 8
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load i32, i32* @ufs2_blksout.writingextdata, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  store i32 1, i32* @ufs2_blksout.writingextdata, align 4
  %198 = load %union.dinode*, %union.dinode** %6, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %18, align 4
  %201 = call i32 @writeextdata(%union.dinode* %198, i32 %199, i32 %200)
  store i32 0, i32* @ufs2_blksout.writingextdata, align 4
  br label %202

202:                                              ; preds = %197, %194, %190, %186
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* @TP_NINDIR, align 4
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %12, align 4
  br label %66

207:                                              ; preds = %66
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @fragoff(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @appendextdata(%union.dinode*) #1

declare dso_local i32 @writeheader(i32) #1

declare dso_local i32 @dumpblock(i64, i32) #1

declare dso_local i32 @writeextdata(%union.dinode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
