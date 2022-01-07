; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_ufslinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_ufslinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct._fts_private = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ufslike_filesystems = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @fts_ufslinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_ufslinks(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct._fts_private*, align 8
  %6 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct._fts_private*
  store %struct._fts_private* %8, %struct._fts_private** %5, align 8
  %9 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %10 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %21 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %20, i32 0, i32 2
  %22 = call i32 @freebsd11_statfs(i32 %19, %struct.TYPE_5__* %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %54

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %29 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %31 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load i8**, i8*** @ufslike_filesystems, align 8
  store i8** %32, i8*** %6, align 8
  br label %33

33:                                               ; preds = %50, %24
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %39 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i32 %41, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %48 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %6, align 8
  br label %33

53:                                               ; preds = %46, %33
  br label %57

54:                                               ; preds = %16
  %55 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %56 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %53
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct._fts_private*, %struct._fts_private** %5, align 8
  %60 = getelementptr inbounds %struct._fts_private, %struct._fts_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  ret i32 %61
}

declare dso_local i32 @freebsd11_statfs(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
