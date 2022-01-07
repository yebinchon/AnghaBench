; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prefix_string.c_svn_prefix_string__expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prefix_string.c_svn_prefix_string__expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_prefix_string__expand(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i8* @apr_palloc(i32* %20, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_8__* @apr_pcalloc(i32* %24, i32 16)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %41, %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %53, %58
  %60 = call i32 @memcpy(i8* %49, i32 %52, i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %3, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %71
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
