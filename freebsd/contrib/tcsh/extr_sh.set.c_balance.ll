; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_balance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32, %struct.varent*, %struct.varent*, i8**, %struct.varent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varent*, i32, i32)* @balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance(%struct.varent* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.varent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.varent*, align 8
  %8 = alloca %struct.varent*, align 8
  %9 = alloca i32, align 4
  store %struct.varent* %0, %struct.varent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %10

10:                                               ; preds = %207, %3
  %11 = load %struct.varent*, %struct.varent** %4, align 8
  %12 = getelementptr inbounds %struct.varent, %struct.varent* %11, i32 0, i32 4
  %13 = load %struct.varent*, %struct.varent** %12, align 8
  store %struct.varent* %13, %struct.varent** %7, align 8
  %14 = icmp ne %struct.varent* %13, null
  br i1 %14, label %15, label %210

15:                                               ; preds = %10
  %16 = load %struct.varent*, %struct.varent** %7, align 8
  %17 = getelementptr inbounds %struct.varent, %struct.varent* %16, i32 0, i32 1
  %18 = load %struct.varent*, %struct.varent** %17, align 8
  %19 = load %struct.varent*, %struct.varent** %4, align 8
  %20 = icmp eq %struct.varent* %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %15
  %27 = load %struct.varent*, %struct.varent** %4, align 8
  %28 = getelementptr inbounds %struct.varent, %struct.varent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %109 [
    i32 -1, label %30
    i32 0, label %33
    i32 1, label %36
  ]

30:                                               ; preds = %26
  %31 = load %struct.varent*, %struct.varent** %4, align 8
  %32 = getelementptr inbounds %struct.varent, %struct.varent* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %110

33:                                               ; preds = %26
  %34 = load %struct.varent*, %struct.varent** %4, align 8
  %35 = getelementptr inbounds %struct.varent, %struct.varent* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %110

36:                                               ; preds = %26
  %37 = load %struct.varent*, %struct.varent** %4, align 8
  %38 = getelementptr inbounds %struct.varent, %struct.varent* %37, i32 0, i32 1
  %39 = load %struct.varent*, %struct.varent** %38, align 8
  %40 = getelementptr inbounds %struct.varent, %struct.varent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %107 [
    i32 1, label %42
    i32 0, label %57
    i32 -1, label %72
  ]

42:                                               ; preds = %36
  %43 = load %struct.varent*, %struct.varent** %4, align 8
  %44 = call i8* @rleft(%struct.varent* %43)
  %45 = load %struct.varent*, %struct.varent** %7, align 8
  %46 = getelementptr inbounds %struct.varent, %struct.varent* %45, i32 0, i32 3
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  %51 = load %struct.varent*, %struct.varent** %4, align 8
  %52 = getelementptr inbounds %struct.varent, %struct.varent* %51, i32 0, i32 2
  %53 = load %struct.varent*, %struct.varent** %52, align 8
  %54 = getelementptr inbounds %struct.varent, %struct.varent* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.varent*, %struct.varent** %4, align 8
  %56 = getelementptr inbounds %struct.varent, %struct.varent* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %108

57:                                               ; preds = %36
  %58 = load %struct.varent*, %struct.varent** %4, align 8
  %59 = call i8* @rleft(%struct.varent* %58)
  %60 = load %struct.varent*, %struct.varent** %7, align 8
  %61 = getelementptr inbounds %struct.varent, %struct.varent* %60, i32 0, i32 3
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.varent*, %struct.varent** %4, align 8
  %67 = getelementptr inbounds %struct.varent, %struct.varent* %66, i32 0, i32 2
  %68 = load %struct.varent*, %struct.varent** %67, align 8
  %69 = getelementptr inbounds %struct.varent, %struct.varent* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.varent*, %struct.varent** %4, align 8
  %71 = getelementptr inbounds %struct.varent, %struct.varent* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  br label %108

72:                                               ; preds = %36
  %73 = load %struct.varent*, %struct.varent** %4, align 8
  %74 = getelementptr inbounds %struct.varent, %struct.varent* %73, i32 0, i32 1
  %75 = load %struct.varent*, %struct.varent** %74, align 8
  %76 = call i8* @rright(%struct.varent* %75)
  %77 = load %struct.varent*, %struct.varent** %4, align 8
  %78 = call i8* @rleft(%struct.varent* %77)
  %79 = load %struct.varent*, %struct.varent** %7, align 8
  %80 = getelementptr inbounds %struct.varent, %struct.varent* %79, i32 0, i32 3
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.varent*, %struct.varent** %4, align 8
  %86 = getelementptr inbounds %struct.varent, %struct.varent* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 1
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 -1
  %91 = load %struct.varent*, %struct.varent** %4, align 8
  %92 = getelementptr inbounds %struct.varent, %struct.varent* %91, i32 0, i32 2
  %93 = load %struct.varent*, %struct.varent** %92, align 8
  %94 = getelementptr inbounds %struct.varent, %struct.varent* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.varent*, %struct.varent** %4, align 8
  %96 = getelementptr inbounds %struct.varent, %struct.varent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, -1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  %101 = load %struct.varent*, %struct.varent** %4, align 8
  %102 = getelementptr inbounds %struct.varent, %struct.varent* %101, i32 0, i32 1
  %103 = load %struct.varent*, %struct.varent** %102, align 8
  %104 = getelementptr inbounds %struct.varent, %struct.varent* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.varent*, %struct.varent** %4, align 8
  %106 = getelementptr inbounds %struct.varent, %struct.varent* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %108

107:                                              ; preds = %36
  br label %108

108:                                              ; preds = %107, %72, %57, %42
  br label %110

109:                                              ; preds = %26
  br label %110

110:                                              ; preds = %109, %108, %33, %30
  br label %196

111:                                              ; preds = %15
  %112 = load %struct.varent*, %struct.varent** %4, align 8
  %113 = getelementptr inbounds %struct.varent, %struct.varent* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %194 [
    i32 1, label %115
    i32 0, label %118
    i32 -1, label %121
  ]

115:                                              ; preds = %111
  %116 = load %struct.varent*, %struct.varent** %4, align 8
  %117 = getelementptr inbounds %struct.varent, %struct.varent* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %195

118:                                              ; preds = %111
  %119 = load %struct.varent*, %struct.varent** %4, align 8
  %120 = getelementptr inbounds %struct.varent, %struct.varent* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 8
  br label %195

121:                                              ; preds = %111
  %122 = load %struct.varent*, %struct.varent** %4, align 8
  %123 = getelementptr inbounds %struct.varent, %struct.varent* %122, i32 0, i32 2
  %124 = load %struct.varent*, %struct.varent** %123, align 8
  %125 = getelementptr inbounds %struct.varent, %struct.varent* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %192 [
    i32 -1, label %127
    i32 0, label %142
    i32 1, label %157
  ]

127:                                              ; preds = %121
  %128 = load %struct.varent*, %struct.varent** %4, align 8
  %129 = call i8* @rright(%struct.varent* %128)
  %130 = load %struct.varent*, %struct.varent** %7, align 8
  %131 = getelementptr inbounds %struct.varent, %struct.varent* %130, i32 0, i32 3
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %129, i8** %135, align 8
  %136 = load %struct.varent*, %struct.varent** %4, align 8
  %137 = getelementptr inbounds %struct.varent, %struct.varent* %136, i32 0, i32 1
  %138 = load %struct.varent*, %struct.varent** %137, align 8
  %139 = getelementptr inbounds %struct.varent, %struct.varent* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.varent*, %struct.varent** %4, align 8
  %141 = getelementptr inbounds %struct.varent, %struct.varent* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %193

142:                                              ; preds = %121
  %143 = load %struct.varent*, %struct.varent** %4, align 8
  %144 = call i8* @rright(%struct.varent* %143)
  %145 = load %struct.varent*, %struct.varent** %7, align 8
  %146 = getelementptr inbounds %struct.varent, %struct.varent* %145, i32 0, i32 3
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %144, i8** %150, align 8
  %151 = load %struct.varent*, %struct.varent** %4, align 8
  %152 = getelementptr inbounds %struct.varent, %struct.varent* %151, i32 0, i32 1
  %153 = load %struct.varent*, %struct.varent** %152, align 8
  %154 = getelementptr inbounds %struct.varent, %struct.varent* %153, i32 0, i32 0
  store i32 -1, i32* %154, align 8
  %155 = load %struct.varent*, %struct.varent** %4, align 8
  %156 = getelementptr inbounds %struct.varent, %struct.varent* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %193

157:                                              ; preds = %121
  %158 = load %struct.varent*, %struct.varent** %4, align 8
  %159 = getelementptr inbounds %struct.varent, %struct.varent* %158, i32 0, i32 2
  %160 = load %struct.varent*, %struct.varent** %159, align 8
  %161 = call i8* @rleft(%struct.varent* %160)
  %162 = load %struct.varent*, %struct.varent** %4, align 8
  %163 = call i8* @rright(%struct.varent* %162)
  %164 = load %struct.varent*, %struct.varent** %7, align 8
  %165 = getelementptr inbounds %struct.varent, %struct.varent* %164, i32 0, i32 3
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %163, i8** %169, align 8
  %170 = load %struct.varent*, %struct.varent** %4, align 8
  %171 = getelementptr inbounds %struct.varent, %struct.varent* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %172, 1
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 0, i32 -1
  %176 = load %struct.varent*, %struct.varent** %4, align 8
  %177 = getelementptr inbounds %struct.varent, %struct.varent* %176, i32 0, i32 2
  %178 = load %struct.varent*, %struct.varent** %177, align 8
  %179 = getelementptr inbounds %struct.varent, %struct.varent* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load %struct.varent*, %struct.varent** %4, align 8
  %181 = getelementptr inbounds %struct.varent, %struct.varent* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %182, -1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 0, i32 1
  %186 = load %struct.varent*, %struct.varent** %4, align 8
  %187 = getelementptr inbounds %struct.varent, %struct.varent* %186, i32 0, i32 1
  %188 = load %struct.varent*, %struct.varent** %187, align 8
  %189 = getelementptr inbounds %struct.varent, %struct.varent* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  %190 = load %struct.varent*, %struct.varent** %4, align 8
  %191 = getelementptr inbounds %struct.varent, %struct.varent* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %193

192:                                              ; preds = %121
  br label %193

193:                                              ; preds = %192, %157, %142, %127
  br label %195

194:                                              ; preds = %111
  br label %195

195:                                              ; preds = %194, %193, %118, %115
  br label %196

196:                                              ; preds = %195, %110
  %197 = load %struct.varent*, %struct.varent** %4, align 8
  %198 = getelementptr inbounds %struct.varent, %struct.varent* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %6, align 4
  %203 = xor i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %210

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.varent*, %struct.varent** %7, align 8
  store %struct.varent* %208, %struct.varent** %4, align 8
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %5, align 4
  br label %10

210:                                              ; preds = %205, %10
  ret void
}

declare dso_local i8* @rleft(%struct.varent*) #1

declare dso_local i8* @rright(%struct.varent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
