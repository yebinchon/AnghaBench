; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_zalloc.c_zfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_zalloc.c_zfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@MEMNODE_SIZE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"zfree(%p,%ju): wild pointer\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"zfree(%p,%ju): corrupt memlist1\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"zfree(%p,%ju): corrupt memlist2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfree(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MEMNODE_SIZE_MASK, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* @MEMNODE_SIZE_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %197

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = icmp ult i8* %19, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = icmp ugt i8* %28, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i64, i64* @MEMNODE_SIZE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %25, %18
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store %struct.TYPE_5__** %52, %struct.TYPE_5__*** %7, align 8
  br label %53

53:                                               ; preds = %157, %45
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %8, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %160

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = bitcast %struct.TYPE_5__* %59 to i8*
  %61 = icmp ule i8* %58, %60
  br i1 %61, label %62, label %142

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i8*
  %68 = icmp ugt i8* %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = bitcast %struct.TYPE_5__* %78 to i8*
  %80 = icmp eq i8* %77, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = load i8*, i8** %5, align 8
  %94 = bitcast i8* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %105

96:                                               ; preds = %74
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_5__*
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %100, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  br label %105

105:                                              ; preds = %96, %81
  %106 = load i8*, i8** %5, align 8
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %8, align 8
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %108, align 8
  %109 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = icmp ne %struct.TYPE_5__** %109, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %105
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %115 = bitcast %struct.TYPE_5__** %114 to i8*
  %116 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %117 = bitcast %struct.TYPE_5__** %116 to %struct.TYPE_5__*
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i8*, i8** %5, align 8
  %122 = icmp eq i8* %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %113
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %128 = bitcast %struct.TYPE_5__** %127 to %struct.TYPE_5__*
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %134 = bitcast %struct.TYPE_5__** %133 to %struct.TYPE_5__*
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %139 = bitcast %struct.TYPE_5__** %138 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %8, align 8
  br label %140

140:                                              ; preds = %123, %113
  br label %141

141:                                              ; preds = %140, %105
  br label %197

142:                                              ; preds = %57
  %143 = load i8*, i8** %5, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %145 = bitcast %struct.TYPE_5__* %144 to i8*
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = icmp ult i8* %143, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %6, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %152, i32 %154)
  br label %156

156:                                              ; preds = %151, %142
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store %struct.TYPE_5__** %159, %struct.TYPE_5__*** %7, align 8
  br label %53

160:                                              ; preds = %53
  %161 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = icmp eq %struct.TYPE_5__** %161, %163
  br i1 %164, label %175, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %167 = bitcast %struct.TYPE_5__** %166 to i8*
  %168 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %169 = bitcast %struct.TYPE_5__** %168 to %struct.TYPE_5__*
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8*, i8** %5, align 8
  %174 = icmp ne i8* %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %165, %160
  %176 = load i8*, i8** %5, align 8
  %177 = bitcast i8* %176 to %struct.TYPE_5__*
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %178, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = bitcast i8* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = bitcast i8* %183 to %struct.TYPE_5__*
  %185 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %184, %struct.TYPE_5__** %185, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = bitcast i8* %186 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %187, %struct.TYPE_5__** %8, align 8
  br label %197

188:                                              ; preds = %165
  %189 = load i64, i64* %6, align 8
  %190 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %191 = bitcast %struct.TYPE_5__** %190 to %struct.TYPE_5__*
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, %189
  store i64 %194, i64* %192, align 8
  %195 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %196 = bitcast %struct.TYPE_5__** %195 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %196, %struct.TYPE_5__** %8, align 8
  br label %197

197:                                              ; preds = %17, %141, %188, %175
  ret void
}

declare dso_local i32 @panic(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
