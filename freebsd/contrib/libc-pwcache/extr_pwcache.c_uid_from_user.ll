; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_uid_from_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_uid_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.passwd = type { i32 }

@usrtb = common dso_local global %struct.TYPE_3__** null, align 8
@UNM_SZ = common dso_local global i32 0, align 4
@INVALID = common dso_local global i64 0, align 8
@pwopn = common dso_local global i32 0, align 4
@UNMLEN = common dso_local global i32 0, align 4
@VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uid_from_user(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__**, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %111

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %19 = icmp eq %struct.TYPE_3__** %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i64 (...) @usrtb_start()
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %111

24:                                               ; preds = %20, %17
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @UNM_SZ, align 4
  %29 = call i32 @st_hash(i8* %26, i64 %27, i32 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %30
  store %struct.TYPE_3__** %31, %struct.TYPE_3__*** %8, align 8
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %24
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i8* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INVALID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %111

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %111

60:                                               ; preds = %41, %36, %24
  %61 = load i32, i32* @pwopn, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = call i32 @_pwcache_setpassent(i32 1)
  %65 = load i32, i32* @pwopn, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @pwopn, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = icmp eq %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i64 @malloc(i32 16)
  %72 = inttoptr i64 %71 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %7, align 8
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = icmp eq %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i8*, i8** %4, align 8
  %79 = call %struct.passwd* @_pwcache_getpwnam(i8* %78)
  store %struct.passwd* %79, %struct.passwd** %6, align 8
  %80 = icmp eq %struct.passwd* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %111

82:                                               ; preds = %77
  %83 = load %struct.passwd*, %struct.passwd** %6, align 8
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %111

87:                                               ; preds = %74
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* @UNMLEN, align 4
  %93 = call i32 @strlcpy(i32 %90, i8* %91, i32 %92)
  %94 = load i8*, i8** %4, align 8
  %95 = call %struct.passwd* @_pwcache_getpwnam(i8* %94)
  store %struct.passwd* %95, %struct.passwd** %6, align 8
  %96 = icmp eq %struct.passwd* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i64, i64* @INVALID, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  store i32 -1, i32* %3, align 4
  br label %111

101:                                              ; preds = %87
  %102 = load i64, i64* @VALID, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.passwd*, %struct.passwd** %6, align 8
  %106 = getelementptr inbounds %struct.passwd, %struct.passwd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load i32*, i32** %5, align 8
  store i32 %107, i32* %110, align 4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %101, %97, %82, %81, %55, %54, %23, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @usrtb_start(...) #1

declare dso_local i32 @st_hash(i8*, i64, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @_pwcache_setpassent(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.passwd* @_pwcache_getpwnam(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
