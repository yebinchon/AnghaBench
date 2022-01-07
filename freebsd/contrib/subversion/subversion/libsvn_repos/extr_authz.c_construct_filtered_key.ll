; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_construct_filtered_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_construct_filtered_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i8*, %struct.TYPE_6__*, i32*)* @construct_filtered_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @construct_filtered_key(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_6__* @apr_pcalloc(i32* %14, i32 16)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %32 ]
  store i8* %34, i8** %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 1
  store i64 %43, i64* %13, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_membuf__create(%struct.TYPE_6__* %44, i64 %45, i32* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  %57 = call i32 @memcpy(i8* %53, i8* %54, i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @memcpy(i8* %64, i8* %65, i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(i8* %77, i8* %80, i64 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %85
}

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_membuf__create(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
