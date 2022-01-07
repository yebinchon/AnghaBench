; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_read_text_conflict_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_read_text_conflict_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32*, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i32*, i8*, i32*, i8*, i32, i32*, i32*, i32*, i32*)* @read_text_conflict_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_text_conflict_desc(%struct.TYPE_4__** %0, i32* %1, i8* %2, i32* %3, i8* %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i32*, i32** %19, align 8
  %23 = call %struct.TYPE_4__* @svn_wc_conflict_description_create_text2(i8* %21, i32* %22)
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %24, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @svn_mime_type_is_binary(i8* %32)
  br label %36

34:                                               ; preds = %10
  %35 = load i32, i32* @FALSE, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 8
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  store i32* %45, i32** %48, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  store i32* %49, i32** %52, align 8
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @svn_wc__conflict_read_text_conflict(i32* %55, i32* %58, i32* %61, i32* %62, i8* %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %19, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @apr_pstrdup(i32* %69, i8* %70)
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local %struct.TYPE_4__* @svn_wc_conflict_description_create_text2(i8*, i32*) #1

declare dso_local i32 @svn_mime_type_is_binary(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_text_conflict(i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
