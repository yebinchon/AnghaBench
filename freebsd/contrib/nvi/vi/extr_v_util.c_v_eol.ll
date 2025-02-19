; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_util.c_v_eol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_util.c_v_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@VIM_EOL = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"196|Movement past the end-of-line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_eol(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @VIM_EOL, align 4
  %11 = call i32 @v_emsg(i32* %9, i32* null, i32 %10)
  br label %37

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DBG_FATAL, align 4
  %18 = call i64 @db_get(i32* %13, i32 %16, i32 %17, i32* null, i64* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %37

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 1
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @VIM_EOL, align 4
  %31 = call i32 @v_emsg(i32* %29, i32* null, i32 %30)
  br label %36

32:                                               ; preds = %21
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @M_BERR, align 4
  %35 = call i32 @msgq(i32* %33, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %20, %36, %8
  ret void
}

declare dso_local i32 @v_emsg(i32*, i32*, i32) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32*, i64*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
