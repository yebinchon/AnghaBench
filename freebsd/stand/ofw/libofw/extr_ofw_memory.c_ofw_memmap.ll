; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_memory.c_ofw_memmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_memory.c_ofw_memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_mapping = type { i32, i32, i32, i32 }
%struct.ofw_mapping2 = type { i32, i32, i32, i32 }

@mmu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"translations\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get memory map (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%17s\09%17s\09%8s\09%6s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Virtual Range\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Physical Range\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"#Pages\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%08x-%08x\09%08x-%08x\09%8d\09%6x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofw_memmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ofw_mapping*, align 8
  %4 = alloca %struct.ofw_mapping2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i32], align 16
  %9 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @mmu, align 4
  %11 = call i32 @OF_instance_to_package(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %13 = call i32 @bzero(i32* %12, i32 16384)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %16 = call i32 @OF_getprop(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %15, i32 16384)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %178

22:                                               ; preds = %1
  %23 = call i32 (...) @pager_open()
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 16
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %32 = bitcast i32* %31 to %struct.ofw_mapping*
  store %struct.ofw_mapping* %32, %struct.ofw_mapping** %3, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %97, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %34
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %40 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %40, i64 %42
  %44 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %46, i64 %48
  %50 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %52, i64 %54
  %56 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %51, %57
  %59 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %59, i64 %61
  %63 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %65, i64 %67
  %69 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %71, i64 %73
  %75 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %70, %76
  %78 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %78, i64 %80
  %82 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 4096
  %85 = load %struct.ofw_mapping*, %struct.ofw_mapping** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %85, i64 %87
  %89 = getelementptr inbounds %struct.ofw_mapping, %struct.ofw_mapping* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %58, i32 %64, i32 %77, i32 %84, i32 %90)
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %93 = call i64 @pager_output(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %38
  br label %100

96:                                               ; preds = %38
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %34

100:                                              ; preds = %95, %34
  br label %176

101:                                              ; preds = %22
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = udiv i64 %103, 16
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %6, align 4
  %106 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %107 = bitcast i32* %106 to %struct.ofw_mapping2*
  store %struct.ofw_mapping2* %107, %struct.ofw_mapping2** %4, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %172, %101
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %175

113:                                              ; preds = %109
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %115 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %115, i64 %117
  %119 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %121, i64 %123
  %125 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %127, i64 %129
  %131 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %126, %132
  %134 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %134, i64 %136
  %138 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %140, i64 %142
  %144 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %146, i64 %148
  %150 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %145, %151
  %153 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %153, i64 %155
  %157 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %158, 4096
  %160 = load %struct.ofw_mapping2*, %struct.ofw_mapping2** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %160, i64 %162
  %164 = getelementptr inbounds %struct.ofw_mapping2, %struct.ofw_mapping2* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %133, i32 %139, i32 %152, i32 %159, i32 %165)
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %168 = call i64 @pager_output(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %113
  br label %175

171:                                              ; preds = %113
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %109

175:                                              ; preds = %170, %109
  br label %176

176:                                              ; preds = %175, %100
  %177 = call i32 (...) @pager_close()
  br label %178

178:                                              ; preds = %176, %19
  ret void
}

declare dso_local i32 @OF_instance_to_package(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @pager_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
