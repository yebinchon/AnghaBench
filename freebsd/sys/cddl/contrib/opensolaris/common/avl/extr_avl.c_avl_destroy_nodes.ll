; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_destroy_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_destroy_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__** }

@CHILDBIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @avl_destroy_nodes(%struct.TYPE_11__* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = call i8* @avl_first(%struct.TYPE_11__* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i64, i64* @CHILDBIT, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  store i8* null, i8** %3, align 8
  br label %185

26:                                               ; preds = %17
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call %struct.TYPE_12__* @AVL_DATA2NODE(i8* %27, i64 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %6, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call %struct.TYPE_12__* @AVL_XPARENT(%struct.TYPE_12__* %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %7, align 8
  br label %116

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* @CHILDBIT, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = icmp eq %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %47, %42
  store i8* null, i8** %3, align 8
  br label %185

59:                                               ; preds = %32
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64, i64* @CHILDBIT, align 8
  %64 = and i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %70
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %91, label %84

84:                                               ; preds = %59
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = icmp eq %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %84, %59
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %6, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = call %struct.TYPE_12__* @AVL_XPARENT(%struct.TYPE_12__* %93)
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %7, align 8
  br label %159

95:                                               ; preds = %84
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %98, i64 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %6, align 8
  br label %101

101:                                              ; preds = %108, %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %104, i64 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = icmp ne %struct.TYPE_12__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %7, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %112, i64 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %6, align 8
  br label %101

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %26
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %119, i64 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %152

123:                                              ; preds = %116
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = call i32 @AVL_XBALANCE(%struct.TYPE_12__* %124)
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %7, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %132, i64 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %6, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i64 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = icmp eq %struct.TYPE_12__* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %123
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %144, i64 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = icmp eq %struct.TYPE_12__* %146, null
  br label %148

148:                                              ; preds = %141, %123
  %149 = phi i1 [ false, %123 ], [ %147, %141 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @ASSERT(i32 %150)
  br label %158

152:                                              ; preds = %116
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = call i32 @AVL_XBALANCE(%struct.TYPE_12__* %153)
  %155 = icmp sle i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @ASSERT(i32 %156)
  br label %158

158:                                              ; preds = %152, %148
  br label %159

159:                                              ; preds = %158, %91
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = icmp eq %struct.TYPE_12__* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i64, i64* @CHILDBIT, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load i8**, i8*** %5, align 8
  store i8* %164, i8** %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = icmp eq %struct.TYPE_12__* %166, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT(i32 %171)
  br label %181

173:                                              ; preds = %159
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %175 = ptrtoint %struct.TYPE_12__* %174 to i64
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = call i64 @AVL_XCHILD(%struct.TYPE_12__* %176)
  %178 = or i64 %175, %177
  %179 = inttoptr i64 %178 to i8*
  %180 = load i8**, i8*** %5, align 8
  store i8* %179, i8** %180, align 8
  br label %181

181:                                              ; preds = %173, %162
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i8* @AVL_NODE2DATA(%struct.TYPE_12__* %182, i64 %183)
  store i8* %184, i8** %3, align 8
  br label %185

185:                                              ; preds = %181, %58, %22
  %186 = load i8*, i8** %3, align 8
  ret i8* %186
}

declare dso_local i8* @avl_first(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @AVL_DATA2NODE(i8*, i64) #1

declare dso_local %struct.TYPE_12__* @AVL_XPARENT(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @AVL_XBALANCE(%struct.TYPE_12__*) #1

declare dso_local i64 @AVL_XCHILD(%struct.TYPE_12__*) #1

declare dso_local i8* @AVL_NODE2DATA(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
