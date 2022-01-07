; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_parlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_parlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i8 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @parlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parlist(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 41
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %52, %20
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 129, label %34
  ]

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = call i32 @str_checkname(%struct.TYPE_15__* %29)
  %31 = call i32 @new_localvar(%struct.TYPE_15__* %28, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = call i32 @luaX_next(%struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %21
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = call i32 @luaX_syntaxerror(%struct.TYPE_15__* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34, %27
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = call i64 @testnext(%struct.TYPE_15__* %49, i8 signext 44)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %21, label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @adjustlocalvars(%struct.TYPE_15__* %56, i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cast_byte(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @luaK_reserveregs(%struct.TYPE_16__* %65, i32 %68)
  ret void
}

declare dso_local i32 @new_localvar(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @str_checkname(%struct.TYPE_15__*) #1

declare dso_local i32 @luaX_next(%struct.TYPE_15__*) #1

declare dso_local i32 @luaX_syntaxerror(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @testnext(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @adjustlocalvars(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
