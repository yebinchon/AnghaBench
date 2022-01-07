; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_read2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kvm_read\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"short read\00", align 1
@_PATH_MEM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_read2(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  br i1 %16, label %17, label %58

17:                                               ; preds = %4
  store i64 0, i64* @errno, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lseek(i32 %20, i32 %21, i32 0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %28, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %5, align 4
  br label %135

31:                                               ; preds = %24, %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @read(i32 %34, i8* %35, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = call i32 @_kvm_syserr(%struct.TYPE_9__* %42, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %135

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %50, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %135

58:                                               ; preds = %4
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %13, align 8
  br label %60

60:                                               ; preds = %116, %58
  %61 = load i64, i64* %9, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %128

63:                                               ; preds = %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 %68(%struct.TYPE_9__* %69, i32 %70, i32* %12)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %135

75:                                               ; preds = %63
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %75
  store i64 0, i64* @errno, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @lseek(i32 %86, i32 %87, i32 0)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i64, i64* @errno, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = load i8*, i8** @_PATH_MEM, align 8
  %96 = call i32 @_kvm_syserr(%struct.TYPE_9__* %94, i32 0, i8* %95)
  br label %128

97:                                               ; preds = %90, %83
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @read(i32 %100, i8* %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @_kvm_syserr(%struct.TYPE_9__* %107, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %128

112:                                              ; preds = %97
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %128

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %13, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %9, align 8
  br label %60

128:                                              ; preds = %115, %106, %93, %60
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %74, %56, %41, %27
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @ISALIVE(%struct.TYPE_9__*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
