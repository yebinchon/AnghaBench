; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_resolveP2Values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_resolveP2Values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i64 }

@SQLITE_MX_JUMP_OPCODE = common dso_local global i32 0, align 4
@sqlite3BtreeNext = common dso_local global i32 0, align 4
@P4_ADVANCE = common dso_local global i8* null, align 8
@sqlite3BtreePrevious = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@sqlite3OpcodeProperty = common dso_local global i32* null, align 8
@OPFLG_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @resolveP2Values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveP2Values(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  br label %31

31:                                               ; preds = %2, %196
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SQLITE_MX_JUMP_OPCODE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %189

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %129 [
    i32 131, label %41
    i32 138, label %50
    i32 133, label %50
    i32 137, label %53
    i32 128, label %53
    i32 136, label %53
    i32 135, label %58
    i32 132, label %58
    i32 134, label %72
    i32 129, label %86
    i32 130, label %99
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %37, %37, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %169

53:                                               ; preds = %37, %37, %37
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %169

58:                                               ; preds = %37, %37
  %59 = load i32, i32* @sqlite3BtreeNext, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** @P4_ADVANCE, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %169

72:                                               ; preds = %37
  %73 = load i32, i32* @sqlite3BtreePrevious, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i8*, i8** @P4_ADVANCE, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %169

86:                                               ; preds = %37
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp sgt i64 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %86
  br label %169

99:                                               ; preds = %37
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = ptrtoint %struct.TYPE_9__* %100 to i64
  %105 = ptrtoint %struct.TYPE_9__* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 40
  %108 = icmp sge i64 %107, 3
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 -1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @OP_Integer, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 -1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %99
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %99
  br label %129

129:                                              ; preds = %37, %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %129
  %135 = load i32*, i32** @sqlite3OpcodeProperty, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @OPFLG_JUMP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @ADDR(i64 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 0, %153
  %155 = icmp ult i64 %150, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @ADDR(i64 %161)
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %134, %129
  br label %169

169:                                              ; preds = %168, %98, %72, %58, %53, %50
  %170 = load i32*, i32** @sqlite3OpcodeProperty, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @OPFLG_JUMP, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %169
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp sge i64 %183, 0
  br label %185

185:                                              ; preds = %180, %169
  %186 = phi i1 [ true, %169 ], [ %184, %180 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %189

189:                                              ; preds = %185, %31
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = icmp eq %struct.TYPE_9__* %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %199

196:                                              ; preds = %189
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 -1
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %6, align 8
  br label %31

199:                                              ; preds = %195
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @sqlite3DbFree(i32 %202, i32* %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store i32* null, i32** %208, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* %5, align 4
  %212 = load i32*, i32** %4, align 8
  store i32 %211, i32* %212, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %199
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @DbMaskAllZero(i32 %220)
  %222 = icmp ne i64 %221, 0
  br label %223

223:                                              ; preds = %217, %199
  %224 = phi i1 [ true, %199 ], [ %222, %217 ]
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ADDR(i64) #1

declare dso_local i32 @sqlite3DbFree(i32, i32*) #1

declare dso_local i64 @DbMaskAllZero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
