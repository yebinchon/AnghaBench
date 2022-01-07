; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"1 line read from snapshot:\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"noaliases\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servent*, i8*)* @servent_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @servent_read_snapshot_func(%struct.servent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.servent* %0, %struct.servent** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.servent*, %struct.servent** %4, align 8
  %15 = call i32 @memset(%struct.servent* %14, i32 0, i32 32)
  br label %16

16:                                               ; preds = %101, %2
  %17 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %104

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %62 [
    i32 0, label %21
    i32 1, label %33
    i32 2, label %50
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strdup(i8* %22)
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  %25 = load %struct.servent*, %struct.servent** %4, align 8
  %26 = getelementptr inbounds %struct.servent, %struct.servent* %25, i32 0, i32 2
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.servent*, %struct.servent** %4, align 8
  %28 = getelementptr inbounds %struct.servent, %struct.servent* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  br label %101

33:                                               ; preds = %19
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strtol(i8* %34, i8** %9, i32 10)
  %36 = trunc i64 %35 to i32
  %37 = call i32 @htons(i32 %36)
  %38 = load %struct.servent*, %struct.servent** %4, align 8
  %39 = getelementptr inbounds %struct.servent, %struct.servent* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.servent*, %struct.servent** %4, align 8
  %46 = getelementptr inbounds %struct.servent, %struct.servent* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_5__* %47)
  store i32 -1, i32* %3, align 4
  br label %128

49:                                               ; preds = %33
  br label %101

50:                                               ; preds = %19
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = bitcast i8* %52 to %struct.TYPE_5__*
  %54 = load %struct.servent*, %struct.servent** %4, align 8
  %55 = getelementptr inbounds %struct.servent, %struct.servent* %54, i32 0, i32 1
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.servent*, %struct.servent** %4, align 8
  %57 = getelementptr inbounds %struct.servent, %struct.servent* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ATF_REQUIRE(i32 %60)
  br label %101

62:                                               ; preds = %19
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = icmp eq %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %128

70:                                               ; preds = %65
  %71 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %6, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @ATF_REQUIRE(i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load i8*, i8** %7, align 8
  %81 = call i8* @strdup(i8* %80)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @ATF_REQUIRE(i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @sl_add(%struct.TYPE_5__* %86, i8* %87)
  br label %89

89:                                               ; preds = %79, %70
  br label %100

90:                                               ; preds = %62
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @strdup(i8* %91)
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @ATF_REQUIRE(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @sl_add(%struct.TYPE_5__* %97, i8* %98)
  br label %100

100:                                              ; preds = %90, %89
  br label %101

101:                                              ; preds = %100, %50, %49, %21
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %16

104:                                              ; preds = %16
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.servent*, %struct.servent** %4, align 8
  %109 = getelementptr inbounds %struct.servent, %struct.servent* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = call i32 @free(%struct.TYPE_5__* %110)
  %112 = load %struct.servent*, %struct.servent** %4, align 8
  %113 = getelementptr inbounds %struct.servent, %struct.servent* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_5__* %114)
  %116 = load %struct.servent*, %struct.servent** %4, align 8
  %117 = call i32 @memset(%struct.servent* %116, i32 0, i32 32)
  store i32 -1, i32* %3, align 4
  br label %128

118:                                              ; preds = %104
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = call i32 @sl_add(%struct.TYPE_5__* %119, i8* null)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.servent*, %struct.servent** %4, align 8
  %125 = getelementptr inbounds %struct.servent, %struct.servent* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = call i32 @free(%struct.TYPE_5__* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %118, %107, %69, %44
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memset(%struct.servent*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @sl_init(...) #1

declare dso_local i32 @sl_add(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
