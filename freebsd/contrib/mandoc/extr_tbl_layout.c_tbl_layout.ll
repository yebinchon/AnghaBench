; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_tbl_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_tbl_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { %struct.tbl_row*, %struct.tbl_row*, %struct.TYPE_3__, i32 }
%struct.tbl_row = type { %struct.tbl_row*, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TBL_PART_DATA = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_NONE = common dso_local global i32 0, align 4
@TBL_CELL_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_layout(%struct.tbl_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tbl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tbl_row*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.tbl_row* null, %struct.tbl_row** %9, align 8
  br label %10

10:                                               ; preds = %228, %39, %4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 9
  br label %27

27:                                               ; preds = %19, %11
  %28 = phi i1 [ true, %11 ], [ %26, %19 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %11

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %186 [
    i32 44, label %39
    i32 0, label %42
    i32 46, label %43
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  store %struct.tbl_row* null, %struct.tbl_row** %9, align 8
  br label %10

42:                                               ; preds = %32
  br label %234

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @TBL_PART_DATA, align 4
  %47 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %48 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %50 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %49, i32 0, i32 1
  %51 = load %struct.tbl_row*, %struct.tbl_row** %50, align 8
  %52 = icmp eq %struct.tbl_row* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = call i8* @mandoc_calloc(i32 1, i32 32)
  %55 = bitcast i8* %54 to %struct.tbl_row*
  %56 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %57 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %56, i32 0, i32 0
  store %struct.tbl_row* %55, %struct.tbl_row** %57, align 8
  %58 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %59 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %58, i32 0, i32 1
  store %struct.tbl_row* %55, %struct.tbl_row** %59, align 8
  br label %60

60:                                               ; preds = %53, %43
  %61 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %62 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %61, i32 0, i32 1
  %63 = load %struct.tbl_row*, %struct.tbl_row** %62, align 8
  %64 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %98

67:                                               ; preds = %60
  %68 = load i32, i32* @MANDOCERR_TBLLAYOUT_NONE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @mandoc_msg(i32 %68, i32 %69, i32 %70, i32* null)
  %72 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %73 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %74 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %73, i32 0, i32 1
  %75 = load %struct.tbl_row*, %struct.tbl_row** %74, align 8
  %76 = load i32, i32* @TBL_CELL_LEFT, align 4
  %77 = call i32 @cell_alloc(%struct.tbl_node* %72, %struct.tbl_row* %75, i32 %76)
  %78 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %79 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %83 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %82, i32 0, i32 1
  %84 = load %struct.tbl_row*, %struct.tbl_row** %83, align 8
  %85 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %67
  %89 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %90 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %89, i32 0, i32 1
  %91 = load %struct.tbl_row*, %struct.tbl_row** %90, align 8
  %92 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %95 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %88, %67
  br label %234

98:                                               ; preds = %60
  %99 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %100 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %99, i32 0, i32 1
  %101 = load %struct.tbl_row*, %struct.tbl_row** %100, align 8
  store %struct.tbl_row* %101, %struct.tbl_row** %9, align 8
  br label %102

102:                                              ; preds = %181, %98
  %103 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %104 = icmp ne %struct.tbl_row* %103, null
  br i1 %104, label %105, label %185

105:                                              ; preds = %102
  %106 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %107 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %111 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %116 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %119 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %114, %105
  %122 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %123 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = icmp ne %struct.TYPE_4__* %124, null
  br i1 %125, label %126, label %158

126:                                              ; preds = %121
  %127 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %128 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %134 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %126
  %139 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %140 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %144 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %142, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %138
  %150 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %151 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %156 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  br label %158

158:                                              ; preds = %149, %138, %126, %121
  %159 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %160 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %159, i32 0, i32 0
  %161 = load %struct.tbl_row*, %struct.tbl_row** %160, align 8
  %162 = icmp ne %struct.tbl_row* %161, null
  br i1 %162, label %163, label %180

163:                                              ; preds = %158
  %164 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %165 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %164, i32 0, i32 0
  %166 = load %struct.tbl_row*, %struct.tbl_row** %165, align 8
  %167 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %172 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %171, i32 0, i32 0
  %173 = load %struct.tbl_row*, %struct.tbl_row** %172, align 8
  %174 = call i32 @free(%struct.tbl_row* %173)
  %175 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %176 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %175, i32 0, i32 0
  store %struct.tbl_row* null, %struct.tbl_row** %176, align 8
  %177 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %178 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %179 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %178, i32 0, i32 0
  store %struct.tbl_row* %177, %struct.tbl_row** %179, align 8
  br label %180

180:                                              ; preds = %170, %163, %158
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %183 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %182, i32 0, i32 0
  %184 = load %struct.tbl_row*, %struct.tbl_row** %183, align 8
  store %struct.tbl_row* %184, %struct.tbl_row** %9, align 8
  br label %102

185:                                              ; preds = %102
  br label %234

186:                                              ; preds = %32
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %189 = icmp eq %struct.tbl_row* %188, null
  br i1 %189, label %190, label %228

190:                                              ; preds = %187
  %191 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %192 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %191, i32 0, i32 0
  %193 = load %struct.tbl_row*, %struct.tbl_row** %192, align 8
  %194 = icmp eq %struct.tbl_row* %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %190
  %196 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %197 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %196, i32 0, i32 0
  %198 = load %struct.tbl_row*, %struct.tbl_row** %197, align 8
  %199 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %223

202:                                              ; preds = %195, %190
  %203 = call i8* @mandoc_calloc(i32 1, i32 32)
  %204 = bitcast i8* %203 to %struct.tbl_row*
  store %struct.tbl_row* %204, %struct.tbl_row** %9, align 8
  %205 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %206 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %205, i32 0, i32 0
  %207 = load %struct.tbl_row*, %struct.tbl_row** %206, align 8
  %208 = icmp ne %struct.tbl_row* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %211 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %212 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %211, i32 0, i32 0
  %213 = load %struct.tbl_row*, %struct.tbl_row** %212, align 8
  %214 = getelementptr inbounds %struct.tbl_row, %struct.tbl_row* %213, i32 0, i32 0
  store %struct.tbl_row* %210, %struct.tbl_row** %214, align 8
  br label %219

215:                                              ; preds = %202
  %216 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %217 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %218 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %217, i32 0, i32 1
  store %struct.tbl_row* %216, %struct.tbl_row** %218, align 8
  br label %219

219:                                              ; preds = %215, %209
  %220 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %221 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %222 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %221, i32 0, i32 0
  store %struct.tbl_row* %220, %struct.tbl_row** %222, align 8
  br label %227

223:                                              ; preds = %195
  %224 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %225 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %224, i32 0, i32 0
  %226 = load %struct.tbl_row*, %struct.tbl_row** %225, align 8
  store %struct.tbl_row* %226, %struct.tbl_row** %9, align 8
  br label %227

227:                                              ; preds = %223, %219
  br label %228

228:                                              ; preds = %227, %187
  %229 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %230 = load %struct.tbl_row*, %struct.tbl_row** %9, align 8
  %231 = load i32, i32* %6, align 4
  %232 = load i8*, i8** %7, align 8
  %233 = call i32 @cell(%struct.tbl_node* %229, %struct.tbl_row* %230, i32 %231, i8* %232, i32* %8)
  br label %10

234:                                              ; preds = %185, %97, %42
  ret void
}

declare dso_local i8* @mandoc_calloc(i32, i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i32 @cell_alloc(%struct.tbl_node*, %struct.tbl_row*, i32) #1

declare dso_local i32 @free(%struct.tbl_row*) #1

declare dso_local i32 @cell(%struct.tbl_node*, %struct.tbl_row*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
