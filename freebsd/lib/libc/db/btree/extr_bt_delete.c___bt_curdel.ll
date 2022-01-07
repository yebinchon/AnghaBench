; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_curdel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_curdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }

@CURS_AFTER = common dso_local global i32 0, align 4
@CURS_BEFORE = common dso_local global i32 0, align 4
@CURS_ACQUIRE = common dso_local global i32 0, align 4
@B_NODUPS = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, %struct.TYPE_19__*, i64)* @__bt_curdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_curdel(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_19__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %10, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %18 = load i32, i32* @CURS_AFTER, align 4
  %19 = load i32, i32* @CURS_BEFORE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CURS_ACQUIRE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @F_CLR(%struct.TYPE_21__* %17, i32 %22)
  store i32 0, i32* %13, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = load i32, i32* @B_NODUPS, align 4
  %26 = call i32 @F_ISSET(%struct.TYPE_22__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %191, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = call i32 @__bt_ret(%struct.TYPE_22__* %36, %struct.TYPE_20__* %11, i32* %38, i32* %40, i32* null, i32* null, i32 1)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @RET_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %214

46:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %46, %28
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @__bt_cmp(%struct.TYPE_22__* %58, i32* %59, %struct.TYPE_20__* %11)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %64 = load i32, i32* @CURS_BEFORE, align 4
  %65 = call i32 @F_SET(%struct.TYPE_21__* %63, i32 %64)
  br label %170

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = call i64 @NEXTINDEX(%struct.TYPE_19__* %69)
  %71 = sub nsw i64 %70, 1
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @__bt_cmp(%struct.TYPE_22__* %79, i32* %80, %struct.TYPE_20__* %11)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %85 = load i32, i32* @CURS_AFTER, align 4
  %86 = call i32 @F_SET(%struct.TYPE_21__* %84, i32 %85)
  br label %170

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i64, i64* %9, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %129

91:                                               ; preds = %88
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @P_INVALID, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %91
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_19__* @mpool_get(i32 %100, i64 %103, i32 0)
  store %struct.TYPE_19__* %104, %struct.TYPE_19__** %12, align 8
  %105 = icmp eq %struct.TYPE_19__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @RET_ERROR, align 4
  store i32 %107, i32* %5, align 4
  br label %214

108:                                              ; preds = %97
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %112 = call i64 @NEXTINDEX(%struct.TYPE_19__* %111)
  %113 = sub nsw i64 %112, 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i64 @__bt_cmp(%struct.TYPE_22__* %115, i32* %116, %struct.TYPE_20__* %11)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %121 = load i32, i32* @CURS_BEFORE, align 4
  %122 = call i32 @F_SET(%struct.TYPE_21__* %120, i32 %121)
  br label %164

123:                                              ; preds = %108
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %128 = call i32 @mpool_put(i32 %126, %struct.TYPE_19__* %127, i32 0)
  br label %129

129:                                              ; preds = %123, %91, %88
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = call i64 @NEXTINDEX(%struct.TYPE_19__* %131)
  %133 = sub nsw i64 %132, 1
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %190

135:                                              ; preds = %129
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @P_INVALID, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %190

141:                                              ; preds = %135
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call %struct.TYPE_19__* @mpool_get(i32 %144, i64 %147, i32 0)
  store %struct.TYPE_19__* %148, %struct.TYPE_19__** %12, align 8
  %149 = icmp eq %struct.TYPE_19__* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @RET_ERROR, align 4
  store i32 %151, i32* %5, align 4
  br label %214

152:                                              ; preds = %141
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = call i64 @__bt_cmp(%struct.TYPE_22__* %156, i32* %157, %struct.TYPE_20__* %11)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %152
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %162 = load i32, i32* @CURS_AFTER, align 4
  %163 = call i32 @F_SET(%struct.TYPE_21__* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %119
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %169 = call i32 @mpool_put(i32 %167, %struct.TYPE_19__* %168, i32 0)
  br label %170

170:                                              ; preds = %164, %83, %62
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  %183 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %183, i32* %5, align 4
  br label %214

184:                                              ; preds = %152
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %189 = call i32 @mpool_put(i32 %187, %struct.TYPE_19__* %188, i32 0)
  br label %190

190:                                              ; preds = %184, %135, %129
  br label %191

191:                                              ; preds = %190, %4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %193, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %194, i64* %195, align 8
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = call i32 @__bt_ret(%struct.TYPE_22__* %199, %struct.TYPE_20__* %11, i32* %201, i32* %203, i32* null, i32* null, i32 1)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* @RET_SUCCESS, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %198, %191
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %209 = load i32, i32* @CURS_ACQUIRE, align 4
  %210 = call i32 @F_SET(%struct.TYPE_21__* %208, i32 %209)
  %211 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %211, i32* %5, align 4
  br label %214

212:                                              ; preds = %198
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %207, %170, %150, %106, %44
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @F_CLR(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @__bt_ret(%struct.TYPE_22__*, %struct.TYPE_20__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @__bt_cmp(%struct.TYPE_22__*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @mpool_get(i32, i64, i32) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
