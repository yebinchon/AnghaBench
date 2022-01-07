; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_get_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_get_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_stack = type { i32, %struct.ucl_stack* }
%struct.ucl_parser = type { %struct.ucl_stack*, i32 }
%struct.ucl_msgpack_parser = type { i32 }

@MSGPACK_FLAG_CONTAINER = common dso_local global i32 0, align 4
@MSGPACK_CONTAINER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad top level object for msgpack\00", align 1
@MSGPACK_FLAG_ASSOC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucl_stack* (%struct.ucl_parser*, %struct.ucl_msgpack_parser*, i32)* @ucl_msgpack_get_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucl_stack* @ucl_msgpack_get_container(%struct.ucl_parser* %0, %struct.ucl_msgpack_parser* %1, i32 %2) #0 {
  %4 = alloca %struct.ucl_stack*, align 8
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca %struct.ucl_msgpack_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_stack*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store %struct.ucl_msgpack_parser* %1, %struct.ucl_msgpack_parser** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %6, align 8
  %10 = icmp ne %struct.ucl_msgpack_parser* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %6, align 8
  %14 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MSGPACK_FLAG_CONTAINER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %27 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %26, i32 0, i32 0
  %28 = load %struct.ucl_stack*, %struct.ucl_stack** %27, align 8
  %29 = icmp eq %struct.ucl_stack* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  %31 = call i8* @calloc(i32 1, i32 16)
  %32 = bitcast i8* %31 to %struct.ucl_stack*
  %33 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %34 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %33, i32 0, i32 0
  store %struct.ucl_stack* %32, %struct.ucl_stack** %34, align 8
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %36 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %35, i32 0, i32 0
  %37 = load %struct.ucl_stack*, %struct.ucl_stack** %36, align 8
  %38 = icmp eq %struct.ucl_stack* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %41 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %40, i32 0, i32 1
  %42 = call i32 @ucl_create_err(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.ucl_stack* null, %struct.ucl_stack** %4, align 8
  br label %87

43:                                               ; preds = %30
  br label %62

44:                                               ; preds = %19
  %45 = call i8* @calloc(i32 1, i32 16)
  %46 = bitcast i8* %45 to %struct.ucl_stack*
  store %struct.ucl_stack* %46, %struct.ucl_stack** %8, align 8
  %47 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %48 = icmp eq %struct.ucl_stack* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %51 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %50, i32 0, i32 1
  %52 = call i32 @ucl_create_err(i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.ucl_stack* null, %struct.ucl_stack** %4, align 8
  br label %87

53:                                               ; preds = %44
  %54 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %55 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %54, i32 0, i32 0
  %56 = load %struct.ucl_stack*, %struct.ucl_stack** %55, align 8
  %57 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %58 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %57, i32 0, i32 1
  store %struct.ucl_stack* %56, %struct.ucl_stack** %58, align 8
  %59 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %60 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %61 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %60, i32 0, i32 0
  store %struct.ucl_stack* %59, %struct.ucl_stack** %61, align 8
  br label %62

62:                                               ; preds = %53, %43
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %67 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %66, i32 0, i32 0
  %68 = load %struct.ucl_stack*, %struct.ucl_stack** %67, align 8
  %69 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  br label %83

70:                                               ; preds = %3
  %71 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %72 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %71, i32 0, i32 0
  %73 = load %struct.ucl_stack*, %struct.ucl_stack** %72, align 8
  %74 = icmp ne %struct.ucl_stack* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %77 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %76, i32 0, i32 0
  %78 = load %struct.ucl_stack*, %struct.ucl_stack** %77, align 8
  store %struct.ucl_stack* %78, %struct.ucl_stack** %4, align 8
  br label %87

79:                                               ; preds = %70
  %80 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %81 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %80, i32 0, i32 1
  %82 = call i32 @ucl_create_err(i32* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ucl_stack* null, %struct.ucl_stack** %4, align 8
  br label %87

83:                                               ; preds = %62
  %84 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %85 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %84, i32 0, i32 0
  %86 = load %struct.ucl_stack*, %struct.ucl_stack** %85, align 8
  store %struct.ucl_stack* %86, %struct.ucl_stack** %4, align 8
  br label %87

87:                                               ; preds = %83, %79, %75, %49, %39
  %88 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  ret %struct.ucl_stack* %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ucl_create_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
