; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i64, %struct.radix_tree_node** }

@RADIX_TREE_MAX_HEIGHT = common dso_local global i32 0, align 4
@M_RADIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @radix_tree_delete(%struct.radix_tree_root* %0, i64 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.radix_tree_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @RADIX_TREE_MAX_HEIGHT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.radix_tree_node*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i8* null, i8** %8, align 8
  %15 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %16 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %15, i32 0, i32 1
  %17 = load %struct.radix_tree_node*, %struct.radix_tree_node** %16, align 8
  store %struct.radix_tree_node* %17, %struct.radix_tree_node** %7, align 8
  %18 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %19 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %24 = call i64 @radix_max(%struct.radix_tree_root* %23)
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %112

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %33 = icmp ne %struct.radix_tree_node* %32, null
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %14, i64 %39
  store %struct.radix_tree_node* %37, %struct.radix_tree_node** %40, align 8
  %41 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %42 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %41, i32 0, i32 1
  %43 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = call i64 @radix_pos(i64 %44, i32 %45)
  %48 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %43, i64 %47
  %49 = load %struct.radix_tree_node*, %struct.radix_tree_node** %48, align 8
  store %struct.radix_tree_node* %49, %struct.radix_tree_node** %7, align 8
  br label %28

50:                                               ; preds = %34
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @radix_pos(i64 %51, i32 0)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %55 = icmp ne %struct.radix_tree_node* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %58 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %57, i32 0, i32 1
  %59 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %59, i64 %61
  %63 = load %struct.radix_tree_node*, %struct.radix_tree_node** %62, align 8
  %64 = bitcast %struct.radix_tree_node* %63 to i8*
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %111

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %99, %68
  %70 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %71 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %70, i32 0, i32 1
  %72 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %72, i64 %74
  store %struct.radix_tree_node* null, %struct.radix_tree_node** %75, align 8
  %76 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %77 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %81 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %110

85:                                               ; preds = %69
  %86 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %87 = load i32, i32* @M_RADIX, align 4
  %88 = call i32 @free(%struct.radix_tree_node* %86, i32 %87)
  %89 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %90 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %91 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %90, i32 0, i32 1
  %92 = load %struct.radix_tree_node*, %struct.radix_tree_node** %91, align 8
  %93 = icmp eq %struct.radix_tree_node* %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %96 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %95, i32 0, i32 1
  store %struct.radix_tree_node* null, %struct.radix_tree_node** %96, align 8
  %97 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %98 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %110

99:                                               ; preds = %85
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %14, i64 %103
  %105 = load %struct.radix_tree_node*, %struct.radix_tree_node** %104, align 8
  store %struct.radix_tree_node* %105, %struct.radix_tree_node** %7, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @radix_pos(i64 %106, i32 %107)
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %69

110:                                              ; preds = %94, %84
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %26
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i8* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @radix_max(%struct.radix_tree_root*) #2

declare dso_local i64 @radix_pos(i64, i32) #2

declare dso_local i32 @free(%struct.radix_tree_node*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
