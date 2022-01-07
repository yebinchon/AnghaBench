; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_ibv_madvise_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_ibv_madvise_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i64, i64, i32 }

@huge_page_enabled = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8
@mm_mutex = common dso_local global i32 0, align 4
@MADV_DONTFORK = common dso_local global i32 0, align 4
@MADV_DOFORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @ibv_madvise_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibv_madvise_range(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ibv_mem_node*, align 8
  %11 = alloca %struct.ibv_mem_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

19:                                               ; preds = %3
  %20 = load i64, i64* @huge_page_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @get_page_size(i8* %23)
  store i64 %24, i64* %15, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @page_size, align 8
  store i64 %26, i64* %15, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %15, align 8
  %31 = sub i64 %30, 1
  %32 = xor i64 %31, -1
  %33 = and i64 %29, %32
  store i64 %33, i64* %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = getelementptr i8, i8* %38, i64 -1
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64, i64* %15, align 8
  %42 = sub i64 %41, 1
  %43 = xor i64 %42, -1
  %44 = and i64 %40, %43
  %45 = sub i64 %44, 1
  store i64 %45, i64* %9, align 8
  %46 = call i32 @pthread_mutex_lock(i32* @mm_mutex)
  br label %47

47:                                               ; preds = %169, %27
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MADV_DONTFORK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 -1
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.ibv_mem_node* @get_start_node(i64 %53, i64 %54, i32 %55)
  store %struct.ibv_mem_node* %56, %struct.ibv_mem_node** %10, align 8
  %57 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %58 = icmp ne %struct.ibv_mem_node* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  store i32 -1, i32* %14, align 4
  br label %204

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %174, %60
  %62 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %63 = icmp ne %struct.ibv_mem_node* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %66 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ule i64 %67, %68
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i1 [ false, %61 ], [ %69, %64 ]
  br i1 %71, label %72, label %182

72:                                               ; preds = %70
  %73 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %74 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  %82 = call i32 @split_range(%struct.ibv_mem_node* %79, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 -1, i32* %14, align 4
  br label %204

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %91 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %102, label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %174

97:                                               ; preds = %94
  %98 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %99 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %174

102:                                              ; preds = %97, %89
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %105 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ugt i64 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %112 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = sub i64 %113, %114
  %116 = add i64 %115, 1
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @madvise(i8* %110, i64 %116, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %134

119:                                              ; preds = %102
  %120 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %121 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %125 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %128 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = add i64 %130, 1
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @madvise(i8* %123, i64 %131, i32 %132)
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %119, %108
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %134
  %138 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call %struct.ibv_mem_node* @undo_node(%struct.ibv_mem_node* %138, i64 %139, i32 %140)
  store %struct.ibv_mem_node* %141, %struct.ibv_mem_node** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %146 = icmp ne %struct.ibv_mem_node* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144, %137
  br label %204

148:                                              ; preds = %144
  store i32 1, i32* %13, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @MADV_DONTFORK, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @MADV_DOFORK, align 4
  br label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @MADV_DONTFORK, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  store i32 %157, i32* %7, align 4
  %158 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %159 = call %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node* %158)
  store %struct.ibv_mem_node* %159, %struct.ibv_mem_node** %11, align 8
  %160 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %161 = icmp ne %struct.ibv_mem_node* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %165 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ugt i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %156
  br label %204

169:                                              ; preds = %162
  %170 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %171 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %9, align 8
  br label %47

173:                                              ; preds = %134
  br label %174

174:                                              ; preds = %173, %97, %94
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %177 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %181 = call %struct.ibv_mem_node* @__mm_next(%struct.ibv_mem_node* %180)
  store %struct.ibv_mem_node* %181, %struct.ibv_mem_node** %10, align 8
  br label %61

182:                                              ; preds = %70
  %183 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %184 = icmp ne %struct.ibv_mem_node* %183, null
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  %186 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %187 = call %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node* %186)
  store %struct.ibv_mem_node* %187, %struct.ibv_mem_node** %11, align 8
  %188 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %189 = icmp ne %struct.ibv_mem_node* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %192 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %195 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %10, align 8
  %200 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %11, align 8
  %201 = call %struct.ibv_mem_node* @merge_ranges(%struct.ibv_mem_node* %199, %struct.ibv_mem_node* %200)
  store %struct.ibv_mem_node* %201, %struct.ibv_mem_node** %10, align 8
  br label %202

202:                                              ; preds = %198, %190, %185
  br label %203

203:                                              ; preds = %202, %182
  br label %204

204:                                              ; preds = %203, %168, %147, %84, %59
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 -1, i32* %14, align 4
  br label %208

208:                                              ; preds = %207, %204
  %209 = call i32 @pthread_mutex_unlock(i32* @mm_mutex)
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %208, %18
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i64 @get_page_size(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.ibv_mem_node* @get_start_node(i64, i64, i32) #1

declare dso_local i32 @split_range(%struct.ibv_mem_node*, i64) #1

declare dso_local i32 @madvise(i8*, i64, i32) #1

declare dso_local %struct.ibv_mem_node* @undo_node(%struct.ibv_mem_node*, i64, i32) #1

declare dso_local %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node*) #1

declare dso_local %struct.ibv_mem_node* @__mm_next(%struct.ibv_mem_node*) #1

declare dso_local %struct.ibv_mem_node* @merge_ranges(%struct.ibv_mem_node*, %struct.ibv_mem_node*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
