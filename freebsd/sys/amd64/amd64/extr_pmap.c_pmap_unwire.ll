; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@NBPML4 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pmap_unwire: pde %#jx is missing PG_W\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pmap_unwire: demotion failed\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pmap_unwire: pte %#jx is missing PG_W\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unwire(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @pmap_valid_bit(%struct.TYPE_10__* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i32 @PMAP_LOCK(%struct.TYPE_10__* %15)
  br label %17

17:                                               ; preds = %183, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %185

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @pmap_pml4e(%struct.TYPE_10__* %22, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NBPML4, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PML4MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %30
  br label %183

43:                                               ; preds = %21
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @pmap_pml4e_to_pdpe(i32* %44, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NBPDP, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @PDPMASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %52
  br label %183

65:                                               ; preds = %43
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @NBPDR, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @PDRMASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %65
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32* @pmap_pdpe_to_pde(i32* %78, i32 %79)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %183

87:                                               ; preds = %77
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PG_PS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %87
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PG_W, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @NBPDR, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @PG_W, align 4
  %116 = call i32 @atomic_clear_long(i32* %114, i32 %115)
  %117 = load i32, i32* @NBPDR, align 4
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = sdiv i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %120
  store i64 %125, i64* %123, align 8
  br label %183

126:                                              ; preds = %109, %103
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @pmap_demote_pde(%struct.TYPE_10__* %127, i32* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %126
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %87
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32* @pmap_pde_to_pte(i32* %143, i32 %144)
  store i32* %145, i32** %11, align 8
  br label %146

146:                                              ; preds = %176, %142
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %146
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %176

157:                                              ; preds = %150
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PG_W, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* @PG_W, align 4
  %170 = call i32 @atomic_clear_long(i32* %168, i32 %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, -1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %167, %156
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %11, align 8
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %5, align 4
  br label %146

182:                                              ; preds = %146
  br label %183

183:                                              ; preds = %182, %113, %86, %64, %42
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %5, align 4
  br label %17

185:                                              ; preds = %17
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %187 = call i32 @PMAP_UNLOCK(%struct.TYPE_10__* %186)
  ret void
}

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_10__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32* @pmap_pml4e(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @atomic_clear_long(i32*, i32) #1

declare dso_local i32 @pmap_demote_pde(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
