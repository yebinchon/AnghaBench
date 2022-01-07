; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64 }

@B_NODUPS = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32*)* @__bt_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_first(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call %struct.TYPE_15__* @__bt_search(%struct.TYPE_16__* %14, i32* %15, i32* %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  %18 = icmp eq %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %208

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %161

24:                                               ; preds = %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = load i32, i32* @B_NODUPS, align 4
  %27 = call i64 @F_ISSET(%struct.TYPE_16__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = bitcast %struct.TYPE_15__* %30 to i8*
  %33 = bitcast %struct.TYPE_15__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %34, i32* %5, align 4
  br label %208

35:                                               ; preds = %24
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %37 = bitcast %struct.TYPE_15__* %12 to i8*
  %38 = bitcast %struct.TYPE_15__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %10, align 8
  br label %42

42:                                               ; preds = %135, %35
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = call i32 @mpool_put(i32 %56, %struct.TYPE_14__* %58, i32 0)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = bitcast %struct.TYPE_15__* %12 to i8*
  %62 = bitcast %struct.TYPE_15__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %68

63:                                               ; preds = %42
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %53
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %130

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @P_INVALID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %141

80:                                               ; preds = %73
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = call i32 @mpool_put(i32 %92, %struct.TYPE_14__* %93, i32 0)
  br label %95

95:                                               ; preds = %89, %80
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call %struct.TYPE_14__* @mpool_get(i32 %98, i64 %101, i32 0)
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %10, align 8
  %103 = icmp eq %struct.TYPE_14__* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %95
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %107, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i32 @mpool_put(i32 %116, %struct.TYPE_14__* %118, i32 0)
  br label %120

120:                                              ; preds = %113, %104
  %121 = load i32, i32* @RET_ERROR, align 4
  store i32 %121, i32* %5, align 4
  br label %208

122:                                              ; preds = %95
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = call i64 @NEXTINDEX(%struct.TYPE_14__* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %68
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %139 = call i64 @__bt_cmp(%struct.TYPE_16__* %136, i32* %137, %struct.TYPE_15__* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %42, label %141

141:                                              ; preds = %135, %79
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %144, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = call i32 @mpool_put(i32 %153, %struct.TYPE_14__* %154, i32 0)
  br label %156

156:                                              ; preds = %150, %141
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = bitcast %struct.TYPE_15__* %157 to i8*
  %159 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  %160 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %160, i32* %5, align 4
  br label %208

161:                                              ; preds = %20
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = call i64 @NEXTINDEX(%struct.TYPE_14__* %167)
  %169 = icmp eq i64 %164, %168
  br i1 %169, label %170, label %202

170:                                              ; preds = %161
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  store %struct.TYPE_14__* %173, %struct.TYPE_14__** %10, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %13, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %181 = call i32 @mpool_put(i32 %179, %struct.TYPE_14__* %180, i32 0)
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* @P_INVALID, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %170
  %186 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %186, i32* %5, align 4
  br label %208

187:                                              ; preds = %170
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %13, align 8
  %192 = call %struct.TYPE_14__* @mpool_get(i32 %190, i64 %191, i32 0)
  store %struct.TYPE_14__* %192, %struct.TYPE_14__** %10, align 8
  %193 = icmp eq %struct.TYPE_14__* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @RET_ERROR, align 4
  store i32 %195, i32* %5, align 4
  br label %208

196:                                              ; preds = %187
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  store %struct.TYPE_14__* %199, %struct.TYPE_14__** %201, align 8
  br label %202

202:                                              ; preds = %196, %161
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %205 = bitcast %struct.TYPE_15__* %203 to i8*
  %206 = bitcast %struct.TYPE_15__* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 16, i1 false)
  %207 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202, %194, %185, %156, %120, %29, %19
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_15__* @__bt_search(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mpool_put(i32, %struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @mpool_get(i32, i64, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_14__*) #1

declare dso_local i64 @__bt_cmp(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
