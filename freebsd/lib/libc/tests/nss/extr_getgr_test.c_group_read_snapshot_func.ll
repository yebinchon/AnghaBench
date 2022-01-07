; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_group_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_group_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"1 line read from snapshot:\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nomem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, i8*)* @group_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_read_snapshot_func(%struct.group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 0, i32* %11, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %15 = load %struct.group*, %struct.group** %4, align 8
  %16 = call i32 @memset(%struct.group* %15, i32 0, i32 32)
  br label %17

17:                                               ; preds = %109, %2
  %18 = load i8*, i8** %10, align 8
  %19 = call i8* @strsep(i8** %8, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %70 [
    i32 0, label %23
    i32 1, label %35
    i32 2, label %47
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = bitcast i8* %25 to %struct.TYPE_5__*
  %27 = load %struct.group*, %struct.group** %4, align 8
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 2
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.group*, %struct.group** %4, align 8
  %30 = getelementptr inbounds %struct.group, %struct.group* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ATF_REQUIRE(i32 %33)
  br label %109

35:                                               ; preds = %21
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strdup(i8* %36)
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  %39 = load %struct.group*, %struct.group** %4, align 8
  %40 = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 1
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.group*, %struct.group** %4, align 8
  %42 = getelementptr inbounds %struct.group, %struct.group* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ATF_REQUIRE(i32 %45)
  br label %109

47:                                               ; preds = %21
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strtol(i8* %48, i8** %9, i32 10)
  %50 = load %struct.group*, %struct.group** %4, align 8
  %51 = getelementptr inbounds %struct.group, %struct.group* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.group*, %struct.group** %4, align 8
  %58 = getelementptr inbounds %struct.group, %struct.group* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @free(%struct.TYPE_5__* %59)
  %61 = load %struct.group*, %struct.group** %4, align 8
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @free(%struct.TYPE_5__* %63)
  %65 = load %struct.group*, %struct.group** %4, align 8
  %66 = getelementptr inbounds %struct.group, %struct.group* %65, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.group*, %struct.group** %4, align 8
  %68 = getelementptr inbounds %struct.group, %struct.group* %67, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %68, align 8
  store i32 -1, i32* %3, align 4
  br label %136

69:                                               ; preds = %47
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %109

70:                                               ; preds = %21
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = icmp eq %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %136

78:                                               ; preds = %73
  %79 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @ATF_REQUIRE(i32 %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* @strdup(i8* %88)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @ATF_REQUIRE(i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @sl_add(%struct.TYPE_5__* %94, i8* %95)
  br label %97

97:                                               ; preds = %87, %78
  br label %108

98:                                               ; preds = %70
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @strdup(i8* %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @ATF_REQUIRE(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @sl_add(%struct.TYPE_5__* %105, i8* %106)
  br label %108

108:                                              ; preds = %98, %97
  br label %109

109:                                              ; preds = %108, %69, %35, %23
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %17

112:                                              ; preds = %17
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.group*, %struct.group** %4, align 8
  %117 = getelementptr inbounds %struct.group, %struct.group* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = call i32 @free(%struct.TYPE_5__* %118)
  %120 = load %struct.group*, %struct.group** %4, align 8
  %121 = getelementptr inbounds %struct.group, %struct.group* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @free(%struct.TYPE_5__* %122)
  %124 = load %struct.group*, %struct.group** %4, align 8
  %125 = call i32 @memset(%struct.group* %124, i32 0, i32 32)
  store i32 -1, i32* %3, align 4
  br label %136

126:                                              ; preds = %112
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = call i32 @sl_add(%struct.TYPE_5__* %127, i8* null)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.group*, %struct.group** %4, align 8
  %133 = getelementptr inbounds %struct.group, %struct.group* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = call i32 @free(%struct.TYPE_5__* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %115, %77, %56
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memset(%struct.group*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

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
