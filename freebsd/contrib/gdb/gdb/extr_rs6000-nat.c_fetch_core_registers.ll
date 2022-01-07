; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_core_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_core_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Gdb error: unknown parameter to fetch_core_registers().\0A\00", align 1
@FP0_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @fetch_core_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_core_registers(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gdbarch_tdep*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %12)
  store %struct.gdbarch_tdep* %13, %struct.gdbarch_tdep** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @gdb_stderr, align 4
  %18 = call i32 @fprintf_unfiltered(i32 %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %224

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = call i64 (...) @ARCH64()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %117

24:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @supply_register(i32 %29, i8* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %25

42:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* @FP0_REGNUM, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @supply_register(i32 %49, i8* %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load i32, i32* @PC_REGNUM, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = bitcast i32* %66 to i8*
  %68 = call i32 @supply_register(i32 %63, i8* %67)
  %69 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %70 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = bitcast i32* %74 to i8*
  %76 = call i32 @supply_register(i32 %71, i8* %75)
  %77 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %78 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @supply_register(i32 %79, i8* %83)
  %85 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %86 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @supply_register(i32 %87, i8* %91)
  %93 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %94 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = bitcast i32* %98 to i8*
  %100 = call i32 @supply_register(i32 %95, i8* %99)
  %101 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %102 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = bitcast i32* %106 to i8*
  %108 = call i32 @supply_register(i32 %103, i8* %107)
  %109 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %110 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = bitcast i32* %114 to i8*
  %116 = call i32 @supply_register(i32 %111, i8* %115)
  br label %224

117:                                              ; preds = %19
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %132, %117
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 32
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = bitcast i32* %129 to i8*
  %131 = call i32 @supply_register(i32 %122, i8* %130)
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %118

135:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %152, %135
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %137, 32
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load i32, i32* @FP0_REGNUM, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = bitcast i32* %149 to i8*
  %151 = call i32 @supply_register(i32 %142, i8* %150)
  br label %152

152:                                              ; preds = %139
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %136

155:                                              ; preds = %136
  %156 = load i32, i32* @PC_REGNUM, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 7
  %160 = bitcast i32* %159 to i8*
  %161 = call i32 @supply_register(i32 %156, i8* %160)
  %162 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %163 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 6
  %168 = bitcast i32* %167 to i8*
  %169 = call i32 @supply_register(i32 %164, i8* %168)
  %170 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %171 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 5
  %176 = bitcast i32* %175 to i8*
  %177 = call i32 @supply_register(i32 %172, i8* %176)
  %178 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %179 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  %184 = bitcast i32* %183 to i8*
  %185 = call i32 @supply_register(i32 %180, i8* %184)
  %186 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %187 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = bitcast i32* %191 to i8*
  %193 = call i32 @supply_register(i32 %188, i8* %192)
  %194 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %195 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = bitcast i32* %199 to i8*
  %201 = call i32 @supply_register(i32 %196, i8* %200)
  %202 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %203 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = bitcast i32* %207 to i8*
  %209 = call i32 @supply_register(i32 %204, i8* %208)
  %210 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %211 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %155
  %215 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %216 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = bitcast i32* %220 to i8*
  %222 = call i32 @supply_register(i32 %217, i8* %221)
  br label %223

223:                                              ; preds = %214, %155
  br label %224

224:                                              ; preds = %16, %223, %62
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i64 @ARCH64(...) #1

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
