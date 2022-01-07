; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c_kvm_fdnlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c_kvm_fdnlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32*)*, i32 }
%struct.kvm_nlist = type { i8*, i32, i32 }
%struct.nlist = type { i8*, i32, i32 }

@N_DATA = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.kvm_nlist*)* @kvm_fdnlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_fdnlist(%struct.TYPE_3__* %0, %struct.kvm_nlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.kvm_nlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.kvm_nlist* %1, %struct.kvm_nlist** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %15 = icmp eq i32 (i8*, i32*)* %14, null
  br i1 %15, label %16, label %105

16:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %18, i64 %20
  %22 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %26, i64 %28
  %30 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %25, %17
  %37 = phi i1 [ false, %17 ], [ %35, %25 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %17

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = call %struct.nlist* @calloc(i32 %44, i32 16)
  store %struct.nlist* %45, %struct.nlist** %9, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %62, %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %51, i64 %53
  %55 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.nlist*, %struct.nlist** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nlist, %struct.nlist* %57, i64 %59
  %61 = getelementptr inbounds %struct.nlist, %struct.nlist* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nlist*, %struct.nlist** %9, align 8
  %70 = call i32 @__fdnlist(i32 %68, %struct.nlist* %69)
  store i32 %70, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %98, %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.nlist*, %struct.nlist** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nlist, %struct.nlist* %76, i64 %78
  %80 = getelementptr inbounds %struct.nlist, %struct.nlist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %82, i64 %84
  %86 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 8
  %87 = load %struct.nlist*, %struct.nlist** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.nlist, %struct.nlist* %87, i64 %89
  %91 = getelementptr inbounds %struct.nlist, %struct.nlist* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %93, i64 %95
  %97 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %96, i32 0, i32 2
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.nlist*, %struct.nlist** %9, align 8
  %103 = call i32 @free(%struct.nlist* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %152

105:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %147, %105
  %107 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %108 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %113 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %111, %106
  %120 = phi i1 [ false, %106 ], [ %118, %111 ]
  br i1 %120, label %121, label %150

121:                                              ; preds = %119
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %123, align 8
  %125 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %126 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 %124(i8* %127, i32* %6)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %135 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %134, i32 0, i32 2
  store i32 0, i32* %135, align 4
  %136 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %137 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %136, i32 0, i32 1
  store i32 0, i32* %137, align 8
  br label %147

138:                                              ; preds = %121
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %141 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @N_DATA, align 4
  %143 = load i32, i32* @N_EXT, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %146 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %138, %131
  %148 = load %struct.kvm_nlist*, %struct.kvm_nlist** %5, align 8
  %149 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %148, i32 1
  store %struct.kvm_nlist* %149, %struct.kvm_nlist** %5, align 8
  br label %106

150:                                              ; preds = %119
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %101
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.nlist* @calloc(i32, i32) #1

declare dso_local i32 @__fdnlist(i32, %struct.nlist*) #1

declare dso_local i32 @free(%struct.nlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
