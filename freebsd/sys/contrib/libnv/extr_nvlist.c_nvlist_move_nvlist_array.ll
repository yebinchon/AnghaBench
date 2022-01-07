; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_move_nvlist_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_move_nvlist_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvlist_move_nvlist_array(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_10__** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = call i64 @nvlist_error(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %16 = icmp ne %struct.TYPE_10__** %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %23, i64 %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32* @nvlist_get_pararr(%struct.TYPE_10__* %26, i32* null)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @nvlist_destroy(%struct.TYPE_10__* %33)
  br label %35

35:                                               ; preds = %29, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %42 = call i32 @nv_free(%struct.TYPE_10__** %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = call i64 @nvlist_error(%struct.TYPE_10__* %43)
  %45 = call i32 @ERRNO_SET(i64 %44)
  br label %66

46:                                               ; preds = %4
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32* @nvpair_move_nvlist_array(i8* %47, %struct.TYPE_10__** %48, i64 %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i64 @ERRNO_OR_DEFAULT(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ERRNO_SET(i64 %60)
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @nvlist_move_nvpair(%struct.TYPE_10__* %63, i32* %64)
  br label %66

66:                                               ; preds = %40, %62, %53
  ret void
}

declare dso_local i64 @nvlist_error(%struct.TYPE_10__*) #1

declare dso_local i32* @nvlist_get_pararr(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @nvlist_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @nv_free(%struct.TYPE_10__**) #1

declare dso_local i32 @ERRNO_SET(i64) #1

declare dso_local i32* @nvpair_move_nvlist_array(i8*, %struct.TYPE_10__**, i64) #1

declare dso_local i64 @ERRNO_OR_DEFAULT(i32) #1

declare dso_local i32 @nvlist_move_nvpair(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
