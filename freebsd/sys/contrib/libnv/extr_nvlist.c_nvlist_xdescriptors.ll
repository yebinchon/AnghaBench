; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_xdescriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_xdescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*)* @nvlist_xdescriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvlist_xdescriptors(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__**, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @NVLIST_ASSERT(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  store i8* null, i8** %5, align 8
  br label %21

21:                                               ; preds = %76, %2
  br label %22

22:                                               ; preds = %74, %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32* @nvlist_next(%struct.TYPE_9__* %23, i32* %7, i8** %5)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %74 [
    i32 131, label %30
    i32 130, label %36
    i32 129, label %57
    i32 128, label %60
  ]

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @nvpair_get_descriptor(i32* %31)
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  br label %74

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @nvpair_get_descriptor_array(i32* %37, i64* %9)
  store i32* %38, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %53, %36
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %39

56:                                               ; preds = %39
  br label %74

57:                                               ; preds = %26
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_9__* @nvpair_get_nvlist(i32* %58)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %3, align 8
  store i8* null, i8** %5, align 8
  br label %74

60:                                               ; preds = %26
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_9__** @nvpair_get_nvlist_array(i32* %61, i64* %12)
  store %struct.TYPE_9__** %62, %struct.TYPE_9__*** %11, align 8
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %64 = icmp ne %struct.TYPE_9__** %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @PJDLOG_ASSERT(i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = icmp ugt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @PJDLOG_ASSERT(i32 %69)
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %71, i64 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %3, align 8
  store i8* null, i8** %5, align 8
  br label %74

74:                                               ; preds = %26, %60, %57, %56, %30
  br label %22

75:                                               ; preds = %22
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = call %struct.TYPE_9__* @nvlist_get_pararr(%struct.TYPE_9__* %77, i8** %5)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %3, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %21, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32 @NVLIST_ASSERT(%struct.TYPE_9__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32* @nvlist_next(%struct.TYPE_9__*, i32*, i8**) #1

declare dso_local i32 @nvpair_get_descriptor(i32*) #1

declare dso_local i32* @nvpair_get_descriptor_array(i32*, i64*) #1

declare dso_local %struct.TYPE_9__* @nvpair_get_nvlist(i32*) #1

declare dso_local %struct.TYPE_9__** @nvpair_get_nvlist_array(i32*, i64*) #1

declare dso_local %struct.TYPE_9__* @nvlist_get_pararr(%struct.TYPE_9__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
