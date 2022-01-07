; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }

@.str = private unnamed_addr constant [43 x i8] c"kvm_write not implemented for dead kernels\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid address (%lx)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"kvm_write\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@_PATH_MEM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_write(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = call i64 @ISALIVE(%struct.TYPE_9__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %23, i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %150

28:                                               ; preds = %17, %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = call i64 @ISALIVE(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @lseek(i32 %35, i32 %36, i32 0)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i64, i64* @errno, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %43, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %5, align 4
  br label %150

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @write(i32 %49, i8* %50, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = call i32 @_kvm_syserr(%struct.TYPE_9__* %57, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %150

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %65, i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %150

73:                                               ; preds = %28
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %13, align 8
  br label %75

75:                                               ; preds = %131, %73
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %75
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 %83(%struct.TYPE_9__* %84, i32 %85, i32* %12)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %150

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %90
  store i64 0, i64* @errno, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @lseek(i32 %101, i32 %102, i32 0)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i64, i64* @errno, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = load i8*, i8** @_PATH_MEM, align 8
  %111 = call i32 @_kvm_syserr(%struct.TYPE_9__* %109, i32 0, i8* %110)
  br label %143

112:                                              ; preds = %105, %98
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @write(i32 %115, i8* %116, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @_kvm_syserr(%struct.TYPE_9__* %122, i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %143

127:                                              ; preds = %112
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %143

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %13, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %9, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %9, align 8
  br label %75

143:                                              ; preds = %130, %121, %108, %75
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %143, %89, %71, %56, %42, %22
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i64 @ISALIVE(%struct.TYPE_9__*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
