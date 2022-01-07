; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_push_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_push_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32)* @ucl_object_lua_push_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_object_lua_push_object(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i32 @ucl_object_lua_push_array(i32* %19, %struct.TYPE_8__* %20)
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %13, %3
  br label %23

23:                                               ; preds = %27, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call %struct.TYPE_8__* @ucl_object_iterate(%struct.TYPE_8__* %24, i32** %9, i32 1)
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %23

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @lua_createtable(i32* %31, i32 0, i32 %32)
  store i32* null, i32** %9, align 8
  br label %34

34:                                               ; preds = %38, %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = call %struct.TYPE_8__* @ucl_object_iterate(%struct.TYPE_8__* %35, i32** %9, i32 1)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %8, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call i32 @ucl_object_key(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = call i32 @ucl_object_lua_push_element(i32* %39, i32 %41, %struct.TYPE_8__* %42)
  br label %34

44:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ucl_object_lua_push_array(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ucl_object_iterate(%struct.TYPE_8__*, i32**, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ucl_object_lua_push_element(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
