; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shlib_list = type { i8*, i64, i32, i32, i8*, %struct.shlib_list*, i32 }

@shlib_head = common dso_local global %struct.shlib_list* null, align 8
@major = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Updating lib%s.%d.%d to %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Adding %s/%s\0A\00", align 1
@shlib_tail = common dso_local global %struct.shlib_list** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32*, i32)* @enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.shlib_list*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.shlib_list*, %struct.shlib_list** @shlib_head, align 8
  store %struct.shlib_list* %12, %struct.shlib_list** %11, align 8
  br label %13

13:                                               ; preds = %85, %5
  %14 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %15 = icmp ne %struct.shlib_list* %14, null
  br i1 %15, label %16, label %89

16:                                               ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %19 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %17, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* @major, align 8
  %25 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %26 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %16
  br label %85

30:                                               ; preds = %23
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %34 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %37 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @cmpndewey(i32* %31, i32 %32, i32 %35, i32 %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %30
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %46 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %49 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %53 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %51, i32 %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %44, %41
  %59 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %60 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i8* @strdup(i8* %63)
  %65 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %66 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %68 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i8* @concat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %75 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %78 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bcopy(i32* %76, i32 %79, i32 4)
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %83 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %58, %30
  br label %89

85:                                               ; preds = %29
  %86 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %87 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %86, i32 0, i32 5
  %88 = load %struct.shlib_list*, %struct.shlib_list** %87, align 8
  store %struct.shlib_list* %88, %struct.shlib_list** %11, align 8
  br label %13

89:                                               ; preds = %84, %13
  %90 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %91 = icmp ne %struct.shlib_list* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %126

93:                                               ; preds = %89
  %94 = load i64, i64* @verbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = call i64 @xmalloc(i32 48)
  %102 = inttoptr i64 %101 to %struct.shlib_list*
  store %struct.shlib_list* %102, %struct.shlib_list** %11, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %106 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @concat(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  %110 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %111 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %114 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @bcopy(i32* %112, i32 %115, i32 4)
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %119 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %121 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %120, i32 0, i32 5
  store %struct.shlib_list* null, %struct.shlib_list** %121, align 8
  %122 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %123 = load %struct.shlib_list**, %struct.shlib_list*** @shlib_tail, align 8
  store %struct.shlib_list* %122, %struct.shlib_list** %123, align 8
  %124 = load %struct.shlib_list*, %struct.shlib_list** %11, align 8
  %125 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %124, i32 0, i32 5
  store %struct.shlib_list** %125, %struct.shlib_list*** @shlib_tail, align 8
  br label %126

126:                                              ; preds = %100, %92
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @cmpndewey(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
