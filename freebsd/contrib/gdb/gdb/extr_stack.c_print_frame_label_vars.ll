; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_label_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_label_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.ui_file = type { i32 }
%struct.blockvector = type { i32 }
%struct.block = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"No symbol table info available.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"blockvector blotch\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"blockvector botch\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"No catches.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, %struct.ui_file*)* @print_frame_label_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_frame_label_vars(%struct.frame_info* %0, i32 %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.blockvector*, align 8
  %8 = alloca %struct.block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %16 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %17 = call %struct.block* @get_frame_block(%struct.frame_info* %16, i32 0)
  store %struct.block* %17, %struct.block** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %19 = call i64 @get_frame_pc(%struct.frame_info* %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.block*, %struct.block** %8, align 8
  %21 = icmp eq %struct.block* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %24 = call i32 @fprintf_filtered(%struct.ui_file* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %152

25:                                               ; preds = %3
  %26 = load %struct.block*, %struct.block** %8, align 8
  %27 = call i64 @BLOCK_END(%struct.block* %26)
  %28 = sub nsw i64 %27, 4
  %29 = call %struct.blockvector* @blockvector_for_pc(i64 %28, i32* %10)
  store %struct.blockvector* %29, %struct.blockvector** %7, align 8
  %30 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %31 = call i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector* %30)
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i64 @alloca(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %39 = call i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector* %38)
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i8* %37, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %140, %25
  %45 = load %struct.block*, %struct.block** %8, align 8
  %46 = icmp ne %struct.block* %45, null
  br i1 %46, label %47, label %143

47:                                               ; preds = %44
  %48 = load %struct.block*, %struct.block** %8, align 8
  %49 = call i64 @BLOCK_END(%struct.block* %48)
  %50 = sub nsw i64 %49, 4
  store i64 %50, i64* %14, align 8
  %51 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call %struct.blockvector* @blockvector_for_pc(i64 %52, i32* %10)
  %54 = icmp ne %struct.blockvector* %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  %58 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %58, i32 %59)
  %61 = load %struct.block*, %struct.block** %8, align 8
  %62 = icmp ne %struct.block* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %67 = call i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %83, %65
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %75, i32 %76)
  %78 = call i64 @BLOCK_END(%struct.block* %77)
  %79 = load i64, i64* %13, align 8
  %80 = icmp slt i64 %78, %79
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i1 [ false, %70 ], [ %80, %74 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %70

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %121, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %92, i32 %93)
  %95 = call i64 @BLOCK_END(%struct.block* %94)
  %96 = load i64, i64* %14, align 8
  %97 = icmp slt i64 %95, %96
  br label %98

98:                                               ; preds = %91, %87
  %99 = phi i1 [ false, %87 ], [ %97, %91 ]
  br i1 %99, label %100, label %124

100:                                              ; preds = %98
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %100
  %109 = load %struct.blockvector*, %struct.blockvector** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %109, i32 %110)
  %112 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %113 = call i64 @print_block_frame_labels(%struct.block* %111, i32* %11, %struct.ui_file* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 1, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 1, i8* %120, align 1
  br label %121

121:                                              ; preds = %116, %100
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %87

124:                                              ; preds = %98
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %152

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %152

135:                                              ; preds = %131, %128
  %136 = load %struct.block*, %struct.block** %8, align 8
  %137 = call i64 @BLOCK_FUNCTION(%struct.block* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %143

140:                                              ; preds = %135
  %141 = load %struct.block*, %struct.block** %8, align 8
  %142 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %141)
  store %struct.block* %142, %struct.block** %8, align 8
  br label %44

143:                                              ; preds = %139, %44
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %151 = call i32 @fprintf_filtered(%struct.ui_file* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %22, %127, %134, %149, %146, %143
  ret void
}

declare dso_local %struct.block* @get_frame_block(%struct.frame_info*, i32) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.blockvector* @blockvector_for_pc(i64, i32*) #1

declare dso_local i64 @BLOCK_END(%struct.block*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

declare dso_local i64 @print_block_frame_labels(%struct.block*, i32*, %struct.ui_file*) #1

declare dso_local i64 @BLOCK_FUNCTION(%struct.block*) #1

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
