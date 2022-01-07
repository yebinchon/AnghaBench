; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_simplify_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_simplify_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i8* }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xo_simplify_format(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = call %struct.TYPE_12__* @xo_default(%struct.TYPE_12__* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @xo_count_fields(%struct.TYPE_12__* %22, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bzero(i32* %28, i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @xo_parse_fields(%struct.TYPE_12__* %34, i32* %28, i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %13, align 4
  br label %58

40:                                               ; preds = %4
  %41 = call i32 @xo_buf_init(%struct.TYPE_13__* %14)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @xo_gettext_finish_numbering_fields(%struct.TYPE_12__* %45, i8* %46, i32* %28)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @xo_gettext_simplify_format(%struct.TYPE_12__* %49, %struct.TYPE_13__* %14, i32* %28, i32 -1, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i8* null, i8** %5, align 8
  store i32 1, i32* %13, align 4
  br label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %5, align 8
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %54, %39
  %59 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i8*, i8** %5, align 8
  ret i8* %60
}

declare dso_local %struct.TYPE_12__* @xo_default(%struct.TYPE_12__*) #1

declare dso_local i32 @xo_count_fields(%struct.TYPE_12__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @xo_parse_fields(%struct.TYPE_12__*, i32*, i32, i8*) #1

declare dso_local i32 @xo_buf_init(%struct.TYPE_13__*) #1

declare dso_local i32 @xo_gettext_finish_numbering_fields(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i64 @xo_gettext_simplify_format(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
