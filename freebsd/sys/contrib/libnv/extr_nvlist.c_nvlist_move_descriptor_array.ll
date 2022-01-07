; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_move_descriptor_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_move_descriptor_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvlist_move_descriptor_array(%struct.TYPE_5__* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = call i64 @nvlist_error(%struct.TYPE_5__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %10, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @nv_free(i32* %32)
  br label %34

34:                                               ; preds = %31, %14
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = call i64 @nvlist_error(%struct.TYPE_5__* %35)
  %37 = call i32 @ERRNO_SET(i64 %36)
  br label %58

38:                                               ; preds = %4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32* @nvpair_move_descriptor_array(i8* %39, i32* %40, i64 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i64 @ERRNO_OR_DEFAULT(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ERRNO_SET(i64 %52)
  br label %58

54:                                               ; preds = %38
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @nvlist_move_nvpair(%struct.TYPE_5__* %55, i32* %56)
  br label %58

58:                                               ; preds = %34, %54, %45
  ret void
}

declare dso_local i64 @nvlist_error(%struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @nv_free(i32*) #1

declare dso_local i32 @ERRNO_SET(i64) #1

declare dso_local i32* @nvpair_move_descriptor_array(i8*, i32*, i64) #1

declare dso_local i64 @ERRNO_OR_DEFAULT(i32) #1

declare dso_local i32 @nvlist_move_nvpair(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
