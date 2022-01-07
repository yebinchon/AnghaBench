; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_ifmaybeload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_ifmaybeload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_map_entry = type { i8*, i8* }
%struct.module_stat = type { i32, i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@noload = common dso_local global i64 0, align 8
@module_map = common dso_local global %struct.module_map_entry* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"if_\00", align 1
@MOD_PREFIX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifmaybeload(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.module_stat, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.module_map_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = add nsw i32 %15, 3
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i64, i64* @noload, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  br label %130

26:                                               ; preds = %1
  %27 = load i8*, i8** %2, align 8
  %28 = trunc i64 %21 to i32
  %29 = call i32 @strlcpy(i8* %22, i8* %27, i32 %28)
  store i8* %22, i8** %10, align 8
  br label %30

30:                                               ; preds = %43, %26
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  store i8 0, i8* %41, align 1
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  br label %30

46:                                               ; preds = %40, %30
  store i8 0, i8* %19, align 16
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.module_map_entry*, %struct.module_map_entry** @module_map, align 8
  %50 = call i32 @nitems(%struct.module_map_entry* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.module_map_entry*, %struct.module_map_entry** @module_map, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.module_map_entry, %struct.module_map_entry* %53, i64 %55
  store %struct.module_map_entry* %56, %struct.module_map_entry** %12, align 8
  %57 = load %struct.module_map_entry*, %struct.module_map_entry** %12, align 8
  %58 = getelementptr inbounds %struct.module_map_entry, %struct.module_map_entry* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* %22)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.module_map_entry*, %struct.module_map_entry** %12, align 8
  %64 = getelementptr inbounds %struct.module_map_entry, %struct.module_map_entry* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = trunc i64 %17 to i32
  %67 = call i32 @strlcpy(i8* %19, i8* %65, i32 %66)
  store i32 1, i32* %13, align 4
  br label %72

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %47

72:                                               ; preds = %62, %47
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = trunc i64 %17 to i32
  %77 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = trunc i64 %17 to i32
  %79 = call i32 @strlcat(i8* %19, i8* %22, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 0
  store i32 16, i32* %81, align 8
  %82 = call i32 @kldnext(i32 0)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %125, %80
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @kldfirstmod(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %121, %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @modstat(i32 %93, %struct.module_stat* %3)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %121

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 47)
  store i8* %100, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %11, align 8
  br label %108

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %11, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = call i64 @strcmp(i8* %22, i8* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111, %108
  %116 = load i8*, i8** %11, align 8
  %117 = call i64 @strcmp(i8* %19, i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %111
  store i32 1, i32* %14, align 4
  br label %130

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @modfnext(i32 %122)
  store i32 %123, i32* %6, align 4
  br label %89

124:                                              ; preds = %89
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @kldnext(i32 %126)
  store i32 %127, i32* %5, align 4
  br label %83

128:                                              ; preds = %83
  %129 = call i32 @kldload(i8* %19)
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %128, %119, %25
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %14, align 4
  switch i32 %132, label %134 [
    i32 0, label %133
    i32 1, label %133
  ]

133:                                              ; preds = %130, %130
  ret void

134:                                              ; preds = %130
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @nitems(%struct.module_map_entry*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @kldnext(i32) #2

declare dso_local i32 @kldfirstmod(i32) #2

declare dso_local i64 @modstat(i32, %struct.module_stat*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @modfnext(i32) #2

declare dso_local i32 @kldload(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
