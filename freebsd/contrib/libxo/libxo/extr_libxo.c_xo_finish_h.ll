; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_finish_h.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_finish_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XOF_NO_CLOSE = common dso_local global i32 0, align 4
@XOF_NO_TOP = common dso_local global i32 0, align 4
@XOF_PRETTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XOIF_TOP_EMITTED = common dso_local global i32 0, align 4
@XOIF_MADE_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%*s%s}\0A\00", align 1
@XO_OP_FINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xo_finish_h(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = call %struct.TYPE_14__* @xo_default(%struct.TYPE_14__* %5)
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = load i32, i32* @XOF_NO_CLOSE, align 4
  %9 = call i64 @XOF_ISSET(%struct.TYPE_14__* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xo_do_close_all(%struct.TYPE_14__* %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = call i32 @xo_style(%struct.TYPE_14__* %18)
  switch i32 %19, label %59 [
    i32 128, label %20
    i32 129, label %55
  ]

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load i32, i32* @XOF_NO_TOP, align 4
  %23 = call i64 @XOF_ISSET(%struct.TYPE_14__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = load i32, i32* @XOF_PRETTY, align 4
  %28 = call i64 @XOF_ISSET(%struct.TYPE_14__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %31, i8** %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = load i32, i32* @XOIF_TOP_EMITTED, align 4
  %34 = call i32 @XOIF_ISSET(%struct.TYPE_14__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = load i32, i32* @XOIF_TOP_EMITTED, align 4
  %39 = call i32 @XOIF_CLEAR(%struct.TYPE_14__* %37, i32 %38)
  br label %47

40:                                               ; preds = %25
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = load i32, i32* @XOIF_MADE_OUTPUT, align 4
  %43 = call i32 @XOIF_ISSET(%struct.TYPE_14__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = call i32 @xo_indent(%struct.TYPE_14__* %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @xo_printf(%struct.TYPE_14__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %20
  br label %59

55:                                               ; preds = %17
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = load i32, i32* @XO_OP_FINISH, align 4
  %58 = call i32 @xo_encoder_handle(%struct.TYPE_14__* %56, i32 %57, i32* null, i32* null, i32 0)
  br label %59

59:                                               ; preds = %17, %55, %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = call i32 @xo_flush_h(%struct.TYPE_14__* %60)
  ret i32 %61
}

declare dso_local %struct.TYPE_14__* @xo_default(%struct.TYPE_14__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xo_do_close_all(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xo_style(%struct.TYPE_14__*) #1

declare dso_local i32 @XOIF_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @XOIF_CLEAR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xo_printf(%struct.TYPE_14__*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @xo_indent(%struct.TYPE_14__*) #1

declare dso_local i32 @xo_encoder_handle(%struct.TYPE_14__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xo_flush_h(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
