; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_find_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_find_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }

@SA_BONUS = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@SA_SPILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32*, i64, i32, i32*, i32*, i32*)* @sa_find_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_find_sizes(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @SA_BONUS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %9
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %18, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %17, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @B_TRUE, align 4
  %37 = load i32*, i32** %19, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %10, align 4
  br label %197

38:                                               ; preds = %28, %9
  %39 = load i32*, i32** %17, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i32*, i32** %18, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @B_FALSE, align 4
  %42 = load i32*, i32** %19, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %23, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i64 @SA_BONUSTYPE_FROM_DB(i32* %43)
  %45 = load i64, i64* @DMU_OT_ZNODE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 0, i64 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @IS_P2ALIGNED(i32 %50, i32 8)
  %52 = call i32 @ASSERT(i32 %51)
  store i32 0, i32* %21, align 4
  br label %53

53:                                               ; preds = %182, %38
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %185

57:                                               ; preds = %53
  %58 = load i32*, i32** %18, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @P2ROUNDUP(i32 %59, i32 8)
  %61 = load i32*, i32** %18, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %67
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %182

77:                                               ; preds = %57
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @SA_REGISTERED_LEN(%struct.TYPE_6__* %78, i32 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* %24, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %144

96:                                               ; preds = %93
  %97 = load i32, i32* %20, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %144

99:                                               ; preds = %96
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @SA_SPILL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32 @P2ROUNDUP(i32 %107, i32 8)
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %103, %99
  %115 = load i32, i32* %22, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %22, align 4
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32, i32* %23, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %23, align 4
  br label %127

127:                                              ; preds = %122, %114
  br label %143

128:                                              ; preds = %103
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* @SA_BONUS, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* %21, align 4
  %139 = load i32*, i32** %17, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %128
  %141 = load i32, i32* @B_TRUE, align 4
  %142 = load i32*, i32** %19, align 8
  store i32 %141, i32* %142, align 4
  br label %182

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %96, %93
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* @SA_BONUS, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %22, align 4
  %156 = call i32 @P2ROUNDUP(i32 %155, i32 8)
  %157 = add nsw i32 %154, %156
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 4
  %162 = icmp ugt i64 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load i32, i32* %21, align 4
  %165 = load i32*, i32** %17, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %152, %148, %144
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %22, align 4
  %170 = call i32 @P2ROUNDUP(i32 %169, i32 8)
  %171 = add nsw i32 %168, %170
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* @SA_BONUS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* @B_TRUE, align 4
  %180 = load i32*, i32** %19, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %174, %166
  br label %182

182:                                              ; preds = %181, %140, %76
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %53

185:                                              ; preds = %53
  %186 = load i32*, i32** %19, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %22, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %22, align 4
  br label %193

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %22, align 4
  %195 = call i32 @P2ROUNDUP(i32 %194, i32 8)
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %193, %33
  %198 = load i32, i32* %10, align 4
  ret i32 %198
}

declare dso_local i64 @SA_BONUSTYPE_FROM_DB(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i64 @SA_REGISTERED_LEN(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
