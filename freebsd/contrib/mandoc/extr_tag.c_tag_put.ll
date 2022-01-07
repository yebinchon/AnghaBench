; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.tag_entry = type { i8*, i64*, i64, i64, i32 }

@tag_files = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\\\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@tag_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tag_put(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tag_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %158

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 38
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 101
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %32, %26, %14
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strcspn(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %158

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @INT_MAX, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @ohash_qlookupi(i32* @tag_data, i8* %52, i8** %8)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.tag_entry* @ohash_find(i32* @tag_data, i32 %54)
  store %struct.tag_entry* %55, %struct.tag_entry** %7, align 8
  %56 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %57 = icmp eq %struct.tag_entry* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  %60 = add i64 40, %59
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call %struct.tag_entry* @mandoc_malloc(i32 %62)
  store %struct.tag_entry* %63, %struct.tag_entry** %7, align 8
  %64 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %65 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @memcpy(i8* %66, i8* %67, i64 %68)
  %70 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %71 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %76 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %75, i32 0, i32 1
  store i64* null, i64** %76, align 8
  %77 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %78 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %80 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %83 = call i32 @ohash_insert(i32* @tag_data, i32 %81, %struct.tag_entry* %82)
  br label %123

84:                                               ; preds = %51
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %89 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %94 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %93, i32 0, i32 4
  store i32 -1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %87
  br label %158

96:                                               ; preds = %84
  %97 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %98 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %103 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %158

108:                                              ; preds = %101, %96
  %109 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %110 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %115 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113, %108
  %120 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %121 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %113
  br label %123

123:                                              ; preds = %122, %58
  %124 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %125 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %128 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %123
  %132 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %133 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 4
  store i64 %135, i64* %133, align 8
  %136 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %137 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %140 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i64* @mandoc_reallocarray(i64* %138, i64 %141, i32 8)
  %143 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %144 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %143, i32 0, i32 1
  store i64* %142, i64** %144, align 8
  br label %145

145:                                              ; preds = %131, %123
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %148 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %151 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds i64, i64* %149, i64 %152
  store i64 %146, i64* %154, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.tag_entry*, %struct.tag_entry** %7, align 8
  %157 = getelementptr inbounds %struct.tag_entry, %struct.tag_entry* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %145, %107, %95, %40, %13
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @ohash_qlookupi(i32*, i8*, i8**) #1

declare dso_local %struct.tag_entry* @ohash_find(i32*, i32) #1

declare dso_local %struct.tag_entry* @mandoc_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ohash_insert(i32*, i32, %struct.tag_entry*) #1

declare dso_local i64* @mandoc_reallocarray(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
