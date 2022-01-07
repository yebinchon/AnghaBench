; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_comutil.c_zpool_get_load_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_comutil.c_zpool_get_load_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }

@ZPOOL_NO_REWIND = common dso_local global i8* null, align 8
@UINT64_MAX = common dso_local global i8* null, align 8
@ZPOOL_LOAD_POLICY = common dso_local global i32 0, align 4
@ZPOOL_LOAD_REWIND_POLICY = common dso_local global i32 0, align 4
@ZPOOL_REWIND_POLICIES = common dso_local global i32 0, align 4
@ZPOOL_LOAD_REQUEST_TXG = common dso_local global i32 0, align 4
@ZPOOL_LOAD_META_THRESH = common dso_local global i32 0, align 4
@ZPOOL_LOAD_DATA_THRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpool_get_load_policy(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i8*, i8** @ZPOOL_NO_REWIND, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** @UINT64_MAX, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @UINT64_MAX, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %115

23:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  br label %24

24:                                               ; preds = %104, %23
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @nvlist_next_nvpair(i32* %25, i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %105

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @nvpair_name(i32* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @ZPOOL_LOAD_POLICY, align 4
  %34 = call i64 @strcmp(i8* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @nvpair_value_nvlist(i32* %37, i32** %5)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  call void @zpool_get_load_policy(i32* %41, %struct.TYPE_3__* %42)
  br label %43

43:                                               ; preds = %40, %36
  br label %115

44:                                               ; preds = %29
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @ZPOOL_LOAD_REWIND_POLICY, align 4
  %47 = call i64 @strcmp(i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i64 @nvpair_value_uint32(i32* %50, i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZPOOL_REWIND_POLICIES, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i8*, i8** @ZPOOL_NO_REWIND, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %55
  br label %69

69:                                               ; preds = %68, %49
  br label %103

70:                                               ; preds = %44
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @ZPOOL_LOAD_REQUEST_TXG, align 4
  %73 = call i64 @strcmp(i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = call i32 @nvpair_value_uint64(i32* %76, i8** %78)
  br label %102

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* @ZPOOL_LOAD_META_THRESH, align 4
  %83 = call i64 @strcmp(i8* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = call i32 @nvpair_value_uint64(i32* %86, i8** %88)
  br label %101

90:                                               ; preds = %80
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @ZPOOL_LOAD_DATA_THRESH, align 4
  %93 = call i64 @strcmp(i8* %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = call i32 @nvpair_value_uint64(i32* %96, i8** %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %75
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103
  br label %24

105:                                              ; preds = %24
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** @ZPOOL_NO_REWIND, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %22, %43, %110, %105
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvpair_value_uint32(i32*, i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
