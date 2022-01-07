; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_group_from_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_group_from_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* }
%struct.group = type { i8* }

@gidtb = common dso_local global %struct.TYPE_3__** null, align 8
@GID_SZ = common dso_local global i32 0, align 4
@VALID = common dso_local global i64 0, align 8
@gropn = common dso_local global i32 0, align 4
@GNMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @group_from_gid(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @gidtb, align 8
  %10 = icmp eq %struct.TYPE_3__** %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i64 (...) @gidtb_start()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %117

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @gidtb, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GID_SZ, align 4
  %19 = srem i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %20
  store %struct.TYPE_3__** %21, %struct.TYPE_3__*** %8, align 8
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VALID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %3, align 8
  br label %117

50:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %117

51:                                               ; preds = %31, %26, %15
  %52 = load i32, i32* @gropn, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = call i32 @_pwcache_setgroupent(i32 1)
  %56 = load i32, i32* @gropn, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @gropn, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = icmp eq %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call i64 @malloc(i32 24)
  %63 = inttoptr i64 %62 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %7, align 8
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %4, align 4
  %67 = call %struct.group* @_pwcache_getgrgid(i32 %66)
  store %struct.group* %67, %struct.group** %6, align 8
  %68 = icmp eq %struct.group* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = icmp eq %struct.TYPE_3__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8* null, i8** %3, align 8
  br label %117

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @GNMLEN, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @INVALID, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  store i8* null, i8** %3, align 8
  br label %117

90:                                               ; preds = %73
  br label %113

91:                                               ; preds = %65
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = icmp eq %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.group*, %struct.group** %6, align 8
  %96 = getelementptr inbounds %struct.group, %struct.group* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %3, align 8
  br label %117

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.group*, %struct.group** %6, align 8
  %106 = getelementptr inbounds %struct.group, %struct.group* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @GNMLEN, align 4
  %109 = call i32 @strlcpy(i8* %104, i8* %107, i32 %108)
  %110 = load i64, i64* @VALID, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %98, %90
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %113, %94, %89, %72, %50, %46, %14
  %118 = load i8*, i8** %3, align 8
  ret i8* %118
}

declare dso_local i64 @gidtb_start(...) #1

declare dso_local i32 @_pwcache_setgroupent(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.group* @_pwcache_getgrgid(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
