; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_finishOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_finishOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@TM_LE = common dso_local global i32 0, align 4
@OP_JMP = common dso_local global i32 0, align 4
@OP_TFORLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_finishOp(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %3, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_OPCODE(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %181 [
    i32 147, label %29
    i32 131, label %29
    i32 136, label %29
    i32 144, label %29
    i32 137, label %29
    i32 135, label %29
    i32 128, label %29
    i32 139, label %29
    i32 141, label %29
    i32 142, label %29
    i32 134, label %29
    i32 140, label %40
    i32 138, label %40
    i32 143, label %40
    i32 145, label %101
    i32 129, label %151
    i32 146, label %168
    i32 130, label %180
    i32 132, label %180
    i32 133, label %180
  ]

29:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GETARG_A(i32 %32)
  %34 = add nsw i32 %31, %33
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = call i32 @setobjs2s(%struct.TYPE_12__* %30, i32 %34, i32 %38)
  br label %183

40:                                               ; preds = %1, %1, %1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @l_isfalse(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @GETARG_B(i32 %53)
  %55 = call i32 @ISK(i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @lua_assert(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 140
  br i1 %61, label %62, label %77

62:                                               ; preds = %40
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @GETARG_B(i32 %65)
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* @TM_LE, align 4
  %69 = call i32 @luaT_gettmbyobj(%struct.TYPE_12__* %63, i32 %67, i32 %68)
  %70 = call i32 @ttisnil(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %62, %40
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GET_OPCODE(i32 %83)
  %85 = load i32, i32* @OP_JMP, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @lua_assert(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @GETARG_A(i32 %90)
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %77
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %97, align 8
  br label %100

100:                                              ; preds = %93, %77
  br label %183

101:                                              ; preds = %1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @GETARG_B(i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %110, %111
  %113 = sub nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = call i32 @cast_int(i64 %114)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %117, 2
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @setobj2s(%struct.TYPE_12__* %116, i32 %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %101
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @luaV_concat(%struct.TYPE_12__* %128, i32 %129)
  br label %131

131:                                              ; preds = %123, %101
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @GETARG_A(i32 %138)
  %140 = add nsw i32 %137, %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @setobj2s(%struct.TYPE_12__* %132, i32 %140, i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %183

151:                                              ; preds = %1
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @GET_OPCODE(i32 %157)
  %159 = load i32, i32* @OP_TFORLOOP, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @lua_assert(i32 %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %183

168:                                              ; preds = %1
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @GETARG_C(i32 %169)
  %171 = sub nsw i32 %170, 1
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  br label %183

180:                                              ; preds = %1, %1, %1
  br label %183

181:                                              ; preds = %1
  %182 = call i32 @lua_assert(i32 0)
  br label %183

183:                                              ; preds = %181, %180, %179, %151, %131, %100, %29
  ret void
}

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @l_isfalse(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ISK(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @ttisnil(i32) #1

declare dso_local i32 @luaT_gettmbyobj(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i32 @setobj2s(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @luaV_concat(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GETARG_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
