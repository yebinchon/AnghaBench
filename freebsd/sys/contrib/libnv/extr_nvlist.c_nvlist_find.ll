; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@NV_TYPE_NONE = common dso_local global i32 0, align 4
@NV_TYPE_FIRST = common dso_local global i32 0, align 4
@NV_TYPE_LAST = common dso_local global i32 0, align 4
@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i8*)* @nvlist_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvlist_find(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @NVLIST_ASSERT(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NV_TYPE_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NV_TYPE_FIRST, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NV_TYPE_LAST, align 4
  %26 = icmp sle i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br label %29

29:                                               ; preds = %27, %3
  %30 = phi i1 [ true, %3 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @PJDLOG_ASSERT(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32* @nvlist_first_nvpair(%struct.TYPE_6__* %33)
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %72, %29
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NV_TYPE_NONE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @nvpair_type(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %72

48:                                               ; preds = %42, %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @nvpair_name(i32* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcasecmp(i32 %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %72

62:                                               ; preds = %55
  br label %71

63:                                               ; preds = %48
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @nvpair_name(i32* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i32 %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %72

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %62
  br label %76

72:                                               ; preds = %69, %61, %47
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32* @nvlist_next_nvpair(%struct.TYPE_6__* %73, i32* %74)
  store i32* %75, i32** %7, align 8
  br label %35

76:                                               ; preds = %71, %35
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @ENOENT, align 4
  %81 = call i32 @ERRNO_SET(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i32 @NVLIST_ASSERT(%struct.TYPE_6__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32* @nvlist_first_nvpair(%struct.TYPE_6__*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ERRNO_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
