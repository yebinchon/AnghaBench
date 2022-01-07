; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_blk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.block = type { i64*, i64, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.slist*, %struct.edge* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.slist = type { %struct.TYPE_16__, %struct.slist* }
%struct.TYPE_16__ = type { i32 }
%struct.edge = type { %struct.TYPE_11__*, %struct.edge* }
%struct.TYPE_11__ = type { i64* }

@N_ATOMS = common dso_local global i32 0, align 4
@A_ATOM = common dso_local global i64 0, align 8
@X_ATOM = common dso_local global i64 0, align 8
@VAL_UNKNOWN = common dso_local global i64 0, align 8
@BPF_RET = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@BPF_JMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, %struct.block*, i32)* @opt_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_blk(i32* %0, %struct.TYPE_15__* %1, %struct.block* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.slist*, align 8
  %10 = alloca %struct.edge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.block* %2, %struct.block** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.block*, %struct.block** %7, align 8
  %15 = getelementptr inbounds %struct.block, %struct.block* %14, i32 0, i32 7
  %16 = load %struct.edge*, %struct.edge** %15, align 8
  store %struct.edge* %16, %struct.edge** %10, align 8
  %17 = load %struct.edge*, %struct.edge** %10, align 8
  %18 = icmp eq %struct.edge* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.block*, %struct.block** %7, align 8
  %21 = getelementptr inbounds %struct.block, %struct.block* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = bitcast i64* %22 to i8*
  %24 = call i32 @memset(i8* %23, i32 0, i32 8)
  br label %78

25:                                               ; preds = %4
  %26 = load %struct.block*, %struct.block** %7, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = bitcast i64* %28 to i8*
  %30 = load %struct.edge*, %struct.edge** %10, align 8
  %31 = getelementptr inbounds %struct.edge, %struct.edge* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = bitcast i64* %34 to i8*
  %36 = call i32 @memcpy(i8* %29, i8* %35, i32 8)
  br label %37

37:                                               ; preds = %76, %25
  %38 = load %struct.edge*, %struct.edge** %10, align 8
  %39 = getelementptr inbounds %struct.edge, %struct.edge* %38, i32 0, i32 1
  %40 = load %struct.edge*, %struct.edge** %39, align 8
  store %struct.edge* %40, %struct.edge** %10, align 8
  %41 = icmp ne %struct.edge* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @N_ATOMS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.block*, %struct.block** %7, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.edge*, %struct.edge** %10, align 8
  %56 = getelementptr inbounds %struct.edge, %struct.edge* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %54, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %47
  %66 = load %struct.block*, %struct.block** %7, align 8
  %67 = getelementptr inbounds %struct.block, %struct.block* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %65, %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %43

76:                                               ; preds = %43
  br label %37

77:                                               ; preds = %37
  br label %78

78:                                               ; preds = %77, %19
  %79 = load %struct.block*, %struct.block** %7, align 8
  %80 = getelementptr inbounds %struct.block, %struct.block* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @A_ATOM, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load %struct.block*, %struct.block** %7, align 8
  %86 = getelementptr inbounds %struct.block, %struct.block* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @X_ATOM, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %13, align 8
  %91 = load %struct.block*, %struct.block** %7, align 8
  %92 = getelementptr inbounds %struct.block, %struct.block* %91, i32 0, i32 6
  %93 = load %struct.slist*, %struct.slist** %92, align 8
  store %struct.slist* %93, %struct.slist** %9, align 8
  br label %94

94:                                               ; preds = %107, %78
  %95 = load %struct.slist*, %struct.slist** %9, align 8
  %96 = icmp ne %struct.slist* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = load %struct.slist*, %struct.slist** %9, align 8
  %101 = getelementptr inbounds %struct.slist, %struct.slist* %100, i32 0, i32 0
  %102 = load %struct.block*, %struct.block** %7, align 8
  %103 = getelementptr inbounds %struct.block, %struct.block* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @opt_stmt(i32* %98, %struct.TYPE_15__* %99, %struct.TYPE_16__* %101, i64* %104, i32 %105)
  br label %107

107:                                              ; preds = %97
  %108 = load %struct.slist*, %struct.slist** %9, align 8
  %109 = getelementptr inbounds %struct.slist, %struct.slist* %108, i32 0, i32 1
  %110 = load %struct.slist*, %struct.slist** %109, align 8
  store %struct.slist* %110, %struct.slist** %9, align 8
  br label %94

111:                                              ; preds = %94
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %164

114:                                              ; preds = %111
  %115 = load %struct.block*, %struct.block** %7, align 8
  %116 = getelementptr inbounds %struct.block, %struct.block* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* @VAL_UNKNOWN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %119
  %124 = load %struct.block*, %struct.block** %7, align 8
  %125 = getelementptr inbounds %struct.block, %struct.block* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @A_ATOM, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* @VAL_UNKNOWN, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.block*, %struct.block** %7, align 8
  %138 = getelementptr inbounds %struct.block, %struct.block* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @X_ATOM, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %136, %132, %123, %119, %114
  %146 = load %struct.block*, %struct.block** %7, align 8
  %147 = getelementptr inbounds %struct.block, %struct.block* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @BPF_CLASS(i32 %149)
  %151 = load i64, i64* @BPF_RET, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %145, %136
  %154 = load %struct.block*, %struct.block** %7, align 8
  %155 = getelementptr inbounds %struct.block, %struct.block* %154, i32 0, i32 6
  %156 = load %struct.slist*, %struct.slist** %155, align 8
  %157 = icmp ne %struct.slist* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.block*, %struct.block** %7, align 8
  %160 = getelementptr inbounds %struct.block, %struct.block* %159, i32 0, i32 6
  store %struct.slist* null, %struct.slist** %160, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %158, %153
  br label %171

164:                                              ; preds = %145, %111
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = load %struct.block*, %struct.block** %7, align 8
  %167 = call i32 @opt_peep(%struct.TYPE_15__* %165, %struct.block* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = load %struct.block*, %struct.block** %7, align 8
  %170 = call i32 @opt_deadstores(%struct.TYPE_15__* %168, %struct.block* %169)
  br label %171

171:                                              ; preds = %164, %163
  %172 = load %struct.block*, %struct.block** %7, align 8
  %173 = getelementptr inbounds %struct.block, %struct.block* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @BPF_SRC(i32 %175)
  %177 = load i64, i64* @BPF_K, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.block*, %struct.block** %7, align 8
  %181 = getelementptr inbounds %struct.block, %struct.block* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @K(i32 %183)
  %185 = load %struct.block*, %struct.block** %7, align 8
  %186 = getelementptr inbounds %struct.block, %struct.block* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  br label %196

187:                                              ; preds = %171
  %188 = load %struct.block*, %struct.block** %7, align 8
  %189 = getelementptr inbounds %struct.block, %struct.block* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @X_ATOM, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.block*, %struct.block** %7, align 8
  %195 = getelementptr inbounds %struct.block, %struct.block* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %187, %179
  %197 = load %struct.block*, %struct.block** %7, align 8
  %198 = getelementptr inbounds %struct.block, %struct.block* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.block*, %struct.block** %7, align 8
  %202 = getelementptr inbounds %struct.block, %struct.block* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 4
  %204 = load %struct.block*, %struct.block** %7, align 8
  %205 = getelementptr inbounds %struct.block, %struct.block* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 0, %207
  %209 = load %struct.block*, %struct.block** %7, align 8
  %210 = getelementptr inbounds %struct.block, %struct.block* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @opt_stmt(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @opt_peep(%struct.TYPE_15__*, %struct.block*) #1

declare dso_local i32 @opt_deadstores(%struct.TYPE_15__*, %struct.block*) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i64 @K(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
