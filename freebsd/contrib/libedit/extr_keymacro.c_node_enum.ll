; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32 }

@KEY_BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Some extended keys too long for internal print buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" \22%ls...\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64)* @node_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_enum(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i32, i32* @KEY_BUFSIZ, align 4
  %11 = sub nsw i32 %10, 5
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 34, i8* %21, align 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 0, i32* %4, align 4
  br label %116

41:                                               ; preds = %3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %116

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i32, i32* @KEY_BUFSIZ, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ct_visual_char(i8* %51, i32 %56, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp eq %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %94

65:                                               ; preds = %45
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 34, i8* %73, align 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %78, %79
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @keymacro_kprint(%struct.TYPE_9__* %83, i8* %87, i32* %89, i32 %92)
  br label %103

94:                                               ; preds = %45
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @node_enum(%struct.TYPE_9__* %95, %struct.TYPE_8__* %98, i64 %101)
  br label %103

103:                                              ; preds = %94, %65
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = icmp ne %struct.TYPE_8__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @node_enum(%struct.TYPE_9__* %109, %struct.TYPE_8__* %112, i64 %113)
  br label %115

115:                                              ; preds = %108, %103
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %44, %14
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @ct_visual_char(i8*, i32, i32) #1

declare dso_local i32 @keymacro_kprint(%struct.TYPE_9__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
