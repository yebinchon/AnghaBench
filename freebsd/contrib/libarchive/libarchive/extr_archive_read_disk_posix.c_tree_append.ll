; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i8*, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*, i8*, i64)* @tree_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_append(%struct.tree* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tree*, %struct.tree** %4, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.tree*, %struct.tree** %4, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tree*, %struct.tree** %4, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %35, %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  br label %22

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.tree*, %struct.tree** %4, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = add i64 %43, 2
  store i64 %44, i64* %7, align 8
  %45 = load %struct.tree*, %struct.tree** %4, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 3
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @archive_string_ensure(%struct.TYPE_7__* %46, i64 %47)
  %49 = load %struct.tree*, %struct.tree** %4, align 8
  %50 = getelementptr inbounds %struct.tree, %struct.tree* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %38
  %54 = load %struct.tree*, %struct.tree** %4, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.tree*, %struct.tree** %4, align 8
  %59 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 3
  %60 = call i32 @archive_strlen(%struct.TYPE_7__* %59)
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 47
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.tree*, %struct.tree** %4, align 8
  %69 = getelementptr inbounds %struct.tree, %struct.tree* %68, i32 0, i32 3
  %70 = call i32 @archive_strappend_char(%struct.TYPE_7__* %69, i8 signext 47)
  br label %71

71:                                               ; preds = %67, %53, %38
  %72 = load %struct.tree*, %struct.tree** %4, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.tree*, %struct.tree** %4, align 8
  %77 = getelementptr inbounds %struct.tree, %struct.tree* %76, i32 0, i32 3
  %78 = call i32 @archive_strlen(%struct.TYPE_7__* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load %struct.tree*, %struct.tree** %4, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.tree*, %struct.tree** %4, align 8
  %84 = getelementptr inbounds %struct.tree, %struct.tree* %83, i32 0, i32 3
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @archive_strncat(%struct.TYPE_7__* %84, i8* %85, i64 %86)
  %88 = load %struct.tree*, %struct.tree** %4, align 8
  %89 = getelementptr inbounds %struct.tree, %struct.tree* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.tree*, %struct.tree** %4, align 8
  %92 = getelementptr inbounds %struct.tree, %struct.tree* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  ret void
}

declare dso_local i32 @archive_string_ensure(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_7__*) #1

declare dso_local i32 @archive_strappend_char(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @archive_strncat(%struct.TYPE_7__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
