; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_sort_deletes_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_sort_deletes_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.change_node* }
%struct.change_node = type { i64 }

@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @sort_deletes_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_deletes_first(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.change_node*, align 8
  %9 = alloca %struct.change_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.change_node*, %struct.change_node** %23, align 8
  store %struct.change_node* %24, %struct.change_node** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.change_node*, %struct.change_node** %26, align 8
  store %struct.change_node* %27, %struct.change_node** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %140

33:                                               ; preds = %2
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %140

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strrchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 47)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %75, label %49

49:                                               ; preds = %46, %39
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %97

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = icmp eq i32 %61, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %55
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @memcmp(i8* %70, i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %69, %46
  %76 = load %struct.change_node*, %struct.change_node** %8, align 8
  %77 = getelementptr inbounds %struct.change_node, %struct.change_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.change_node*, %struct.change_node** %9, align 8
  %83 = getelementptr inbounds %struct.change_node, %struct.change_node* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %140

88:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %140

89:                                               ; preds = %75
  %90 = load %struct.change_node*, %struct.change_node** %9, align 8
  %91 = getelementptr inbounds %struct.change_node, %struct.change_node* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %140

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %69, %55, %52, %49
  %98 = load %struct.change_node*, %struct.change_node** %8, align 8
  %99 = getelementptr inbounds %struct.change_node, %struct.change_node* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.change_node*, %struct.change_node** %9, align 8
  %105 = getelementptr inbounds %struct.change_node, %struct.change_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %103, %97
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @count_components(i8* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @count_components(i8* %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.change_node*, %struct.change_node** %8, align 8
  %119 = getelementptr inbounds %struct.change_node, %struct.change_node* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 -1, i32* %3, align 4
  br label %140

124:                                              ; preds = %117, %109
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.change_node*, %struct.change_node** %9, align 8
  %130 = getelementptr inbounds %struct.change_node, %struct.change_node* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %140

135:                                              ; preds = %128, %124
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @svn_path_compare_paths(i8* %137, i8* %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %134, %123, %95, %88, %87, %38, %32
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @count_components(i8*) #1

declare dso_local i32 @svn_path_compare_paths(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
