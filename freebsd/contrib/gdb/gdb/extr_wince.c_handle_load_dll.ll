; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_load_dll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_load_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i64 }

@current_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@current_process_handle = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x:%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @handle_load_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_load_dll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0, i32 0), %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = sub i64 %17, 1
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %22, align 16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %136

28:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  store i8* %19, i8** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %81, %28
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %19, i64 %17
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* @current_process_handle, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @read_process_memory(i32 %37, i8* %38, i8* %39, i32 16, i32* %14)
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, %19
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %136

47:                                               ; preds = %43, %36
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %73, %47
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = icmp ult i8* %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %87

64:                                               ; preds = %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  br label %49

76:                                               ; preds = %49
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %86

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 16
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 16
  store i8* %85, i8** %9, align 8
  br label %32

86:                                               ; preds = %79, %32
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %136

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = call i8* @alloca(i32 %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %136

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @memcpy(i8* %103, i8* %19, i32 %104)
  br label %113

106:                                              ; preds = %97
  %107 = load i32, i32* @CP_ACP, align 4
  %108 = ptrtoint i8* %19 to i32
  %109 = load i32, i32* %12, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @WideCharToMultiByte(i32 %107, i32 0, i32 %108, i32 %109, i8* %110, i32 %111, i32 0, i32 0)
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i8*, i8** %10, align 8
  %116 = call i8* @strchr(i8* %115, i8 signext 92)
  store i8* %116, i8** %7, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  store i8 47, i8* %119, align 1
  br label %114

120:                                              ; preds = %114
  %121 = load i8*, i8** %10, align 8
  %122 = call i8* @strrchr(i8* %121, i8 signext 47)
  store i8* %122, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %10, align 8
  store i8* %125, i8** %11, align 8
  br label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %11, align 8
  br label %129

129:                                              ; preds = %126, %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %132, i8* %133)
  %135 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %136

136:                                              ; preds = %129, %96, %90, %46, %27
  %137 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_process_memory(i32, i8*, i8*, i32, i32*) #2

declare dso_local i8* @alloca(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @printf_unfiltered(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
