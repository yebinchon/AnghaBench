; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_nlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c_kvm_nlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nlist = type { i8*, i32, i64, i64, i32 }
%struct.kvm_nlist = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"kvm_nlist of non-native vmcore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_nlist(%struct.TYPE_6__* %0, %struct.nlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.nlist*, align 8
  %6 = alloca %struct.kvm_nlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.nlist* %1, %struct.nlist** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @kvm_native(%struct.TYPE_6__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_kvm_err(%struct.TYPE_6__* %14, i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %118

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load %struct.nlist*, %struct.nlist** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nlist, %struct.nlist* %21, i64 %23
  %25 = getelementptr inbounds %struct.nlist, %struct.nlist* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.nlist*, %struct.nlist** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nlist, %struct.nlist* %29, i64 %31
  %33 = getelementptr inbounds %struct.nlist, %struct.nlist* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %28, %20
  %40 = phi i1 [ false, %20 ], [ %38, %28 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %20

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %118

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = call %struct.kvm_nlist* @calloc(i32 %51, i32 16)
  store %struct.kvm_nlist* %52, %struct.kvm_nlist** %6, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %69, %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.nlist*, %struct.nlist** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.nlist, %struct.nlist* %58, i64 %60
  %62 = getelementptr inbounds %struct.nlist, %struct.nlist* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %64, i64 %66
  %68 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %67, i32 0, i32 0
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %75 = call i32 @kvm_nlist2(%struct.TYPE_6__* %73, %struct.kvm_nlist* %74)
  store i32 %75, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %113, %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %81, i64 %83
  %85 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nlist*, %struct.nlist** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.nlist, %struct.nlist* %87, i64 %89
  %91 = getelementptr inbounds %struct.nlist, %struct.nlist* %90, i32 0, i32 4
  store i32 %86, i32* %91, align 8
  %92 = load %struct.nlist*, %struct.nlist** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nlist, %struct.nlist* %92, i64 %94
  %96 = getelementptr inbounds %struct.nlist, %struct.nlist* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.nlist*, %struct.nlist** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nlist, %struct.nlist* %97, i64 %99
  %101 = getelementptr inbounds %struct.nlist, %struct.nlist* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.kvm_nlist*, %struct.kvm_nlist** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %102, i64 %104
  %106 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nlist*, %struct.nlist** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.nlist, %struct.nlist* %108, i64 %110
  %112 = getelementptr inbounds %struct.nlist, %struct.nlist* %111, i32 0, i32 1
  store i32 %107, i32* %112, align 8
  br label %113

113:                                              ; preds = %80
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %48, %13
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @kvm_native(%struct.TYPE_6__*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local %struct.kvm_nlist* @calloc(i32, i32) #1

declare dso_local i32 @kvm_nlist2(%struct.TYPE_6__*, %struct.kvm_nlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
