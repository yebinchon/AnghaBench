; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getvmobject.c_kinfo_getvmobject.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getvmobject.c_kinfo_getvmobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_vmobject = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"vm.objects\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_vmobject* @kinfo_getvmobject(i32* %0) #0 {
  %2 = alloca %struct.kinfo_vmobject*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kinfo_vmobject*, align 8
  %8 = alloca %struct.kinfo_vmobject*, align 8
  %9 = alloca %struct.kinfo_vmobject*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = call i64 @sysctlbyname(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* null, i64* %10, i32* null, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @free(i8* %20)
  store %struct.kinfo_vmobject* null, %struct.kinfo_vmobject** %2, align 8
  br label %110

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i8* @reallocf(i8* %23, i64 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.kinfo_vmobject* null, %struct.kinfo_vmobject** %2, align 8
  br label %110

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @sysctlbyname(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30, i64* %10, i32* null, i32 0)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %48

34:                                               ; preds = %29
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  store %struct.kinfo_vmobject* null, %struct.kinfo_vmobject** %2, align 8
  br label %110

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %13

45:                                               ; preds = %13
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  store %struct.kinfo_vmobject* null, %struct.kinfo_vmobject** %2, align 8
  br label %110

48:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %57, %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = inttoptr i64 %59 to %struct.kinfo_vmobject*
  store %struct.kinfo_vmobject* %60, %struct.kinfo_vmobject** %7, align 8
  %61 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %7, align 8
  %62 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.kinfo_vmobject* @calloc(i32 %70, i32 4)
  store %struct.kinfo_vmobject* %71, %struct.kinfo_vmobject** %8, align 8
  %72 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %8, align 8
  %73 = icmp eq %struct.kinfo_vmobject* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @free(i8* %75)
  store %struct.kinfo_vmobject* null, %struct.kinfo_vmobject** %2, align 8
  br label %110

77:                                               ; preds = %69
  %78 = load i8*, i8** %4, align 8
  store i8* %78, i8** %5, align 8
  %79 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %8, align 8
  store %struct.kinfo_vmobject* %79, %struct.kinfo_vmobject** %9, align 8
  br label %80

80:                                               ; preds = %84, %77
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = inttoptr i64 %86 to %struct.kinfo_vmobject*
  store %struct.kinfo_vmobject* %87, %struct.kinfo_vmobject** %7, align 8
  %88 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %9, align 8
  %89 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %7, align 8
  %90 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %7, align 8
  %91 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(%struct.kinfo_vmobject* %88, %struct.kinfo_vmobject* %89, i32 %92)
  %94 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %7, align 8
  %95 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %5, align 8
  %100 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %9, align 8
  %101 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %100, i32 0, i32 0
  store i32 4, i32* %101, align 4
  %102 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %9, align 8
  %103 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %102, i32 1
  store %struct.kinfo_vmobject* %103, %struct.kinfo_vmobject** %9, align 8
  br label %80

104:                                              ; preds = %80
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %3, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %8, align 8
  store %struct.kinfo_vmobject* %109, %struct.kinfo_vmobject** %2, align 8
  br label %110

110:                                              ; preds = %104, %74, %45, %38, %28, %19
  %111 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %2, align 8
  ret %struct.kinfo_vmobject* %111
}

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local %struct.kinfo_vmobject* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.kinfo_vmobject*, %struct.kinfo_vmobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
