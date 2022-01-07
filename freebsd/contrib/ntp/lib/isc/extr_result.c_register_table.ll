; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_result.c_register_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_result.c_register_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8**, i32, i32* }

@ISC_RESULTCLASS_SIZE = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@tables = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32*, i32)* @register_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_table(i32 %0, i32 %1, i8** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ISC_RESULTCLASS_SIZE, align 4
  %15 = urem i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ISC_RESULTCLASS_SIZE, align 4
  %21 = icmp ule i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @REQUIRE(i32 %22)
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @REQUIRE(i32 %26)
  %28 = call %struct.TYPE_5__* @malloc(i32 32)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %12, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %32, i32* %6, align 4
  br label %62

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = sub i32 %39, 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i8**, i8*** %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i8** %43, i8*** %45, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = load i32, i32* @link, align 4
  %54 = call i32 @ISC_LINK_INIT(%struct.TYPE_5__* %52, i32 %53)
  %55 = call i32 @LOCK(i32* @lock)
  %56 = load i32, i32* @tables, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = load i32, i32* @link, align 4
  %59 = call i32 @ISC_LIST_APPEND(i32 %56, %struct.TYPE_5__* %57, i32 %58)
  %60 = call i32 @UNLOCK(i32* @lock)
  %61 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %33, %31
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
